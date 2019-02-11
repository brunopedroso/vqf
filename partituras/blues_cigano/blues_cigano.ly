
\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 17)

\header {
  title = "Blues Cigano"
  composer = "Os Siderais"
  encodingsoftware = "Lilypond"
}

\language "portugues"

parteum =  \relative do'' {
  \time 2/4  \key d \minor 
  \repeat volta 2 {
  
 si8 \marcaA  do re mi fa mi re do si fa si
fa si do re mi fa mi re do si fa si
 \break
  }
}

partedois = \relative do'' {
   \marcaB
sib la lab sol sol fa mi sol
fa mi re do si re si re si
fa si
 
  \bar "|." 
}
letraum =  \lyricmode {
}

letradois = \lyricmode {
}


letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "blues_cigano_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose fa re' {
            \parteum
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "blues_cigano_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose fa fa {
            \parteum
             \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 180
    }
  }
}

\book {
  \bookOutputName "blues_cigano_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose fa sol {
            \parteum
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "blues_cigano_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose fa re' {
            \easyHeadsOn
            \teeny
            \parteum
            \partedois
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
    }
  }
}'#(set-global-staff-size 20)

\book {
  \bookOutputName "blues_cigano_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
               \intro
             \parteum
             \partedois
           }
      }
  %           \new ChordNames 
  %           \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}'
