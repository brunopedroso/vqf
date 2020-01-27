\version "2.18.2"
% transcrito por Karine Dias originalmente para sax alto
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\include "../formatoversos.ly"


\header {
    worknumber = "reggae"
    encodingdate = "2020-01-03"
    title = "Extra"
    composer = "Gilberto Gil"
    }

#(set-global-staff-size 18)
intro =  \relative c'' {
    \key c \major \time 3/4
\partial 4 r16 \marcaA  d8 c16 
\tuplet 3/2 {e8 a, a~} a4 r8. e'16 \tuplet 3/2 {d8 c a~} a4
r16 d8 c16 \tuplet 3/2 {e8 a, a} r4 r8. e'16 \tuplet 3/2 {d8 c a'~} a4
d,8. c16 \tuplet 3/2 {e8 a, a} r4 r8. e'16 \tuplet 3/2 {d8 c a~} a4 g
a2. r  

}
parteum = \relative c'' {
\marcaB a8 a16 g a2 c16 b8 a16~a g8 e16~ e4
e8 e16 d e2 | a16 g8 f16 e8 f e4| \break
c8 c16 a c2 | d16 e8 d16 ~ d c8 d16 ~ d4 | \break
f8 f16 e f2 | g16 a8 g16 ~ g f8 g16 ~g4 | \break
b8 b16 a b2 | c16 c8 b16 ~ b b8 a16 ~ a8 gis8 %~  |
}

partebaseantesref = \relative c'' {
  gis2. | r | r | r |
}
parteantesrefrao = \relative c' {
  \tuplet 3/2 {e8 e e gis gis gis b ~ b f' } 
  e4 ~ e8 dis16 e f8 e  
  \tuplet 3/2 {e,8 e e gis gis gis b ~ b f' } 
  e4 ~ e8 dis16 e f8 e  
}


refrao = \relative c'' {
\marcaC 
a8 a16 g a2 | d8 dis16 d ~ d c dis8 d4 | \break
a8 a16 g a2 | d8 dis16 d ~ d c dis8 d4| \break
a8 a16 g a2 | d8 dis16 d ~ d c8 dis16 ~ dis d8 c16~ | c16 a8 a16 ~ a2
r2.}

partedois = \relative c'' {
  \tuplet 3/2 {a8 a g } \tuplet 3/2 {a a g } \tuplet 3/2 {a a g } 
  \tuplet 3/2 {a a g } \tuplet 3/2 {a a a,}
  \tuplet 3/2 {d d c} e8. d16 ~ d2 | r2. |
  \tuplet 3/2 {g8 g f} \tuplet 3/2 {g g f} \tuplet 3/2 {g g f} 
  \tuplet 3/2 {g g f} \tuplet 3/2 {g g g,}
  \tuplet 3/2 {c c a } d8. c16 ~ c2  
}

partedoisb = \relative c'' {
  b,16 c8 d16 ~ d c8 b16 c8 b | a2.
  b16 c8 d16 ~ d c8 b16 c8 d | e2.
}


parteumtuba =  \relative fis, {
    }

letraintro = \lyricmode {
  io io io io io
  io io io io
  io io io io io
  io io io iiiii 
  io io io io io io io io io 
  la a  }
 
 letraum = \lyricmode {
Bai -- xa -- a -- a 
San -- to Sal -- va -- dor 
Bai -- xa -- a -- a
Se -- ja co -- mo fo -- or
A -- cha -- a -- a 
Nos -- sa di -- re -- ção 
Fle -- cha -- a -- a
Nos -- so co -- ra -- ção 
Pu -- xa -- a -- a
Pe -- lo nos -- so_a -- mo -- or
 }
 
letrapartebaseantesrefrao = \lyricmode {
- - - - - - - -
- - - - - - - - 
- - - - - - - - 
- 
} 
 letrarefrao = \lyricmode {
Ra -- cha -- a -- a
Os mu -- ros da pri -- são
Ex -- tra -- a -- a 
Res -- ta_u -- ma_i -- lu -- sã -- ão 
%Ex -- tra -- a -- a  
%Res -- ta_u -- ma_i -- lu -- sã -- ão 
Ex -- tra -- a -- a  
A -- bra -- -se ca -- da -- bra -- -se_a pri -- são
}

letraumb = \lyricmode {
  Bai -- xa
Cris -- to_ou O -- xa -- lá 
Bai -- xa 
San -- to ou ori -- xá
Ro -- cha 
Chu -- va, la -- ser, gás 
Bi -- cho 
Plan -- ta, tan -- to faz 
Bre -- cha 
Fa -- ça-se abrir 
Dei -- xa 
Nos -- sa dor fu -- gir 
Ex -- tra 
En -- tra por fa -- vor 
Ex -- tra 
En -- tra por fa -- vor 
Ex -- tra 
Abra-se ca -- da -- bra-se o te -- mor 
}

letradois = \lyricmode {
  Eu, tu e to -- dos no mun -- do 
No fun -- do, te -- me -- mos por nos -- so fu -- tu -- ro
E -- T e to -- dos os san -- tos, va -- lei-nos 
Li -- vrai- -- nos des -- se tem -- po es -- cu -- ro
}

letradoisb = \lyricmode {
  la la lai a la la la la la
  la la lai a la la la la la
  
}

letratoda = \lyricmode {
  \letraintro
  \letraum
  \letrapartebaseantesrefrao
  \letrarefrao
  \letradois
  \letradoisb
}

letracifra = \lyricmode {
  \letraintro
  \letraum
  \letrarefrao
  \letradois
  \letradoisb
} 
\book {
  \bookOutputName "extra_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
            \transpose c es {
        \tempo 4 = 75 {
              \intro             
             \parteum
                \break
               \parteantesrefrao
                \break
                \refrao
                \partedois
                \partedoisb
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
          \transpose c es {
          \tempo 4 = 75 {
            \unfoldRepeats {
              \intro             
             \parteum
                \break
               \parteantesrefrao
                \break
                \refrao
                \partedois
                \partedoisb
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
  \bookOutputName "extra_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c c {
              \intro             
             \parteum
                \break
               \parteantesrefrao
                \break
                \refrao
                \partedois
                \partedoisb
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
  \bookOutputName "extra_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c f {
              \intro             
             \parteum
                \break
               \parteantesrefrao
                \break
                \refrao
                \partedois
                \partedoisb
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
  \bookOutputName "extra_Eb_notas"
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
          \transpose c c {
              \intro             
             \parteum
                \break
               \parteantesrefrao
                \break
                \refrao
                \partedois
                \partedoisb
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


\include "cifra_extra.ly"

#(set-global-staff-size 20)

\book {
  \bookOutputName "extra_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
              \intro             
             \parteum
                \break
               \parteantesrefrao
                \break
                \refrao
                \partedois
                \partedoisb
           }
      }
             \new ChordNames \with {
               \consists "Bar_engraver"
             }
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letracifra
    >>
           \include "../imprimirsoletras.ly"
  }
}
