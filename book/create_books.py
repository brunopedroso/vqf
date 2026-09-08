#!/usr/bin/env python3
"""
Create one PDF sheet book per instrument from the VQF repertoire YAML.

Run from this directory:

    python3 create_books.py

The PDFs are written next to this script.  The script keeps the song order from
_data/repertorio2026.yml (or _data/repertorio206.yml if that file exists).

PDF generation/merging needs one Python PDF library:

    python3 -m pip install --user pypdf

(PyPDF2 also works.)
"""

from __future__ import annotations

import argparse
import io
import json
import math
import re
import sys
from dataclasses import dataclass, field
from pathlib import Path
from typing import Iterable


# Books to create.  Each entry is tried in order for each song; the first
# matching existing PDF is used.
#
# This handles both styles used in the repertoire file:
#   * instrument-specific links: alto, alto_part, trompete, tromp_part, ...
#   * transposition links: c, bb, eb, ebnotas
INSTRUMENTS: dict[str, list[str]] = {
    "alto": ["alto", "alto_part", "sax_alto", "sax_alto_part", "eb"],
    "tenor": ["tenor", "tenor_part", "sax_tenor", "sax_tenor_part", "sax_ten", "sax_ten_part", "bb"],
    "trompete": ["trompete", "trompete_part", "tromp", "tromp_part", "bb"],
    "clarineta": [
        "clarineta", "clarineta_part", "clarinete", "clarinete_part", "clar", "clar_part",
        "bb",
        "tenor", "tenor_part", "sax_tenor", "sax_tenor_part", "sax_ten", "sax_ten_part",
        "trompete", "trompete_part", "tromp", "tromp_part",
    ],
    "trombone": ["trombone", "trombone_part", "tromb", "tromb_part", "c"],
    "tuba": ["tuba", "tuba_part", "sax_tuba", "sax_tuba_part"],
}

# If a song has no specific/transposition sheet but has exactly one generic PDF
# link (partitura/partituras/geral), include it in every instrument book.
GENERIC_PDF_KEYS = {"partitura", "partituras", "geral", "geral_part"}

PAGE_WIDTH = 595.0   # A4 portrait, points
PAGE_HEIGHT = 842.0
INDEX_LINES_PER_PAGE = 38


@dataclass
class Song:
    name: str
    block: str
    links: dict[str, str] = field(default_factory=dict)


@dataclass
class Pick:
    song: Song
    key: str
    path: Path
    page_count: int = 0
    start_page: int = 0


@dataclass
class IndexEntry:
    title: str
    page: int
    bold: bool = False


def import_pdf_lib():
    try:
        from pypdf import PdfReader, PdfWriter  # type: ignore
    except ImportError:
        try:
            from PyPDF2 import PdfReader, PdfWriter  # type: ignore
        except ImportError:
            raise SystemExit(
                "Missing PDF library. Install one with:\n"
                "  python3 -m pip install --user pypdf"
            )
    return PdfReader, PdfWriter


def strip_quotes(value: str) -> str:
    value = value.strip()
    if " #" in value:
        value = value.split(" #", 1)[0].rstrip()
    if (value.startswith("'") and value.endswith("'")) or (
        value.startswith('"') and value.endswith('"')
    ):
        return value[1:-1]
    return value


def parse_repertoire(path: Path) -> list[Song]:
    """Small parser for this repository's _data/repertorio*.yml files.

    It intentionally avoids a PyYAML dependency.  It extracts each block/song
    name and its links, preserving file order.
    """
    songs: list[Song] = []
    current: Song | None = None
    current_block = "Sem bloco"
    in_links = False

    block_re = re.compile(r"^\s{2}-\s+nome:\s*(.+?)\s*$")
    song_re = re.compile(r"^\s{6}-\s+nome:\s*(.+?)\s*$")
    link_re = re.compile(r"^\s{10}(.+?):\s*(.+?)\s*$")

    for raw_line in path.read_text(encoding="utf-8").splitlines():
        if not raw_line.strip() or raw_line.lstrip().startswith("#"):
            continue

        block_match = block_re.match(raw_line)
        if block_match:
            current_block = strip_quotes(block_match.group(1))
            current = None
            in_links = False
            continue

        song_match = song_re.match(raw_line)
        if song_match:
            current = Song(strip_quotes(song_match.group(1)), current_block)
            songs.append(current)
            in_links = False
            continue

        if current is None:
            continue

        if re.match(r"^\s{8}links:\s*$", raw_line):
            in_links = True
            continue

        if in_links:
            link_match = link_re.match(raw_line)
            if link_match:
                key = strip_quotes(link_match.group(1)).lower()
                value = strip_quotes(link_match.group(2))
                current.links[key] = value
            elif raw_line.startswith("        "):
                continue
            else:
                in_links = False

    return songs


def existing_pdf(root: Path, rel: str) -> Path | None:
    if re.match(r"^[a-z]+://", rel, flags=re.I):
        return None
    if not rel.lower().endswith(".pdf"):
        return None
    path = (root / rel).resolve()
    return path if path.exists() else None


def choose_pdf(song: Song, instrument: str, root: Path, generic_fallback: bool) -> Pick | None:
    for key in INSTRUMENTS[instrument]:
        rel = song.links.get(key)
        if not rel:
            continue
        path = existing_pdf(root, rel)
        if path:
            return Pick(song, key, path)

    if generic_fallback:
        generic: list[Pick] = []
        for key, rel in song.links.items():
            if key in GENERIC_PDF_KEYS:
                path = existing_pdf(root, rel)
                if path:
                    generic.append(Pick(song, key, path))
        if len(generic) == 1:
            return generic[0]

    return None


def pdf_text_bytes(text: str) -> bytes:
    encoded = text.encode("cp1252", errors="replace")
    return encoded.replace(b"\\", b"\\\\").replace(b"(", b"\\(").replace(b")", b"\\)")


def make_text_pdf(pages: list[list[tuple]], width: float, height: float) -> io.BytesIO:
    """Create a tiny Helvetica/Helvetica-Bold PDF with absolute-position text."""
    objects: list[bytes] = []

    # 1 Catalog, 2 Pages, 3 Regular font, 4 Bold font. Page/content objects start at 5.
    page_object_numbers = [5 + i * 2 for i in range(len(pages))]
    objects.append(b"<< /Type /Catalog /Pages 2 0 R >>")
    kids = b" ".join(f"{n} 0 R".encode("ascii") for n in page_object_numbers)
    objects.append(f"<< /Type /Pages /Kids [{kids.decode('ascii')}] /Count {len(pages)} >>".encode("ascii"))
    objects.append(b"<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica /Encoding /WinAnsiEncoding >>")
    objects.append(b"<< /Type /Font /Subtype /Type1 /BaseFont /Helvetica-Bold /Encoding /WinAnsiEncoding >>")

    for i, items in enumerate(pages):
        page_obj = 5 + i * 2
        content_obj = page_obj + 1
        stream_parts = []
        for item in items:
            if item[0] == "rect":
                _, x, y, w, h = item[:5]
                stream_parts.append(b"%.2f %.2f %.2f %.2f re f" % (x, y, w, h))
                continue
            x, y, size, text = item[:4]
            bold = len(item) > 4 and item[4]
            font = b"/F2" if bold else b"/F1"
            stream_parts.append(
                b"BT %s %d Tf %.2f %.2f Td (%s) Tj ET"
                % (font, size, x, y, pdf_text_bytes(text))
            )
        stream = b"\n".join(stream_parts)
        objects.append(
            f"<< /Type /Page /Parent 2 0 R /MediaBox [0 0 {width:.2f} {height:.2f}] "
            f"/Resources << /Font << /F1 3 0 R /F2 4 0 R >> >> /Contents {content_obj} 0 R >>".encode("ascii")
        )
        objects.append(b"<< /Length %d >>\nstream\n" % len(stream) + stream + b"\nendstream")

    pdf = io.BytesIO()
    pdf.write(b"%PDF-1.4\n%\xe2\xe3\xcf\xd3\n")
    offsets = [0]
    for number, obj in enumerate(objects, start=1):
        offsets.append(pdf.tell())
        pdf.write(f"{number} 0 obj\n".encode("ascii"))
        pdf.write(obj)
        pdf.write(b"\nendobj\n")

    xref = pdf.tell()
    pdf.write(f"xref\n0 {len(objects) + 1}\n".encode("ascii"))
    pdf.write(b"0000000000 65535 f \n")
    for offset in offsets[1:]:
        pdf.write(f"{offset:010d} 00000 n \n".encode("ascii"))
    pdf.write(
        f"trailer\n<< /Size {len(objects) + 1} /Root 1 0 R >>\nstartxref\n{xref}\n%%EOF\n".encode("ascii")
    )
    pdf.seek(0)
    return pdf


def centered_x(text: str, size: int, width: float) -> float:
    return max(36.0, (width - len(text) * size * 0.48) / 2)


def qr_items(qr_json: Path, center_x: float, y: float, module: float) -> list[tuple]:
    if not qr_json.exists():
        return []
    qr = json.loads(qr_json.read_text(encoding="utf-8"))
    size = int(qr["size"])
    data = qr["data"]
    quiet = 4
    total_width = (size + quiet * 2) * module
    x0 = center_x - total_width / 2
    items: list[tuple] = []
    for row in range(size):
        for col in range(size):
            if data[row * size + col]:
                x = x0 + (col + quiet) * module
                # QR row 0 is top; PDF y grows upward.
                rect_y = y + (size - row - 1 + quiet) * module
                items.append(("rect", x, rect_y, module, module))
    return items


def make_cover_pdf(instrument: str, repertoire_name: str, qr_json: Path) -> io.BytesIO:
    title = f"VQF - {instrument.title()}"
    subtitle = repertoire_name
    items: list[tuple] = [
        (centered_x(title, 24, PAGE_WIDTH), 520, 24, title),
        (centered_x(subtitle, 14, PAGE_WIDTH), 485, 14, subtitle),
    ]
    items.extend(qr_items(qr_json, PAGE_WIDTH / 2, 290, 2.52))
    return make_text_pdf([items], PAGE_WIDTH, PAGE_HEIGHT)


def make_block_title_pdf(block: str) -> io.BytesIO:
    return make_text_pdf(
        [[(centered_x(block, 24, PAGE_WIDTH), 450, 24, block, True)]],
        PAGE_WIDTH,
        PAGE_HEIGHT,
    )


def make_index_entries(picks: list[Pick], block_pages: dict[str, int]) -> list[IndexEntry]:
    entries: list[IndexEntry] = []
    current_block: str | None = None
    for pick in picks:
        if pick.song.block != current_block:
            current_block = pick.song.block
            entries.append(IndexEntry(current_block, block_pages[current_block], True))
        entries.append(IndexEntry(pick.song.name, pick.start_page))
    return entries


def make_index_pdf(entries: list[IndexEntry]) -> io.BytesIO:
    pages: list[list[tuple]] = []
    for chunk_start in range(0, len(entries), INDEX_LINES_PER_PAGE):
        chunk = entries[chunk_start : chunk_start + INDEX_LINES_PER_PAGE]
        items: list[tuple] = [(72, 780, 18, "Índice", True)]
        y = 742
        for entry in chunk:
            max_len = 58 if entry.bold else 62
            name = entry.title
            if len(name) > max_len:
                name = name[: max_len - 3] + "..."
            page = str(entry.page)
            dots = "." * max(3, 70 - len(name) - len(page))
            size = 11 if entry.bold else 10
            x = 72 if entry.bold else 90
            items.append((x, y, size, f"{name} {dots} {page}", entry.bold))
            y -= 18 if entry.bold else 17
        pages.append(items)
    return make_text_pdf(pages or [[(72, 780, 18, "Índice", True)]], PAGE_WIDTH, PAGE_HEIGHT)


def make_page_number_pdf(number: int, width: float, height: float) -> io.BytesIO:
    text = str(number)
    # Bottom-right corner, with a small margin.
    x = max(36.0, width - 36.0 - len(text) * 9 * 0.48)
    return make_text_pdf([[(x, 20, 9, text)]], width, height)


def page_size(page) -> tuple[float, float]:
    box = page.mediabox
    return float(box.width), float(box.height)


def add_numbered_pages(writer, reader, first_page_number: int, PdfReader) -> int:
    number = first_page_number
    for page in reader.pages:
        width, height = page_size(page)
        overlay = PdfReader(make_page_number_pdf(number, width, height)).pages[0]
        page.merge_page(overlay)
        writer.add_page(page)
        number += 1
    return number


def merge_pdfs(picks: list[Pick], output: Path, instrument: str, repertoire_name: str, qr_json: Path) -> None:
    PdfReader, PdfWriter = import_pdf_lib()

    for pick in picks:
        if not pick.page_count:
            pick.page_count = len(PdfReader(str(pick.path)).pages)

    block_count = sum(
        1 for i, pick in enumerate(picks)
        if i == 0 or pick.song.block != picks[i - 1].song.block
    )
    index_entry_count = len(picks) + block_count
    index_pages = max(1, math.ceil(index_entry_count / INDEX_LINES_PER_PAGE))

    block_pages: dict[str, int] = {}
    current_block: str | None = None
    next_page = 1 + index_pages + 1
    for pick in picks:
        if pick.song.block != current_block:
            current_block = pick.song.block
            block_pages[current_block] = next_page
            next_page += 1  # block title page
        pick.start_page = next_page
        next_page += pick.page_count

    index_entries = make_index_entries(picks, block_pages)

    writer = PdfWriter()
    page_number = 1
    page_number = add_numbered_pages(writer, PdfReader(make_cover_pdf(instrument, repertoire_name, qr_json)), page_number, PdfReader)
    page_number = add_numbered_pages(writer, PdfReader(make_index_pdf(index_entries)), page_number, PdfReader)
    current_block = None
    for pick in picks:
        if pick.song.block != current_block:
            current_block = pick.song.block
            page_number = add_numbered_pages(writer, PdfReader(make_block_title_pdf(current_block)), page_number, PdfReader)
        page_number = add_numbered_pages(writer, PdfReader(str(pick.path)), page_number, PdfReader)

    # Write a temporary file first, then replace the destination.  This avoids
    # failing when an old book PDF exists but is read-only; replacing only needs
    # write permission on the directory.
    tmp_output = output.with_name(f".{output.name}.tmp")
    try:
        with tmp_output.open("wb") as f:
            writer.write(f)
        tmp_output.replace(output)
    finally:
        if tmp_output.exists():
            tmp_output.unlink()


def ensure_output_dir_writable(out_dir: Path) -> None:
    test_file = out_dir / ".write-test.tmp"
    try:
        with test_file.open("wb") as f:
            f.write(b"")
    except PermissionError as e:
        raise SystemExit(
            f"Output directory is not writable: {out_dir}\n"
            "Fix permissions or choose another directory with --output-dir.\n"
            f"Original error: {e}"
        )
    finally:
        if test_file.exists():
            test_file.unlink()


def find_default_repertoire(script_dir: Path) -> Path:
    root = script_dir.parent
    candidates = [
        root / "_data" / "repertorio206.yml",
        root / "_data" / "repertorio206.yaml",
        root / "_data" / "repertorio206",
        root / "_data" / "repertorio2026.yml",
    ]
    for candidate in candidates:
        if candidate.exists():
            return candidate
    raise SystemExit("Could not find _data/repertorio206* or _data/repertorio2026.yml")


def main() -> int:
    script_dir = Path(__file__).resolve().parent
    default_repertoire = find_default_repertoire(script_dir)

    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("-r", "--repertoire", type=Path, default=default_repertoire)
    parser.add_argument("-o", "--output-dir", type=Path, default=script_dir)
    parser.add_argument(
        "--instruments",
        nargs="+",
        choices=sorted(INSTRUMENTS),
        default=list(INSTRUMENTS),
        help="books to create",
    )
    parser.add_argument("--dry-run", action="store_true", help="show selected PDFs without writing books")
    parser.add_argument(
        "--no-generic-fallback",
        action="store_true",
        help="do not use a single generic score as fallback for instrument books",
    )
    args = parser.parse_args()

    repertoire = args.repertoire.resolve()
    root = repertoire.parent.parent.resolve()
    out_dir = args.output_dir.resolve()
    out_dir.mkdir(parents=True, exist_ok=True)
    if not args.dry_run:
        ensure_output_dir_writable(out_dir)

    songs = parse_repertoire(repertoire)
    if not songs:
        raise SystemExit(f"No songs found in {repertoire}")

    print(f"Repertoire: {repertoire}")
    print(f"Songs found: {len(songs)}")

    for instrument in args.instruments:
        picks: list[Pick] = []
        missing: list[str] = []
        for song in songs:
            use_generic_fallback = instrument != "tuba" and not args.no_generic_fallback
            pick = choose_pdf(song, instrument, root, use_generic_fallback)
            if pick:
                picks.append(pick)
            else:
                missing.append(song.name)

        output = out_dir / f"book_{instrument}.pdf"
        print(f"\n{instrument}: {len(picks)} PDFs -> {output.name}")
        if missing:
            print(f"  missing/skipped: {len(missing)}")

        if args.dry_run:
            for pick in picks:
                print(f"  [{pick.key}] {pick.song.name}: {pick.path.relative_to(root)}")
            continue

        if picks:
            try:
                merge_pdfs(picks, output, instrument, repertoire.stem, root / "img" / "qr_repertorio_2026.json")
            except PermissionError as e:
                raise SystemExit(
                    f"Permission denied while writing {output}.\n"
                    "Check that the book directory is writable and remove/chmod any old generated PDF files.\n"
                    f"Original error: {e}"
                )

    return 0


if __name__ == "__main__":
    sys.exit(main())
