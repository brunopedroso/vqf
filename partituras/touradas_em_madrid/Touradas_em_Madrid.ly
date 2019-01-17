\version "2.18.2" 

\header {
    title = "Touradas em Madrid"
    composer =  "Braguinha (João de Barro)"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"
  }

trocacompasso = \override Staff.TimeSignature.break-visibility = #end-of-line-invisible

Segno = {
  \mark \markup { \musicglyph #"scripts.segno" }
}


DSCoda = {
  \bar "||"
    \cadenzaOn
      \stopStaff
      \repeat unfold 1 {
          s1
          \bar ""
        }
        \once \override TextScript.extra-offset = #'( 0 . 5.0 )
        \once \override TextScript.word-space = #1.5
        <>_\markup { \center-column { "Ao " \musicglyph #"scripts.segno" "e " \line { \center-column {\musicglyph #"scripts.coda" }} } }
        \repeat unfold 3 {
          s1
          \bar ""
       }
        % Resume bar count and show staff lines again
     \startStaff
   \cadenzaOff
     % \break
        \mark \markup {\musicglyph #"scripts.coda"}
}

DSCodainvisivel = {
   \bar "||"
    \cadenzaOn
      \stopStaff
      \repeat unfold 1 {
          s1
          \bar ""
        }
       \repeat unfold 3 {
          s1
          \bar ""
       }
        % Resume bar count and show staff lines again
     \startStaff
   \cadenzaOff
     % \break
        \mark \markup {\musicglyph #"scripts.coda"}
}

intrompete = \relative c'' {
  \time 2/4
  \mark \markup {"Introdução"}
  a4  d8. a16 |
  d4. a16 a | \tuplet 3/2 {a8 fis a a fis a} | d4..^"ritardando" d16 |
  a8. a16 fis8. fis16~ |
  fis2\fermata |
  \break
}

introgeral = {
  \time 2/4
  \mark \markup {"Introdução"}
  \repeat percent 5 { r2}
  r2\fermata
  \break
}

carambacaracoles = \relative c' {
   fis8 |
   c' b fis a c b fis a |  c b fis a c b a g | e4 dis e g | 
   b2 r8 d cis b | a4 fis d b' | a gis g e
}

notafinal = \relative c' {
  d8\fermata r2.. 
}

basetrompetemenor = \relative c'' {
  \set countPercentRepeats = ##t
  \repeat percent 4 { 
    r8 <d a>16 <d a> <d a>8-> r8 r8 <a cis>8\staccato  r <a cis>8\staccato 
  }
}

melodiamadeirasmenor = \relative c'' {
  \set countPercentRepeats = ##t
  \repeat percent 4 {
    r8 <d a>16 <d a> <d a>8-> r8 r8 <a cis>8\staccato  r <a cis>8\staccato
  }
  r4. c8 d c dis c | e r2.. | r4. <f d a>  r4 | r4. <e cis a>  r4 |
  r8 <d a>16 <d a> <d a>8-> r8 r8 <a cis>8\staccato  r <a cis>8\staccato |
  r8 <d a>16 <d a> <d a>8-> r8 r8 <a cis>8\staccato  r <a cis>8\staccato | 
}

basetrompetemaior = \relative c'' {
  r1 | d2 e4 fis4 | e8[ \grace {fis8( e} d8)] cis2. | r1 |
  r1 | r1 | r1 | r2.. 
  \carambacaracoles
}

base = \relative c'' {
  \repeat percent 4 {d8 d16 d d8 f8 e4 a, }
}

basetrombonemenor = \relative c' {
  \repeat percent 8 { d8 d16 d d8 f8 e4 a, }
  r2 r8 c d dis | e1  | r4. f  r4 | r4. e  r4 |
  \repeat percent 2 { d8 d16 d d8 f8 e4 a, } 
}

basetrombonemaior = \relative c' {
  \repeat percent 2 { d8 d16 d d8 fis a fis d a' }
  \repeat percent 2 {e8 e16 e e8 g b g b g } 
   e1 | e2 d'4 cis | b8 a16 g fis2.~ | fis1 |
   ees4-> r ees4-> r | ees4-> r ees4-> r | 
   e b e b | d g d b | a d fis d | e d cis a |
   
}

melodiatrompetemenor = \relative c'' {
  a1~ | a8 g f e d cis d f | a,1 | r |
  c'~ | c8 bes a  g f g a bes | a f a4 r8 f a f | g e a4. g8 f e | d8-> r2.. | r1 |
}

melodiamaior = \relative c'' {
   fis,4 fis8 g a g fis e | d d fis g a a g fis | a2. g4 | cis,1 |
   g'8 g g a b b a g | g g g a b b a g | b2. a4  | d,2..
   \carambacaracoles  
}

letra = \lyricmode {
   _ _ _ _ _ _ _ _ _
   _ _ _ _ _ _ _ _ _
   _ _ _ _ _ _ _ _ _ _
  Eu fui às tou ra das em Ma dri
  E qua se não vol to mais a qui -i- -i-
  Pra ver Pe ri -i- -i- bei jar Ce ci
  Eu co nhe ci u ma-es pa nho la
  Na tu ral da Ca ta lu -u- nha;
  Que ria que-eu to cas se cas ta nho la
  E pe gas se tou ro-à u -u- nha.
  Ca ram ba! Ca ra coles! Sou do sam ba,
  Não me a mo les.
  Pro Bra sil eu vou fu gir!
  Is to-é con ver sa mo le pa ra boi dor mir!
  
}
\book {
  \bookOutputSuffix "Sax Alto Eb notas"
  \header {
    instrument = "Sax Alto em Eb"
  }
  \score {
     <<
	\new Staff{
	  \accidentalStyle Score.dodecaphonic
		\new Voice = "sax" {
          \easyHeadsOn
          \teeny
			  	\trocacompasso
				  \oneVoice
				  \clef G
				  \key d \major
				  \transpose c a {
				   \introgeral
				   \time 4/4
				   \Segno
				   \base
				   \melodiamadeirasmenor
				   \key d \major
				   \melodiamaior
				   \DSCoda
				   \notafinal
					}
			   }
	    }
  >>
    \layout {
        \context {
      \Voice
      \consists \Gravador_nome_notas
      }
    \context {
      \Score 
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
	}
  }
 }
}

\book {
  \bookOutputSuffix "Sax Alto Eb"
  \header {
    instrument = "Sax Alto em Eb"
  }
  \score {
     <<
	\new Voice = "sax" {
	  \trocacompasso
	  \oneVoice
	  \clef G
	  \key d \major
	  \transpose c a {
	   \introgeral
	   \time 4/4
	   \Segno
	   \base
	   \melodiamadeirasmenor
	   \key d \major
	   \melodiamaior
	   \DSCoda
	   \notafinal
	}
	   
    }
  >>
 }
}

\book {
  \bookOutputSuffix "Clarinete e Sax Tenor em Bb"
  \header {
    instrument = "Clarinete e Sax Tenor em Bb"
  }
  \score {
     <<
	\new Voice = "clarinete" {
	  \trocacompasso
	  \oneVoice
	  \clef G
	  \key g \major
	  \transpose f g {
	   \introgeral
	   \time 4/4
	   \Segno
	   \base
	   \melodiamadeirasmenor
	   \key d \major
	   \melodiamaior
	   \DSCoda
	   \notafinal
	}
    }
  >>
 }
}
\book {
  \bookOutputSuffix "Melodia em C"
  \header {
    instrument = "Flauta Transversal em C"
  }
  \score {
     <<
	\new Voice = "flautat" {
	  \trocacompasso
	  \oneVoice
	  \clef G
	  \key f \major
	  \transpose c c {
            \unfoldRepeats {
	       \introgeral
	       \time 4/4
	       \Segno
	       \base
	       \melodiatrompetemenor
	       \key d \major
	       \melodiamaior
	       \DSCoda
	       \notafinal
	    }
	  }
    }
    \addlyrics {
      \letra
    }
  >>
 }
}

\book {
  \bookOutputSuffix "Trompetes em Bb"
  \header {
    instrument = "Trompetes em Bb"
  }
  \score {
     <<
        \new Staff {
        \trocacompasso
	\new Voice = "trompete" {
	  \set midiInstrument = #"trumpet"
	  \trocacompasso
	  \oneVoice
	  \clef G
	  \key g \major
	  \transpose f g {
	   \intrompete
	   \time 4/4
	   \unfoldRepeats {
	   \Segno
	   \basetrompetemenor
	   \key d \major
	   \basetrompetemaior
	   }
	   \DSCoda
	   \notafinal
	  }
	  }
	}
  >>
  \layout {}
  }
}

\book {
  \bookOutputSuffix "Trombone em C"
  \header {
    instrument = "Trombone em C"
  }
  \score {
     <<
	\new Voice = "trombone" {
	  \trocacompasso
	  \oneVoice
	  \clef G
	  \key f \major
	  \transpose c c {
            \unfoldRepeats {
	       \intrompete
	       \time 4/4
	       \Segno
	       \basetrombonemenor
	       \key d \major
	       \basetrombonemaior
	       \DSCoda
	       \notafinal
	    }
	  }
    }
  >>
  \layout {}
  \midi {
  \tempo 4 = 130}
 }
}

\book {
\score {
     <<
       \new Staff \with {
          instrumentName = #"Trompete"
       }
       {
         \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
         \new Voice = "trompetemidi" {
         \set midiInstrument = #"trumpet"
	 \oneVoice
         \voiceOne
	 \clef G
	 \key f \major
         \intrompete
         \time 4/4
         \unfoldRepeats {
         \Segno
         \basetrompetemenor
         \melodiatrompetemenor
         \key d \major
         \basetrompetemaior
         }
         \DSCodainvisivel
         \notafinal
         }
       }
      \new Staff \with {
          instrumentName = \markup {
            \column {"Sax Alto/"
            \line {"Clarinete"}
          }
          }
       }
       {
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
         \new Voice = "saxaltomidi" {
         \set midiInstrument = #"tenor sax"
	 \oneVoice
         \voiceTwo
	 \clef G
	 \key f \major
         \introgeral
         \time 4/4
         \unfoldRepeats {
           \base
           \melodiamadeirasmenor
           \key d \major
           \melodiamaior
         }
           \DSCoda
           \notafinal
         }
       }
        \new Staff \with {
          instrumentName =  \markup {
            \column {"Trombone/"
            \line {"Sax Tenor"}
          }
          }
       }
       {
         \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
         \new Voice = "trombonemidi" {
         \set midiInstrument = #"trombone"
	 \oneVoice
         \voiceThree
	 \clef G
	 \key f \major
         \intrompete
         \time 4/4
         \unfoldRepeats {
         \basetrombonemenor
         \key d \major
         \basetrombonemaior
         \DSCodainvisivel
         \notafinal
         }
         }
        }
  >>
 }
}
