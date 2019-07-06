\include "../formatoversos.ly"
\include "../nomedasnotas.ly"
\include "../marcaspadronizadas.ly"

#(set-global-staff-size 17)

\header{
  title = "African Marketplace"
  composer = "Abdullah Ibrahim"
}


intro = \relative c'' {
  \clef G
  \time 4/4
  \key f \major
% notas de Circo -  acertar depois para versão de African
  r8 \marcaA c d e | f4 e | d c | a2
  r8 c d e | f4 e | f fis|  g2
  \break
  r8 d e f | g4 f | e d | c2 |
  \break
  r8 f e d | c4 d | e c | f2 |
  r8 f e d | c4 d | e c | f2 |
  r8 f e d | c4 d | e c |
}

parteum = \relative c'' {
% notas de Circo -  acertar depois para versão de African
%   \marcaB
  \key f \major
  \time 4/4
   r8 c8 | f4 a8 g~ | g bes4 g8 | f e d c | d c
  \repeat volta 2 {
  r8 a | a bes d cis | c4 c8 e ~ | e e d c |
  }
  \alternative {
    { d c \break}
    { f f}
  }
}

letraum = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
  
}
letratoda = \lyricmode {
  \letraum
}

\book {
  \bookOutputName "african_marketplace_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes g {
            \intro
          }
        }
      }
    >>
    \layout {}
  }
   \markup {\vspace #2 }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto2" {
          \transpose bes g {
            \unfoldRepeats
            \parteum
          }
        }
      \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "african_marketplace_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose bes c {
            \intro
          }
        }
      }
    >>
    \layout {}
  }
   \markup {\vspace #2 }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete2" {
          \transpose bes c {
            \unfoldRepeats
            \parteum
      }
    }
      \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "african_marketplace_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose bes bes {
            \intro
          }
        }
      }
    >>
    \layout {}
  }
  \markup {\vspace #2 }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone2" {
          \transpose bes bes {
            \unfoldRepeats
            \parteum
      }
    }
      \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "african_marketplace_midi"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose bes bes {
            \intro
            \unfoldRepeats
            \parteum
          }
        }
      }
    >>
    \midi {
      \tempo 4 = 160
    }
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "african_marketplace_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado   
      \new Staff {
        \accidentalStyle Score.dodecaphonic    
        \new Voice = "saxalto" {
          \transpose bes g {
            \easyHeadsOn
            \teeny
            \intro
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
   	  \score {
		    <<
		      \new TimeSig \compassoseparado
		      \new Staff {
		        \accidentalStyle Score.dodecaphonic    
		        \new Voice = "saxalto2" {
		          \transpose bes g {
                 \easyHeadsOn
		            \teeny
		            \unfoldRepeats
		            \parteum
		          }
		        }
		      \addlyrics \letratoda
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

\include "cifra_african.ly"
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
#(set-global-staff-size 15)

\book {
  \bookOutputName "african_marketplace_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
               \unfoldRepeats
             \intro
             \parteum
           }
      }
             \new ChordNames \with {               
               \consists "Bar_engraver"
               }
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
