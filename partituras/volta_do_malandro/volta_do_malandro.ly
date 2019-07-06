
\version "2.18.2"
% automatically converted by musicxml2ly from /home/GuigUse/Música/A_Volta_do_Malandro-melodia.mxl

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

\header {
  encodingsoftware = "MuseScore 3.0.0"
  encodingdate = "2018-07-07"
  composer = "Chico Buarque"
  title = "A Volta do Malandro"
}

#(set-global-staff-size 16)

parteum =  \relative f'' {
  \clef "treble" \key bes \major \time 2/4 
  f2 ~ | f2 | r16 as8 as16 as16 as8 as16 | 
  g8. f16 d8 f8 ~ | f2~| f2 | 
  r16 as8 as16 as16 as8 as16 | 
  g8. f16 d8 es8 ~ | 
  \break 
  es2 ~ | es |
  r16 es8 es16 es16 es8 es16 | 
  es8. bes16 c8 d8~ | 
  \break 
  d2 ~| d2 r16 d8 d16 d8 d8 | 
  c8 bes8 g8 bes8 ~ | bes2 ~ | bes2 |
  r16 as'8 as16 as8 as8 | 
  g8 f8 d8 f8 ~ | \break
  f2 ~ | f2 |
  r16 as8 as16 as8 as8 | 
  g8 f8 d8 f8 ~|  f2 ~ | 
  f2 r16 d8 d16 d16 d8 d16 | 
  d8 es8 f8 c8 ~| 
  \break
  c2 ~ | c | 
  r16 d8 d16 d16 d8 d16 | 
  fis8 g8 a8 bes8 ~ |
  \break
  bes2 ~ | bes2 -- r16  d8 d16 d8 d8 | 
  c8 bes8 g8 bes8 ~ 
  \break
  |bes2 ~ | bes2 | r16 des8 des16 des8 des |
  c8 bes8 g8 f8 ~ | f2 ~| f2 | 
  r16 d8 d16 d16 d8 d16 d8  es8
  f8 c8 ~| 
  \break
  c2 ~|c | r16 d,8 d16 d16 d8 d16 | 
  f8 d8 d8 c8  |  
  bes2 ~| bes  \bar "|."
}

PartPOneVoiceTwo =  \relative as'' {
  \clef "treble" \key bes \major \time 2/4 s2 | 
  s1.  | 
  r2..*11/14 <as as>16 as8 as16 r16 s1 s2*7 s16*19 s16*13  s16*13
   | 
  r8.  r8 s16 d8 | 
  r2.. r8 s8*7  s8*17 
  \bar "|."
}

letratoda = \lyricmode {
Eis o ma -- lan -- dro na pra -- ça_ou -- tra vez \break
Ca -- mi -- nhan -- do na pon -- ta dos pés \break
Co -- mo quem pi -- sa nos co -- ra -- ções \break
Que ro -- la -- ram nos ca -- ba -- rés \break

En -- tre deu -- sas e bo -- fe -- tões \break
En -- tre da -- dos e co -- ro -- néis \break
En -- tre pa -- ran -- go -- lés e pa -- trões \break
O ma -- lan -- dro_an -- da as -- sim de viés  \break

Dei -- xa ba -- lan -- çar a ma -- ré  \break
E_a po -- ei -- ra_as -- sen -- tar no chão  \break
Dei -- xa_a pra -- ça vi -- rar um sa -- lão  \break
Que_o ma -- lan -- dro_é o_ba -- rão da ra -- lé -- é
}


\book {
  \bookOutputName "volta_do_malandro_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c d {
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
  \bookOutputName "volta_do_malandro_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c a, {
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
  \bookOutputName "volta_do_malandro_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c c {
            \parteum
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 110
    }
  }
}

#(set-global-staff-size 30)
\book {
  \bookOutputName "volta_do_malandro_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose c a, {
            \easyHeadsOn
            \teeny
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
    }
  }
}

\include "cifra_volta_do_malandro.ly"

#(set-global-staff-size 15)

\book {
  \bookOutputName "volta_do_malandro_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
%                \intro
             \parteum
%              \partedois
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
