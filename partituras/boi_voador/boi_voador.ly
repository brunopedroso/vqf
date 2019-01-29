\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"


\header {
  title = "Boi Voador não Pode"
  composer = "Chico Buarque"
}

#(set-global-staff-size 26)

intro = \relative c'' {
   \key c \major
	\time 2/4
  \repeat volta 2 {
    
  }
}

parteum = \relative c'' {
  b a g c8
}

partedois = \relative c'' {
  \break
  \repeat volta 2 {
    a
  }
}

letraintro = \lyricmode {
  Quem foi, quem foi
Que falou no boi voador
Manda prender esse boi
Seja esse boi o que for
}

letraum = \lyricmode {
O boi ainda dá bode
Qual é a do boi que revoa
Boi realmente não pode
Voar à toa
}

letradois = \lyricmode {
É fora, é fora, é fora
É fora da lei, é fora do ar
É fora, é fora, é fora
Segura esse boi
Proibido voar

}
letratoda = \lyricmode {
  \letraintro
  \letraum
  \letradois
}

\book {
  \bookOutputName "boi_voador_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
%				\trackB
        \new Voice = "saxalto" {
          \tempo 4 = 125 {
            \intro
            \parteum
%             \skip 256 \bar "" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }

    >>
    \layout{
      \apertacompasso
    }
  }
    \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
%				\trackB
        \new Voice = "saxalto" {
          \tempo 4 = 125 {
            \unfoldRepeats {
              \intro
              \parteum
%             \skip 256 \bar "" \break
              \partedois
            }
          }
        }
       }
    >>
		\midi {}
  }
}

\book {
  \bookOutputName "boi_voador_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c a {
            \intro
            \parteum
%             \skip 256 \bar "" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
          \apertacompasso
    }
  }
}

\book {
  \bookOutputName "boi_voador_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c d {
            \intro
            \parteum
%             \skip 256 \bar "" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
          \apertacompasso
    }
  }
}

#(set-global-staff-size 40)
\book {
  \bookOutputName "boi_voador_Eb_notas"
  \header {
     title = \markup {\fontsize #-3 "Boi Voador não Pode"}
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
          \transpose c a {
            \intro
            \parteum
%             \skip 256 \bar "" \break
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
