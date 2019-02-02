\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

% automatically converted by musicxml2ly from Haitian_Fight_Song.mxl

%% additional definitions required by the score:
sffz = #(make-dynamic-script "sffz")

\header {
    encodingsoftware = "MuseScore 2.0.2 / Frescobaldi"
    source = "http://api.musescore.com/score/1513516"
    encodingdate = "2015-12-14"
    composer = "Charles Mingus"
    title = "Haitian Fight Song"
    }

\layout {
    \context { \Score
        skipBars = ##t
        }
    }
parteumtrompete =  \relative g'' {
    \transposition bes \clef "treble" \key bes \major \time 4/4 | % 1
    \mark \markup { \box { Intro } } \tempo 4=150 R1*12 | % 13
    \mark \markup { \box { Head } } | % 13
    R1*28 | % 41
    R1*8 | % 49
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 -"Medium Swing" \fff a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | \barNumberCheck #50
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 51
    \mark \markup { \musicglyph #"scripts.coda" } | % 51
    \times 2/3  {
        r8 a8 \p a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 52
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 53
    R1*4 | % 57
    a,2. \ff -"Plunger" c8 e8 ( | % 58
    e8 ) a8 e8 \prall c8 d8 c8 a8 d8 ( | % 59
    d2. ) c8 e8 ( | \barNumberCheck #60
    e4 ) r4 r2 | % 61
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    a8 a8 g8 a8 a4 ~ | % 62
    a2. r4 | % 63
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    a8 a8 g8 a8 a4 ~ | % 64
    a2. r4 | % 65
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 \fff a8 a8 }
    a8 a8 g8 a8 a4 ~ | % 66
    a2. r4 | % 67
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    a8 a8 g8 a8 a4 ~ | % 68
    a2. r4 | % 69
    R1*4 \repeat volta 2 {
        | % 73
        \mark \markup { \box { Solos } } | % 73
        \once \override NoteHead #'style = #'cross c,4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 74
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 75
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 76
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 77
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 78
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 79
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | \barNumberCheck #80
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 81
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 82
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 83
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 84
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 }
    | % 85
    \mark \markup { \musicglyph #"scripts.coda" } | % 85
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g'8 -"D.C. al Coda After Solos" a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 86
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 87
    R1*4 | % 91
    \time 12/8  | % 91
    \tempo 4.=62 R1.*3 \bar "|."
    }

parteumtrompeteChords =  \chordmode {
    | % 1
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 | % 13
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 | % 41
    s1 s1 s1 s1 s1 s1 s1 s1 | % 49
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | \barNumberCheck #50
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 51
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 52
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 53
    s1 s1 s1 s1 | % 57
    s2. s8 s8 | % 58
    s8 s8 s8 s8 s8 s8 s8 s8 | % 59
    s2. s8 s8 | \barNumberCheck #60
    s4 s4 s2 | % 61
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 62
    s2. s4 | % 63
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 64
    s2. s4 | % 65
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 66
    s2. s4 | % 67
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 68
    s2. s4 | % 69
    s1 s1 s1 s1 \repeat volta 2 {
        | % 73
        g4:m7 s4 s4 s4 | % 74
        g4:m7 s4 s4 s4 | % 75
        g4:m7 s4 s4 s4 | % 76
        g4:m7 s4 s4 s4 | % 77
        c4:m7 s4 s4 s4 | % 78
        c4:m7 s4 s4 s4 | % 79
        g4:m7 s4 s4 s4 | \barNumberCheck #80
        g4:m7 s4 s4 s4 | % 81
        d4:7 s4 s4 s4 | % 82
        c4:m7 s4 s4 s4 | % 83
        g4:m7 s4 s4 s4 | % 84
        d4:7 s4 s4 s4 }
    | % 85
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 86
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 87
    s1 s1 s1 s1 | % 91
    s1. s1. s1. \bar "|."
    }

parteumtenor =  \relative a' {
    \transposition bes, \clef "treble" \key bes \major \time 4/4 R1*24 | % 25
    a2. \mf c8 e8 ( | % 26
    e8 ) a8 e8 \prall c8 d8 c8 a8 d8 ( | % 27
    d2. ) c8 e8 ( | % 28
    e4 ) r4 r2 | % 29
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g,8 \f a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | \barNumberCheck #30
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 31
    g8 a8 ( a2. ) | % 32
    R1 | % 33
    a2. \ff c8 e8 ( | % 34
    e8 ) a8 e8 d8 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 c8 }
    a8 d8 ( | % 35
    d2. ) c8 e8 ( | % 36
    e4 ) r4 r2 | % 37
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g,8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 38
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 39
    g8 a8 ( a2. ) | \barNumberCheck #40
    R1 | % 41
    a2. \ff c8 e8 ( | % 42
    e8 ) a8 e8 d8 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 c8 }
    a8 d8 ( | % 43
    d2. ) c8 e8 ( | % 44
    e4 ) r4 r2 | % 45
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 46
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 47
    g8 a8 ( a2. ) | % 48
    R1 | % 49
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        b,8 \fff c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        e8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    | \barNumberCheck #50
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        b8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        e8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    | % 51
    \times 2/3  {
        r8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        e8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    | % 52
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        b8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        e8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    | % 53
    R1*4 | % 57
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 \mf a8 a8 }
    a8 \< a8 g8 a8 a4 ~ | % 58
    a2. \! r4 | % 59
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    a8 a8 g8 a8 a4 ~ | \barNumberCheck #60
    a2. r4 | % 61
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 \ff d8 d8 }
    d8 d8 c8 d8 d4 ~ | % 62
    d2. r4 | % 63
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 d8 d8 }
    d8 d8 c8 d8 d4 ~ | % 64
    d2. r4 | % 65
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        e8 \fff f8 f8 }
    f8 f8 e8 f8 f4 ~ | % 66
    f2. r4 | % 67
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        e8 f8 f8 }
    f8 f8 e8 f8 f4 ~ | % 68
    f2. r4 | % 69
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 \ff \> a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | \barNumberCheck #70
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 \! a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 71
    g8 a8 ~ a2. | % 72
    R1 \repeat volta 2 {
        | % 73
        \once \override NoteHead #'style = #'cross c,4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 74
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 75
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 76
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 77
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 78
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 79
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | \barNumberCheck #80
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 81
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 82
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 83
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 84
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 }
    | % 85
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        b'8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        e8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    | % 86
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        b8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        e8 c8 c8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 c8 c8 }
    | % 87
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 88
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        e'8 a,8 a8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        a8 a8 a8 }
    | % 89
    g8 a8 ~ a2. | \barNumberCheck #90
    R1 | % 91
    \time 12/8  a,2. ( a4. ) c4 es8 ~ | % 92
    es4. es4 d8 c4 a2 ~ | % 93
    a1. \bar "|."
    }

parteumtenorChords =  \chordmode {
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
    s1 | % 25
    s2. s8 s8 | % 26
    s8 s8 s8 s8 s8 s8 s8 s8 | % 27
    s2. s8 s8 | % 28
    s4 s4 s2 | % 29
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | \barNumberCheck #30
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 31
    s8 s8 s2. | % 32
    s1 | % 33
    s2. s8 s8 | % 34
    s8 s8 s8 s8 s1*1/12 s1*1/12 s1*1/12 s8 s8 | % 35
    s2. s8 s8 | % 36
    s4 s4 s2 | % 37
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 38
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 39
    s8 s8 s2. | \barNumberCheck #40
    s1 | % 41
    s2. s8 s8 | % 42
    s8 s8 s8 s8 s1*1/12 s1*1/12 s1*1/12 s8 s8 | % 43
    s2. s8 s8 | % 44
    s4 s4 s2 | % 45
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 46
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 47
    s8 s8 s2. | % 48
    s1 | % 49
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | \barNumberCheck #50
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 51
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 52
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 53
    s1 s1 s1 s1 | % 57
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 58
    s2. s4 | % 59
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | \barNumberCheck #60
    s2. s4 | % 61
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 62
    s2. s4 | % 63
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 64
    s2. s4 | % 65
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 66
    s2. s4 | % 67
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 68
    s2. s4 | % 69
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | \barNumberCheck #70
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 71
    s8 s8 s2. | % 72
    s1 \repeat volta 2 {
        | % 73
        g4:m7 s4 s4 s4 | % 74
        g4:m7 s4 s4 s4 | % 75
        g4:m7 s4 s4 s4 | % 76
        g4:m7 s4 s4 s4 | % 77
        c4:m7 s4 s4 s4 | % 78
        c4:m7 s4 s4 s4 | % 79
        g4:m7 s4 s4 s4 | \barNumberCheck #80
        g4:m7 s4 s4 s4 | % 81
        d4:7 s4 s4 s4 | % 82
        c4:m7 s4 s4 s4 | % 83
        g4:m7 s4 s4 s4 | % 84
        d4:7 s4 s4 s4 }
    | % 85
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 86
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 87
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 88
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 89
    s8 s8 s2. | \barNumberCheck #90
    s1 | % 91
    s2. s4. s4 s8 | % 92
    s4. s4 s8 s4 s2 | % 93
    s1. \bar "|."
    }

parteumtrombone =  \relative g, {
    \clef "bass" \key bes \major \time 4/4 R1*12 | % 13
    g2. \pp bes8 d8 ~ | % 14
    d8 g8 d8 c8 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 bes8 }
    g8 c8 ~ | % 15
    c2. bes8 d8 ( | % 16
    d4 ) r4 r2 | % 17
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 \p g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 18
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 19
    f8 g8 ( g2. ) | \barNumberCheck #20
    R1 | % 21
    g2. \mp bes8 d8 ~ | % 22
    d8 g8 d8 \prall bes8 c8 bes8 g8 c8 ~ | % 23
    c2. bes8 d8 ( | % 24
    d4 ) r4 r2 | % 25
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f,8 \mf g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 26
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 27
    f8 g8 ( g2. ) | % 28
    R1 | % 29
    g2. \f bes8 d8 ( | \barNumberCheck #30
    d8 ) g8 d8 bes8 c8 bes8 \prall g8 c8 ( | % 31
    c2. ) bes8 d8 ( | % 32
    d4 ) r4 r2 | % 33
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 \ff \ff \ff g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 34
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 35
    f8 g8 ( g2. ) | % 36
    R1 | % 37
    g,2. bes8 d8 ( | % 38
    d8 ) g8 d8 \prall bes8 c8 bes8 g8 c8 ( | % 39
    c2. ) bes8 d8 ( | \barNumberCheck #40
    d4 ) r4 r2 | % 41
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 \ff \ff \ff g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 42
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 43
    f8 g8 ( g2. ) | % 44
    R1 | % 45
    g,2. bes8 d8 ( | % 46
    d8 ) g8 d8 c8 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 bes8 }
    g8 c8 ( | % 47
    c2. ) bes8 d8 ( | % 48
    d4 ) r4 r2 | % 49
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 \fff d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | \barNumberCheck #50
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | % 51
    \times 2/3  {
        r8 d8 \p \p d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | % 52
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | % 53
    R1*4 | % 57
    g,,1 \sffz ~ | % 58
    g1 ~ | % 59
    g1 ~ | \barNumberCheck #60
    g1 | % 61
    g'2. \ff bes8 d8 ( | % 62
    d8 ) g8 d8 \prall bes8 c8 bes8 g8 c8 ( | % 63
    c2. ) bes8 d8 ( | % 64
    d4 ) r4 r2 | % 65
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 \fff c8 c8 }
    c8 c8 bes8 c8 c4 ~ | % 66
    c2. r4 | % 67
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 c8 c8 }
    c8 c8 bes8 c8 c4 ~ | % 68
    c2. r4 | % 69
    g2. \ff \> bes8 d8 ( | \barNumberCheck #70
    d8 \! ) g8 d8 \prall bes8 c8 bes8 g8 c8 ( | % 71
    c2. ) bes8 d8 ( | % 72
    d4 ) r4 r2 \repeat volta 2 {
        | % 73
        \once \override NoteHead #'style = #'cross es,4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 74
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 75
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 76
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 77
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 78
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 79
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | \barNumberCheck #80
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 81
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 82
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 83
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 84
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 }
    | % 85
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c'8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | % 86
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | % 87
    g,2. bes8 d8 ~ | % 88
    d8 g8 d8 \prall bes8 c8 bes8 g8 c8 ~ | % 89
    c2. bes8 d8 ~ | \barNumberCheck #90
    d4 r4 r2 | % 91
    \time 12/8  f,8 g8 g8 g8 g8 g8 bes8 g8 g8 g8 g8 g8 | % 92
    f8 g8 g8 g8 g8 g8 bes8 g8 g8 g8 g8 g8 | % 93
    f4 g4 ~ g1 \fermata \bar "|."
    }

parteumtromboneChords =  \chordmode {
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 | % 13
    s2. s8 s8 | % 14
    s8 s8 s8 s8 s1*1/12 s1*1/12 s1*1/12 s8 s8 | % 15
    s2. s8 s8 | % 16
    s4 s4 s2 | % 17
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 18
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 19
    s8 s8 s2. | \barNumberCheck #20
    s1 | % 21
    s2. s8 s8 | % 22
    s8 s8 s8 s8 s8 s8 s8 s8 | % 23
    s2. s8 s8 | % 24
    s4 s4 s2 | % 25
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 26
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 27
    s8 s8 s2. | % 28
    s1 | % 29
    s2. s8 s8 | \barNumberCheck #30
    s8 s8 s8 s8 s8 s8 s8 s8 | % 31
    s2. s8 s8 | % 32
    s4 s4 s2 | % 33
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 34
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 35
    s8 s8 s2. | % 36
    s1 | % 37
    s2. s8 s8 | % 38
    s8 s8 s8 s8 s8 s8 s8 s8 | % 39
    s2. s8 s8 | \barNumberCheck #40
    s4 s4 s2 | % 41
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 42
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 43
    s8 s8 s2. | % 44
    s1 | % 45
    s2. s8 s8 | % 46
    s8 s8 s8 s8 s1*1/12 s1*1/12 s1*1/12 s8 s8 | % 47
    s2. s8 s8 | % 48
    s4 s4 s2 | % 49
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | \barNumberCheck #50
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 51
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 52
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 53
    s1 s1 s1 s1 | % 57
    s1 | % 58
    s1 | % 59
    s1 | \barNumberCheck #60
    s1 | % 61
    s2. s8 s8 | % 62
    s8 s8 s8 s8 s8 s8 s8 s8 | % 63
    s2. s8 s8 | % 64
    s4 s4 s2 | % 65
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 66
    s2. s4 | % 67
    s1*1/12 s1*1/12 s1*1/12 s8 s8 s8 s8 s4 | % 68
    s2. s4 | % 69
    s2. s8 s8 | \barNumberCheck #70
    s8 s8 s8 s8 s8 s8 s8 s8 | % 71
    s2. s8 s8 | % 72
    s4 s4 s2 \repeat volta 2 {
        | % 73
        g4:m7 s4 s4 s4 | % 74
        g4:m7 s4 s4 s4 | % 75
        g4:m7 s4 s4 s4 | % 76
        g4:m7 s4 s4 s4 | % 77
        c4:m7 s4 s4 s4 | % 78
        c4:m7 s4 s4 s4 | % 79
        g4:m7 s4 s4 s4 | \barNumberCheck #80
        g4:m7 s4 s4 s4 | % 81
        d4:7 s4 s4 s4 | % 82
        c4:m5 s4 s4 s4 | % 83
        g4:m7 s4 s4 s4 | % 84
        d4:7 s4 s4 s4 }
    | % 85
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 86
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12 s1*1/12
    s1*1/12 s1*1/12 s1*1/12 s1*1/12 | % 87
    s2. s8 s8 | % 88
    s8 s8 s8 s8 s8 s8 s8 s8 | % 89
    s2. s8 s8 | \barNumberCheck #90
    s4 s4 s2 | % 91
    s8 s8 s8 s8 s8 s8 s8 s8 s8 s8 s8 s8 | % 92
    s8 s8 s8 s8 s8 s8 s8 s8 s8 s8 s8 s8 | % 93
    s4 s4 s1 \bar "|."
    }

parteumalto =  \relative g' {
    \clef "treble" \key bes \major \time 4/4 R1*12 | % 13
    g2. \pp bes8 d8 ~ | % 14
    d8 g8 d8 c8 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 bes8 }
    g8 c8 ~ | % 15
    c2. bes8 d8 ( | % 16
    d4 ) r4 r2 | % 17
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 \p g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 18
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 19
    f8 g8 ( g2. ) | \barNumberCheck #20
    R1 | % 21
    g2. \mp bes8 d8 ~ | % 22
    d8 g8 d8 \prall bes8 c8 bes8 g8 c8 ~ | % 23
    c2. bes8 d8 ( | % 24
    d4 ) r4 r2 | % 25
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f,8 \mf g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 26
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 27
    f8 g8 ( g2. ) | % 28
    R1 | % 29
    g2. \f bes8 d8 ( | \barNumberCheck #30
    d8 ) g8 d8 bes8 c8 bes8 \prall g8 c8 ( | % 31
    c2. ) bes8 d8 ( | % 32
    d4 ) r4 r2 | % 33
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 \ff \ff \ff g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 34
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 35
    f8 g8 ( g2. ) | % 36
    R1 | % 37
    g,2. bes8 d8 ( | % 38
    d8 ) g8 d8 \prall bes8 c8 bes8 g8 c8 ( | % 39
    c2. ) bes8 d8 ( | \barNumberCheck #40
    d4 ) r4 r2 | % 41
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 \ff \ff \ff g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 42
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 g8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        g8 g8 g8 }
    | % 43
    f8 g8 ( g2. ) | % 44
    R1 | % 45
    g,2. bes8 d8 ( | % 46
    d8 ) g8 d8 c8 \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 g8 bes8 }
    g8 c8 ( | % 47
    c2. ) bes8 d8 ( | % 48
    d4 ) r4 r2 | % 49
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 \fff d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | \barNumberCheck #50
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | % 51
    \times 2/3  {
        r8 d8 \p \p d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | % 52
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | % 53
    R1*4 | % 57
    g,,1 \sffz ~ | % 58
    g1 ~ | % 59
    g1 ~ | \barNumberCheck #60
    g1 | % 61
    g'2. \ff bes8 d8 ( | % 62
    d8 ) g8 d8 \prall bes8 c8 bes8 g8 c8 ( | % 63
    c2. ) bes8 d8 ( | % 64
    d4 ) r4 r2 | % 65
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 \fff c8 c8 }
    c8 c8 bes8 c8 c4 ~ | % 66
    c2. r4 | % 67
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        bes8 c8 c8 }
    c8 c8 bes8 c8 c4 ~ | % 68
    c2. r4 | % 69
    g2. \ff \> bes8 d8 ( | \barNumberCheck #70
    d8 \! ) g8 d8 \prall bes8 c8 bes8 g8 c8 ( | % 71
    c2. ) bes8 d8 ( | % 72
    d4 ) r4 r2 \repeat volta 2 {
        | % 73
        \once \override NoteHead #'style = #'cross es,4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 74
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 75
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 76
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 77
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 78
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 79
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | \barNumberCheck #80
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 81
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 82
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 83
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 84
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 }
    | % 85
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c'8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | % 86
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        f8 d8 d8 }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        d8 d8 d8 }
    | % 87
    g,2. bes8 d8 ~ | % 88
    d8 g8 d8 \prall bes8 c8 bes8 g8 c8 ~ | % 89
    c2. bes8 d8 ~ | \barNumberCheck #90
    d4 r4 r2 | % 91
    \time 12/8  f,8 g8 g8 g8 g8 g8 bes8 g8 g8 g8 g8 g8 | % 92
    f8 g8 g8 g8 g8 g8 bes8 g8 g8 g8 g8 g8 | % 93
    f4 g4 ~ g1 \fermata \bar "|."
    }

parteumclarinete =  \relative c'' {
    \clef "treble" \key bes \major \time 4/4 R1*72 \repeat volta 2 {
        | % 73
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 74
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 75
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 76
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 77
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 78
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 79
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | \barNumberCheck #80
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 81
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 82
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 83
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 84
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 }
    | % 85
    R1*6 | % 91
    \time 12/8  R1.*3 \bar "|."
    }

parteumclarineteChords =  \chordmode {
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
    s1 s1 s1 \repeat volta 2 {
        | % 73
        g4:m7 s4 s4 s4 | % 74
        g4:m7 s4 s4 s4 | % 75
        g4:m7 s4 s4 s4 | % 76
        g4:m7 s4 s4 s4 | % 77
        c4:m7 s4 s4 s4 | % 78
        c4:m7 s4 s4 s4 | % 79
        g4:m7 s4 s4 s4 | \barNumberCheck #80
        g4:m7 s4 s4 s4 | % 81
        d4:7 s4 s4 s4 | % 82
        c4:m7 s4 s4 s4 | % 83
        g4:m7 s4 s4 s4 | % 84
        d4:7 s4 s4 s4 }
    | % 85
    s1 s1 s1 s1 s1 s1 | % 91
    s1. s1. s1. \bar "|."
    }

parteumclarvozdois =  \relative c {
    \clef "bass" \key bes \major \time 4/4 R1*72 \repeat volta 2 {
        | % 73
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 74
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 75
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 76
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 77
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 78
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 79
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | \barNumberCheck #80
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 81
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 82
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 83
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 | % 84
        \once \override NoteHead #'style = #'cross c4 \once \override
        NoteHead #'style = #'cross c4 \once \override NoteHead #'style =
        #'cross c4 r4 }
    | % 85
    R1*6 | % 91
    \time 12/8  R1.*3 \bar "|."
    }

parteumtuba =  \relative g, {
    \clef "bass_8" \key bes \major \time 4/4 | % 1
    g4 \p bes8 g8 cis4 d8 d,8 | % 2
    g4 bes8 g8 cis4 d8 d,8 | % 3
    g4 \mp bes8 g8 cis4 d8 g,8 | % 4
    es'4 d8 g,8 des'4 bes8 d,8 | % 5
    g4 \mf bes8 g8 cis4 d8 d,8 | % 6
    g4 bes8 g8 cis4 d8 d,8 | % 7
    g4 \f bes8 g8 cis4 d8 g,8 | % 8
    es'4 d8 g,8 des'4 bes8 d,8 | % 9
    g4 \ff bes8 g8 cis4 d8 d,8 | \barNumberCheck #10
    g4 bes8 g8 cis4 d4 | % 11
    \times 2/3  {
        r4 g4 \fff d4 }
    \times 2/3  {
        bes4 g4 d4 }
    | % 12
    bes4. g8 ( -> g2 ) | % 13
    g'4 \pp bes8 g8 cis4 d8 d,8 | % 14
    g4 bes8 g8 cis4 d8 d,8 | % 15
    g4 bes8 g8 cis4 d8 g,8 | % 16
    es'4 d8 g,8 des'4 bes8 d,8 | % 17
    g4 \p bes8 g8 cis4 d8 d,8 | % 18
    g4 bes8 g8 cis4 d8 d,8 | % 19
    g4 bes8 g8 cis4 d8 g,8 | \barNumberCheck #20
    es'4 d8 g,8 des'4 bes8 d,8 | % 21
    g4 \mp bes8 g8 cis4 d8 d,8 | % 22
    g4 bes8 g8 cis4 d8 d,8 | % 23
    g4 bes8 g8 cis4 d8 g,8 | % 24
    es'4 d8 g,8 des'4 bes8 d,8 | % 25
    g4 \mf bes8 g8 cis4 d8 d,8 | % 26
    g4 bes8 g8 cis4 d8 d,8 | % 27
    g4 bes8 g8 cis4 d8 g,8 | % 28
    es'4 d8 g,8 des'4 bes8 d,8 | % 29
    g4 \f bes8 g8 cis4 d8 d,8 | \barNumberCheck #30
    g4 bes8 g8 cis4 d8 d,8 | % 31
    g4 bes8 g8 cis4 d8 g,8 | % 32
    es'4 d8 g,8 des'4 bes8 d,8 | % 33
    g4 \ff bes8 g8 cis4 d8 d,8 | % 34
    g4 bes8 g8 cis4 d8 d,8 | % 35
    g4 bes8 g8 cis4 d8 g,8 | % 36
    es'4 d8 g,8 des'4 bes8 d,8 | % 37
    g4 bes8 g8 cis4 d8 d,8 | % 38
    g4 bes8 g8 cis4 d8 d,8 | % 39
    g4 bes8 g8 cis4 d8 g,8 | \barNumberCheck #40
    es'4 d8 g,8 des'4 bes8 d,8 | % 41
    g4 bes8 g8 cis4 d8 d,8 | % 42
    g4 bes8 g8 cis4 d8 d,8 | % 43
    g4 bes8 g8 cis4 d8 g,8 | % 44
    es'4 d8 g,8 des'4 bes8 d,8 | % 45
    g4 bes8 g8 cis4 d8 d,8 | % 46
    g4 bes8 g8 cis4 d8 d,8 | % 47
    g4 bes8 g8 cis4 d8 g,8 | % 48
    es'4 d8 g,8 des'4 bes8 d,8 | % 49
    g4 \fff bes8 g8 cis4 d8 d,8 | \barNumberCheck #50
    g4 bes8 g8 cis4 d8 d,8 | % 51
    g4 \p bes8 g8 cis4 d8 d,8 | % 52
    es'4 d8 g,8 des'4 bes8 d,8 | % 53
    g4 \ff bes8 g8 cis4 d8 d,8 | % 54
    g4 bes8 g8 cis4 d8 d,8 | % 55
    g4 bes8 g8 cis4 d8 d,8 | % 56
    es'4 d8 g,8 des'4 bes8 d,8 | % 57
    g4 bes8 g8 cis4 d8 d,8 | % 58
    g4 bes8 g8 cis4 d8 d,8 | % 59
    g4 bes8 g8 cis4 d8 d,8 | \barNumberCheck #60
    es'4 d8 g,8 des'4 bes8 d,8 | % 61
    g4 \ff bes8 g8 cis4 d8 d,8 | % 62
    g4 bes8 g8 cis4 d8 d,8 | % 63
    g4 bes8 g8 cis4 d8 d,8 | % 64
    es'4 d8 g,8 des'4 bes8 d,8 | % 65
    g4 \fff bes8 g8 cis4 d8 d,8 | % 66
    g4 bes8 g8 cis4 d8 d,8 | % 67
    g4 bes8 g8 cis4 d8 d,8 | % 68
    es'4 d8 g,8 des'4 bes8 d,8 | % 69
    g4 bes8 g8 cis4 d8 d,8 | \barNumberCheck #70
    g4 bes8 g8 cis4 d8 d,8 | % 71
    g4 bes8 g8 cis4 d8 d,8 | % 72
    es'4 d8 g,8 des'4 bes8 d,8 \repeat volta 2 {
        | % 73
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 74
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 75
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 76
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 77
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 78
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 79
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | \barNumberCheck #80
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 81
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 82
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 83
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 | % 84
        \once \override NoteHead #'style = #'cross es4 \once \override
        NoteHead #'style = #'cross es4 \once \override NoteHead #'style
        = #'cross es4 r4 }
    | % 85
    g4 bes8 g8 cis4 d8 d,8 | % 86
    es'4 d8 g,8 des'4 bes8 d,8 | % 87
    g4 bes8 g8 cis4 d8 d,8 | % 88
    g4 bes8 g8 cis4 d8 d,8 | % 89
    g4 bes8 g8 cis4 d8 d,8 | \barNumberCheck #90
    es4 d4 bes4 a4 | % 91
    \time 12/8  g1. | % 92
    bes2. c2. | % 93
    g1. \bar "|."
    }

parteumtubaChords =  \chordmode {
    | % 1
    s4 s8 s8 s4 s8 s8 | % 2
    s4 s8 s8 s4 s8 s8 | % 3
    s4 s8 s8 s4 s8 s8 | % 4
    s4 s8 s8 s4 s8 s8 | % 5
    s4 s8 s8 s4 s8 s8 | % 6
    s4 s8 s8 s4 s8 s8 | % 7
    s4 s8 s8 s4 s8 s8 | % 8
    s4 s8 s8 s4 s8 s8 | % 9
    s4 s8 s8 s4 s8 s8 | \barNumberCheck #10
    s4 s8 s8 s4 s4 | % 11
    s1*1/6 s1*1/6 s1*1/6 s1*1/6 s1*1/6 s1*1/6 | % 12
    s4. s8 s2 | % 13
    s4 s8 s8 s4 s8 s8 | % 14
    s4 s8 s8 s4 s8 s8 | % 15
    s4 s8 s8 s4 s8 s8 | % 16
    s4 s8 s8 s4 s8 s8 | % 17
    s4 s8 s8 s4 s8 s8 | % 18
    s4 s8 s8 s4 s8 s8 | % 19
    s4 s8 s8 s4 s8 s8 | \barNumberCheck #20
    s4 s8 s8 s4 s8 s8 | % 21
    s4 s8 s8 s4 s8 s8 | % 22
    s4 s8 s8 s4 s8 s8 | % 23
    s4 s8 s8 s4 s8 s8 | % 24
    s4 s8 s8 s4 s8 s8 | % 25
    s4 s8 s8 s4 s8 s8 | % 26
    s4 s8 s8 s4 s8 s8 | % 27
    s4 s8 s8 s4 s8 s8 | % 28
    s4 s8 s8 s4 s8 s8 | % 29
    s4 s8 s8 s4 s8 s8 | \barNumberCheck #30
    s4 s8 s8 s4 s8 s8 | % 31
    s4 s8 s8 s4 s8 s8 | % 32
    s4 s8 s8 s4 s8 s8 | % 33
    s4 s8 s8 s4 s8 s8 | % 34
    s4 s8 s8 s4 s8 s8 | % 35
    s4 s8 s8 s4 s8 s8 | % 36
    s4 s8 s8 s4 s8 s8 | % 37
    s4 s8 s8 s4 s8 s8 | % 38
    s4 s8 s8 s4 s8 s8 | % 39
    s4 s8 s8 s4 s8 s8 | \barNumberCheck #40
    s4 s8 s8 s4 s8 s8 | % 41
    s4 s8 s8 s4 s8 s8 | % 42
    s4 s8 s8 s4 s8 s8 | % 43
    s4 s8 s8 s4 s8 s8 | % 44
    s4 s8 s8 s4 s8 s8 | % 45
    s4 s8 s8 s4 s8 s8 | % 46
    s4 s8 s8 s4 s8 s8 | % 47
    s4 s8 s8 s4 s8 s8 | % 48
    s4 s8 s8 s4 s8 s8 | % 49
    s4 s8 s8 s4 s8 s8 | \barNumberCheck #50
    s4 s8 s8 s4 s8 s8 | % 51
    s4 s8 s8 s4 s8 s8 | % 52
    s4 s8 s8 s4 s8 s8 | % 53
    s4 s8 s8 s4 s8 s8 | % 54
    s4 s8 s8 s4 s8 s8 | % 55
    s4 s8 s8 s4 s8 s8 | % 56
    s4 s8 s8 s4 s8 s8 | % 57
    s4 s8 s8 s4 s8 s8 | % 58
    s4 s8 s8 s4 s8 s8 | % 59
    s4 s8 s8 s4 s8 s8 | \barNumberCheck #60
    s4 s8 s8 s4 s8 s8 | % 61
    s4 s8 s8 s4 s8 s8 | % 62
    s4 s8 s8 s4 s8 s8 | % 63
    s4 s8 s8 s4 s8 s8 | % 64
    s4 s8 s8 s4 s8 s8 | % 65
    s4 s8 s8 s4 s8 s8 | % 66
    s4 s8 s8 s4 s8 s8 | % 67
    s4 s8 s8 s4 s8 s8 | % 68
    s4 s8 s8 s4 s8 s8 | % 69
    s4 s8 s8 s4 s8 s8 | \barNumberCheck #70
    s4 s8 s8 s4 s8 s8 | % 71
    s4 s8 s8 s4 s8 s8 | % 72
    s4 s8 s8 s4 s8 s8 \repeat volta 2 {
        | % 73
        g4:m7 s4 s4 s4 | % 74
        g4:m7 s4 s4 s4 | % 75
        g4:m7 s4 s4 s4 | % 76
        g4:m7 s4 s4 s4 | % 77
        c4:m7 s4 s4 s4 | % 78
        c4:m7 s4 s4 s4 | % 79
        g4:m7 s4 s4 s4 | \barNumberCheck #80
        g4:m7 s4 s4 s4 | % 81
        d4:7 s4 s4 s4 | % 82
        c4:m7 s4 s4 s4 | % 83
        g4:m7 s4 s4 s4 | % 84
        d4:7 s4 s4 s4 }
    | % 85
    s4 s8 s8 s4 s8 s8 | % 86
    s4 s8 s8 s4 s8 s8 | % 87
    s4 s8 s8 s4 s8 s8 | % 88
    s4 s8 s8 s4 s8 s8 | % 89
    s4 s8 s8 s4 s8 s8 | \barNumberCheck #90
    s4 s4 s4 s4 | % 91
    s1. | % 92
    s2. s2. | % 93
    s1. \bar "|."
    }


% The score definition
\book {
  \bookOutputName "haitian_fight_song_Geral"
  \header {
     instrument = "Geral"
  }
\score {
    <<
        \context ChordNames = "parteumtrompeteChords" \parteumtrompeteChords
        \new Staff <<
            \set Staff.instrumentName = "Trumpet"
            \set Staff.shortInstrumentName = "Tpt."
            \context Staff << 
                \context Voice = "parteumtrompete" { \parteumtrompete }
                >>
            >>
        \new Staff <<
            \set Staff.instrumentName = "Alto Sax"
            \set Staff.shortInstrumentName = "Alto"
            \context Staff << 
                \context Voice = "parteumalto" { \parteumalto }
                >>
            >>
        \context ChordNames = "parteumtenorChords" \parteumtenorChords
        \new Staff <<
            \set Staff.instrumentName = "Tenor Sax"
            \set Staff.shortInstrumentName = "Tenor"
            \context Staff << 
                \context Voice = "parteumtenor" { \parteumtenor  }
                >>
            >>
        \context ChordNames = "parteumtromboneChords" \parteumtromboneChords
        \new Staff <<
            \set Staff.instrumentName = "Trombone"
            \set Staff.shortInstrumentName = "Tbn."
            \context Staff << 
                \context Voice = "parteumtrombone" { \parteumtrombone }
                >>
            >>
        \context ChordNames = "parteumclarineteChords" \parteumclarineteChords
        \new PianoStaff <<
            \set PianoStaff.instrumentName = "Piano"
            \set PianoStaff.shortInstrumentName = "Piano"
            \context Staff = "1" << 
                \context Voice = "parteumclarinete" { \parteumclarinete }
                >> \context Staff = "2" <<
                \context Voice = "parteumclarvozdois" { \parteumclarvozdois }
                >>
            >>
        \context ChordNames = "parteumtubaChords" \parteumtubaChords
        \new Staff <<
            \set Staff.instrumentName = "Bass"
            \set Staff.shortInstrumentName = "Bass"
            \context Staff << 
                \context Voice = "parteumtuba" { \parteumtuba }
                >>
            >>
      
        >>
    \layout {\apertacompasso}
    \midi {}
    }
}

\book {
  \bookOutputName "haitian_fight_song_Bb_tpt"
  \header {
     instrument = "Trompete em Bb"
  }
\score {
    <<
        \context ChordNames = "parteumtrompeteChords" \parteumtrompeteChords
        \new Staff {
                \transpose bes c {
                \context Voice = "parteumtrompete" { \parteumtrompete }
                }
        }
            >>
              \layout {\apertacompasso}
    }
}

\book {
  \bookOutputName "haitian_fight_song_C"
  \header {
     instrument = "Instrumentos em C (tbn)"
  }
\score {
    <<
        \context ChordNames = "parteumtromboneChords" \parteumtromboneChords
        \new Staff {
                \transpose bes bes {
                \context Voice = "parteumtrombone" { \parteumalto }
                }
        }
            >>
              \layout {\apertacompasso}
    }
}

\book {
  \bookOutputName "haitian_fight_song_Bb"
  \header {
     instrument = "Instrumentos em Bb"
  }
\score {
    <<
        \context ChordNames = "parteumtenorChords" \parteumtenorChords
        \new Staff {
                \transpose bes c {
                \context Voice = "parteumtenor" { \parteumtenor }
                }
        }
            >>
              \layout {\apertacompasso}
    }
}

\book {
  \bookOutputName "haitian_fight_song_Eb"
  \header {
     instrument = "Instrumentos em Eb"
  }
\score {
    <<
        \context ChordNames = "parteumaltoChords" \parteumtromboneChords
        \new Staff {
                \context Voice = "partealto" { 
                  \transpose bes g {
                    \parteumalto 
                  }
                }
        }
            >>
              \layout {\apertacompasso}
    }
}

\book {
  \bookOutputName "haitian_fight_song_C_Tuba"
  \header {
     instrument = "Tuba"
  }
\score {
    <<
        \context ChordNames = "parteumtubaChords" \parteumtubaChords
        \new Staff {
             
                \transpose bes bes {
                \context Voice = "parteumtuba" { \parteumtuba }
                }
        }
            >>
              \layout {\apertacompasso}
    }
}

#(set-global-staff-size 40)
\book {
  \bookOutputName "haitian_fight_song_Eb_notas"
  \header {
     instrument = "Eb"
  }
\score {
    <<
        \context ChordNames = "parteumaltoChords" \parteumtromboneChords
        \new Staff {
              \accidentalStyle Score.dodecaphonic
              
                \context Voice = "partealto" { 
                   \easyHeadsOn
                   \teeny
                   \transpose bes g {
                  \parteumalto 
                   }
                }
        }
            >>
              \layout {
                \apertacompasso
                  \context {
                    \Voice
                    \consists \Gravador_nome_notas
                  }
              }
    }
}
