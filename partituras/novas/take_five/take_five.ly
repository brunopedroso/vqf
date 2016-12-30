 
parteAsax = \relative c'' {
  \partial 2 { b8 e g a }| ais b a g e4 b d | 
  e8 e4 e4. g8 e( \grace {g e)} d4 | \break
  e8 e4 e4. d8 b( \grace {d b)} a4 |
  b8 b4 b4. b8 e g a | ais b a g e4 b d | \break
  e8 e4 e4. d8 b( \grace {d b)}  a4 |
  b8 b4 b4. g'8 e( \grace {g e)} d4 |
  e8 e4 e4. r2
} 

parteBsax = \relative c'' {
  \repeat volta 2 {
    e'8 g4 e8 c4 a8 b c cis | d fis4 d8 b4 g8 a ais b | \break
  }
  \alternative {
    {c8 e4 c8 a4 fis8 g a ais | b ais b c d4 d8 cis d dis |}
    {c8 e4 c8 a4 fis8 g d' c } 
  }
  b r4
  \parteAsax
}

parteBinstrumentoemC = \relative c'' {
  \repeat volta 2 {
    e'8 g4 e8 c4 a8 b c cis | d fis4 d8 b4 g8 a ais b | \break
  }
  \alternative {
    {c8 e4 c8 a4 fis8 g a ais | b ais b c d4 d8 cis d dis |}
    {c8 e4 c8 a4 fis8 g d' c } 
  }
  b r4
  \transpose c c' {
  \parteAsax
  }
  
}
\book {
  \bookOutputSuffix "Sax Alto em Eb"
  \header {
   title = "Take Five"
   composer = "Paul Desmond"
   instrument = "Sax Alto em Eb"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ) - CC - BY-SA 4.0" 
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
 }
\score {
  <<
    \new Staff {
      \time 5/4
      \clef G
      \key d \major
      \transpose g d {
      \parteAsax
      \parteBsax
      }
    }
  >>
  \layout {}
}
}
\book {
  \bookOutputSuffix "Instrumentos em Bb"
  \header {
   title = "Take Five"
   composer = "Paul Desmond"
   instrument = "Instrumentos em Bb"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ) - CC - BY-SA 4.0" 
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
 }
 \score {
  <<
    \new Staff {
      \new Voice = "instrumentosBb" {
        \set midiInstrument = #"trumpet"
        \time 5/4
        \clef G
        \key g \major
        \transpose c c {
        \parteAsax
        \parteBsax
        }
      }
    }
  >>
  \layout {}
 }
}

\book {
  \bookOutputSuffix "Instrumentos em C"
  \header {
   title = "Take Five"
   composer = "Paul Desmond"
   instrument = "Melodia - Instrumentos em C"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ) - CC - BY-SA 4.0" 
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
 }
 \score {
  <<
    \new Staff {
      \new Voice = "instrumentosBb" {
        \set midiInstrument = #"trumpet"
        \time 5/4
        \clef G
        \key f \major
        \transpose c bes, {
        \parteAsax
        \transpose c c,{\parteBinstrumentoemC}
        }
      }
    }
  >>
  \layout {}
 }
}

 \score {
  <<
    \new Staff {
      \new Voice = "trompetemidi" {
        \set midiInstrument = #"trumpet"
        \time 5/4
        \clef G
        \key g \major
        \transpose c bes, {
        \parteAsax
        \unfoldRepeats
        \parteBsax
        }
      }
    }
  >>
\midi {
	  \tempo 4 = 160
	    \context {
	      \Voice
	    \consists "Staff_performer"
	  }
	}
 }
\version "2.18.2"