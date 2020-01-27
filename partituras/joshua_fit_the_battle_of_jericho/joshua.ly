\version "2.18.2"
% transcrito por Karine Dias originalmente para sax alto
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\include "../formatoversos.ly"


\header {
    encodingsoftware = "MuseScore 3.3.4"
    source = "/tmp/audiveris-2a45b5c3f319a15f0b0d02d618454f21.pdf / transcrição Lucas Seco"
    encodingdate = "2020-01-27"
    title = "Joshua Fit the Battle of Jericho"
    composer = "Popular"
    }

#(set-global-staff-size 18)

parteum = \relative c' {
    \clef "treble" \key es \major \time 4/4
    \partial 4 g4
    c8 [ b8 c8 d8 ] es8 [ d8 es8 f8 ] | % 8
    g8 [ es8 ] r8 g8 ~ g2 | % 9
    f8 [ d8 ] r8 f8 ~ f2  | 
    g8 [ es8 ] r8 g8 ~ g4 g, | % 11
    c8 [ b8 c8 d8 ] es8 [ d8 es8 f8 ] | % 12
    g8 [ es8 ] r8 g8 ~ g4 es8 [ f8 ] | % 13
    g4 f8 [ f8 ] es8 [ es8 ] d4 | % 14
    c4 as8 [ g8 ~ ] g2
}

partedois = \relative c' {
  
}

letratoda = \lyricmode {
  - 
  Jo -- shua fit the bat -- tle o -- of Je -- ri -- cho
  Je -- ri -- cho, Je -- ri -- cho
  - 
  Jo -- shua fit the bat -- tle of Je -- ri -- cho
  The walls came tum -- blin' down! Hal -- lelu -- jah
}
 

\book {
  \bookOutputName "joshua_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
            \transpose c d' {
        \tempo 4 = 180 {
             \parteum
                \partedois
                
            }
          }
        }
        	\addlyrics \letratoda
      }

    >>
    \layout{
    }
  }
    \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
%				\trackB
        \new Voice = "saxalto" {
          \transpose c d  {
          \tempo 4 = 180 {
            \unfoldRepeats {
                           
             \parteum
                
               
                
                
                \partedois
                
            }
          }
        }
        }
       }
    >>
		\midi {}
  }
}

\book {
  \bookOutputName "joshua_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c b  {
                           
             \parteum
                
               
                
                
                \partedois
                
          }
        }
        	\addlyrics \letratoda

      }
    >>
    \layout {
    }
  }
}

\book {
  \bookOutputName "joshua_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c e {
                           
             \parteum
                
                \partedois
                
          }
        }
        	\addlyrics \letratoda
      }
    >>
    \layout {
    }
  }
}

#(set-global-staff-size 40)
\book {
  \bookOutputName "joshua_Eb_notas"
  \header {
     title = \markup {\fontsize #-3 "extra"}
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \easyHeadsOn
          \teeny
          \transpose c b {
                           
             \parteum
                
                \partedois
                
          }
        }
        	\addlyrics \letratoda
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


\include "cifra_joshua.ly"

#(set-global-staff-size 20)

\book {
  \bookOutputName "joshua_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
                           
             \parteum
             \partedois
                
           }
      }
             \new ChordNames  \with {
               \consists "Bar_engraver"
             } 
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
