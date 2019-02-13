
\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 17)

\header {
  title = "Korobeiniki (Tetris)"
  composer = "Nikolay Nekrasov (poema)"
  encodingsoftware = "Lilypond"
}

parteum =  \relative c'' {
  \time 4/4 
  \clef "treble" \key c \major 
  \repeat volta 2 {
  \marcaA 
  e4 b8 c d4 c8 b | a4 a8 c e4 d8 c |
  b4. c8 d4 e | c a  a8 a b c | 
  d4. f8 a4 g8 f | e4. c8 e4 d8 c |
  b4 b8 c d4 e | c a a r | \break
  }
}

partedois = \relative c'' {
   \marcaB
  e2 c | d b | c a | gis b4 r | 
  e2 c | d b | c4 e a2 gis r2
 
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
  \bookOutputName "tetris_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose f d' {
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
  \bookOutputName "tetris_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose f f {
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
  \bookOutputName "tetris_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose f g {
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
  \bookOutputName "tetris_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose f d' {
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
}#(set-global-staff-size 20)

\book {
  \bookOutputName "tetris_letra"
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
}
