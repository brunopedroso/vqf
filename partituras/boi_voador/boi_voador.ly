\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"


\header {
  title = "Boi Voador não Pode"
  composer = "Chico Buarque"
}

#(set-global-staff-size 16)

intro = \relative c'' {
   \key c \major
	\time 2/4
  \partial 4 g4 \marcaA
  \repeat volta 2 {
  e c8 d | r8. \pulalinha
  b'16 b8 b | b a g a | r8. \pulalinha
  e'16 e8 d | cis a g fis | r8. \pulalinha
  d'16  d8 c | b g e c ~| 
  }
  \alternative {
    {c4 g'4}
    {\break c,2 r}
}
}


parteum = \relative c'' {
  \break \marcaB
  g2  | a4 g8 g ~| g f e g ~| g f8 r4 | 
  \break
  a2 | b4 a8 a ~|a g fis a ~ | a g8 r4 | \break
  c2 | g4 c8 bes~ |bes a g bes~ |bes a8 r4 |\break
  d2 | a4 d | c2 |
}



partedois = \relative c'' {
  b4 r8 \pulalinha 
  \marcaC g 
  \time 6/8 \tempo 4. = 125
  \repeat volta 2 {
  \unfoldRepeats \repeat volta 2 {
  c4 g8 c4 g8 | c4 \pulalinha 
  g8 c b  a |
  }
  \alternative {
    {g4 \pulalinha 
     e8 f e f | g4. r4 \pulalinha
     g8 | }
    {g4 \pulalinha
     f8 f e d | c2.}
  }
  }
}

letraintro = \lyricmode {
  Quem foi, quem foi
  Que_fa -- lou no boi vo -- a -- dor
  Man -- da pren -- der es -- se boi
  Se -- ja_es -- se boi o que for
  Quem _
}

letraum = \lyricmode {
O boi a -- in -- da dá bo -- de
Qual é_a do boi que re -- vo -- a
Boi re -- al -- men -- te não po -- de
Vo -- ar à to -- a
}

letradois = \lyricmode {
É fo -- ra,_é fo -- ra,_é fora
É fo -- ra da lei, é fo -- ra do ar
É fo -- ra,_é fo -- ra,_é fora
Se -- gu -- ra_es -- se boi
Proi -- bi -- do vo -- ar

}

acordesintro = \chordmode {
  \time 2/4
  \partial 4 c4 \marcaA
  \repeat volta 2 {c2 | d8.:m \pulalinha
                   d16:m d4:m) | g2:7 | c8. \pulalinha
                   c16 c4 | a2:7 | d8.:m \pulalinha
                   d16:m~ d4:m | g2:7| c }
  c | c
}

acordesum = \chordmode {
  c2 | a:7 | d:m | d:m |
  d:m | g:7 | c | c    |
  c:7 | c:7 | f |  f  |
  d:m | g:7  | c2 | 
}
acordesdois = \chordmode {
  c2 | c2  | \time 6/8 {
    \repeat volta 2 {
      c2. | c | g4:7 \pulalinha
      g2:7 | c4. c4 \pulalinha
      c8 | c2. |  c4 \pulalinha
      s8 c4.  | g4:7 \pulalinha 
      s8 g4.:7 | c | 
    }
  }
}

acordetodo = {
  \acordesintro
  \acordesum
  \acordesdois
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
        \new Voice = "saxalto" {
          \tempo 4 = 125 {
            \intro
            \parteum
%             \skip 256 \bar "boi_voador_letra" \break
            \partedois
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
          \tempo 4 = 125 {
            \unfoldRepeats {
              \intro
              \parteum
%             \skip 256 \bar "boi_voador_letra" \break
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
      \new Staff   {
        \new Voice = "saxalto" {
          \transpose c a {
            \intro
            \parteum
%             \skip 256 \bar "boi_voador_letra" \break
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

#(set-global-staff-size 20)

\book {
  \bookOutputName "boi_voador_letra"
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
             \new ChordNames 
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
