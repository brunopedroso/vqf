# Sheet books

Create one PDF book per instrument from `_data/repertorio2026.yml`:

```bash
cd book
./create_books.py
```

Outputs are written here as `book_<instrument>.pdf`.

Each generated book includes a cover page, an index, block title pages, and page numbers.

PDF merging requires either `pypdf` or `PyPDF2` for Python. Install one, for example:

```bash
sudo apt install python3-pypdf
# or, if pip is available:
python3 -m pip install --user pypdf
```

Useful checks:

```bash
./create_books.py --dry-run
./create_books.py --instruments alto tenor trompete trombone tuba clarineta
./create_books.py --no-generic-fallback
```
