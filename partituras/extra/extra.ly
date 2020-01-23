\version "2.18.2"
% transcrito por Karine Dias originalmente para sax alto
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\include "../formatoversos.ly"

\language "portugues"
\header {
    worknumber = "reggae"
    encodingdate = "2020-01-03"
    title = "Extra"
    composer = "Gilberto Gil"
    }

#(set-global-staff-size 18)
intro =  \relative do'' {
    \key do \major \time 3/4
\partial 4 r16 \marcaA  re8 do16 
\tuplet 3/2 {mi8 la, la~} la4 r8. mi'16 \tuplet 3/2 {re8 do la~} la4
r16 re8 do16 \tuplet 3/2 {mi8 la, la} r4 r8. mi'16 \tuplet 3/2 {re8 do la'~} la4
re,8. do16 \tuplet 3/2 {mi8 la, la} r4 r8. mi'16 \tuplet 3/2 {re8 do la~} la4 sol
la2. r  

}
parteum = \relative do'' {
\marcaB la8 la16 sol la2 do16 si8 la16~la sol8 mi16~ mi4
mi8 mi16 re mi2 | la16 sol8 fa16 mi8 fa mi4| \break
do8 do16 la do2 | re16 mi8 re16 ~ re do8 re16 ~ re4 | \break
fa8 fa16 mi fa2 | sol16 la8 sol16 ~ sol fa8 sol16 ~sol4 | \break
si8 si16 la si2 | do16 do8 si16 ~ si si8 la16 ~ la8 sols8 %~  |
}

partebaseantesref = \relative do'' {
  sols2. | r | r | r |
}
parteantesrefrao = \relative do' {
  \tuplet 3/2 {mi8 mi mi sols sols sols si ~ si fa' } 
  mi4 ~ mi8 res16 mi fa8 mi  
  \tuplet 3/2 {mi,8 mi mi sols sols sols si ~ si fa' } 
  mi4 ~ mi8 res16 mi fa8 mi  
}


refrao = \relative do'' {
\marcaC 
la8 la16 sol la2 | re8 res16 re ~ re do res8 re4 | \break
la8 la16 sol la2 | re8 res16 re ~ re do res8 re4| \break
la8 la16 sol la2 | re8 res16 re ~ re do8 res16 ~ res re8 do16~ | do16 la8 la16 ~ la2
r2.}

partedois = \relative do'' {
  \tuplet 3/2 {la8 la sol } \tuplet 3/2 {la la sol } \tuplet 3/2 {la la sol } 
  \tuplet 3/2 {la la sol } \tuplet 3/2 {la la la,}
  \tuplet 3/2 {re re do} mi8. re16 ~ re2 | r2. |
  \tuplet 3/2 {sol8 sol fa} \tuplet 3/2 {sol sol fa} \tuplet 3/2 {sol sol fa} 
  \tuplet 3/2 {sol sol fa} \tuplet 3/2 {sol sol sol,}
  \tuplet 3/2 {do do la } re8. do16 ~ do2  
}

partedoisb = \relative do'' {
  si,16 do8 re16 ~ re do8 si16 do8 si | la2.
  si16 do8 re16 ~ re do8 si16 do8 re | mi2.
}


parteumtuba =  \relative fas, {
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
            \transpose do mib {
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
          \transpose do mib {
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
          \transpose do do {
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
          \transpose do fa {
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
          \transpose do do {
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
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
