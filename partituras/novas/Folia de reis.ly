\version "2.18.2" 
\markup { \vspace #2 }

DCfine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.C. al fine" }
}

intromel = \relative c'' { \partial 2 r8 d8 e16 d8 b16 |}

melparteA = \relative c'' { 
  \repeat volta 2 { 
    g4 e8 g8. b8.  a8.  g16 |
    b2 r8 d8 e16 d8 b16 | 
    g4 e8 g8. b8.  a8.  g16
   }
  \alternative { 
    {g2 r8 d'8 e16 d8 b16}
    {g2 r8 f'8 f16 f8 f16}
  }
}
melparteB =\relative c'' {
    \repeat volta 2 {
      e4 c8 e8. e8.  e8.  d16 |
      f16 e16 d8 (d4) r8 d8 e16 d8 b16 | 
      g4 e8 g8. b8.  a8.  g16 | 
    }
    \alternative {
      {g2 r8 f'8 f16 f8 f16}
      {g2 r8 d8 e16 d8 b16}
    }

} 

melparteBac =\relative c'' {
    \repeat volta 2 {
      e4 c8 e8. e8.  e8.  d16 |
      f16 e16 d8 (d4) r8 d8 e16 d8 b16 | 
      g4 e8 g8. b8.  a8.  g16 | 
    }
    \alternative {
      {g2 r8 f'8 f16 f8 f16}
      {g2 r16 d8 d16 d16 d8 d16~}
    }

} 

melparteC = \relative c'' {
   d16 d8 d16 d8 d8 e d f e16 d16~ |
   d4 r4 r16 d8 d16 d8 d16 cis16~ |
   cis16 cis8 cis16 d8 cis16 c!8 c8 c16 d8 c16 b16~ |
   b16 b'8. r4  r16 f,8 f16 f16 f8 f16 |
   f16 f8 f16 f8 f8 f e f e16 d16~ |
   d4 g4 r16 d8 d16 d8 d16 cis16~ |
   cis16 cis8 cis16 d8 cis16 c!8 c8 c16 d8 c16 b16~ |
   b2  r8 d8 e16 d8 b16
}

introbaixo = \relative c' {\partial 2 r8 d8 e16 d8 b16 |}

baixoparteA = \relative c' {  
  \repeat volta 2 { 
    g4 a b d |
    g fis e b |
    a c8 cis d4 d8. e16
  }
  \alternative {
    { g8 d8 e16 d8 b16 g8 d'8 e16 d8 b16}
    {g'8 d8 e16 d8 b16 g8 g a b}
  }
}

baixoparteB = \relative c' {
  \repeat volta 2 {
    c, c c'16 c,8 c' c16 g16 a b16 c8 c16 |
    b8 g8 d8 dis16 e8. d8 e16 d8 b16 | 
    a4 a8 c d4 d4 |
  }
  \alternative {
    { g8 d'8 e16 d8 b16 g8 g a b}
    {g8 d'8 e16 d8 b16 g8 d8 e16 d8 b16}
  }
}

baixoparteBac = \relative c' {
  \repeat volta 2 {
    c,8 c c'16 c,8 c' c16 g16 a b16 c8 c16 |
    b8 g8 d8 dis16 e8. d8 e16 d8 b16 | 
    a4 a8 c d4 d4 |
  }
  \alternative {
    { g8 d'8 e16 d8 b16 g8 g a b}
    {g8 r8 r4 g8 r4.}
  }
}

baixoparteC = \relative c' {
    g4 b8 c4 c8 d8 c16 b16~ |
    b4 r4. d8 e8 d16 cis16~ |
    cis8 cis8 d8 cis16 c!16 ~ c8 c8 d8 c16 b16~ |
    b8 g8 b8 d16 g16~ r2 |
    g,4 b8 c4 c8 d8 c16 b16~ |
    b4 r4. d8 e8 d16 cis16~ |
    cis8 cis8 d8 cis16 c!16 ~ c8 c8 d8 c16 b16~ |
    b8 g8 b8 d16 g16~ r8 d8 e16 d8 b16 
}

% TromboneparteC = \relative c' { r8 e, g a c c16 b8 c8. cis16 d4 d8 d d cis c c c c! c c c b}

\book {
  \bookOutputSuffix "Sax Alto Eb"
  \header {
    title = "Folia de Reis"
    composer = "Dom Salvador"
    instrument = "Sax Alto em Eb"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "sax" {
	  \voiceOne
	  \time 4/4
	  \clef G
	  \key e \major
	  \transpose g d {
	  \intromel
	  \melparteA
	  \melparteB
	  \melparteA
	  \melparteBac
	  \melparteC
	  \DCfine
	}
	   
    }
  >>
 }
}

\book {
  \bookOutputSuffix "Trombone em C"
  \header {
    title = "Folia de Reis"
    composer = "Dom Salvador"
    instrument = "Trombone em C"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
\score {
<<
	\new Voice = "baixo" {
	  \time 4/4
	  \key g \major
	  \clef G
	  \transpose g f'{
	  \introbaixo
	  \baixoparteA
	  \baixoparteB
	  \baixoparteA
	  \baixoparteBac
	  \baixoparteC
	  \DCfine
	}
	}   
	>>
      }
 }
\book {
  \bookOutputSuffix "Flauta em C"
  \header {
    title = "Folia de Reis"
    composer = "Dom Salvador"
    instrument = "Flauta em C"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "flauta" {
	  \voiceOne
	  \time 4/4
	  \clef G
	  \key g \major
	  \transpose g f {
	  \intromel
	  \melparteA
	  \melparteB
	  \melparteA
	  \melparteBac
	  \melparteC
	  \DCfine
	  }
	   
    }
  >>
 }
}

\book {
  \bookOutputSuffix "Trompete em Bb"
  \header {
    title = "Folia de Reis"
    composer = "Dom Salvador"
    instrument = "Trompete em Bb"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "trompete" {
	  \voiceOne
	  \time 4/4
	  \clef G
	  \key a \major
	  \transpose g g {
	  \intromel
	  \melparteA
	  \melparteB
	  \melparteA
	  \melparteBac
	  \melparteC
	  \DCfine
	}
    }
  >>
 }
}

\score {
  <<
	\new Voice = "sax" {
	  \set midiInstrument = #"accordion"
	  \voiceOne
	  \time 4/4
	  \clef G
	  \transpose g f {
	  \intromel
	  \unfoldRepeats
	  \melparteA
	  \unfoldRepeats
	  \melparteB
	  \unfoldRepeats
	  \melparteA
	  \unfoldRepeats
	  \melparteBac
	  \unfoldRepeats
	  \melparteC
	  }
	   
    }
 
    \new Voice = "trombone" {
	  \set midiInstrument = #"electric bass (pick)"
	  \voiceTwo
	  \time 4/4
	  \clef F
	  \transpose c bes,, {
	    \introbaixo
	    \unfoldRepeats  
	    \baixoparteA
	    \unfoldRepeats  
	    \baixoparteB
	    \unfoldRepeats  
	    \baixoparteA
	    \unfoldRepeats  
	    \baixoparteBac
	    \unfoldRepeats  
	    \baixoparteC
	}
      }
    >>
    \layout {}
 \midi {
	  \tempo 4 = 106
	    \context {
	    \Voice
	    \consists "Staff_performer"
	  }
	}
      }
