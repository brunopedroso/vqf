
\version "2.18.2"
% automatically converted by musicxml2ly from /home/GuigUse/Música/A_Volta_do_Malandro-melodia.mxl

\header {
  encodingsoftware = "MuseScore 3.0.0"
  encodingdate = "2018-07-07"
  composer = "Chico Buarque"
  title = "A Volta do Malandro"
}
\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
#(set-global-staff-size 16)

parteum =  \relative f'' {
  \clef "treble" \key bes \major \time 2/4 
  f2 r16 as8 as16 as16 as8 as16 | 
  g8. f16 d8 f8 ~ f2 | 
  f2 r16 \bar "" \break
  as8 as16 | 
  g8. f16 d8 es8 ~ es2 ~ | 
  es2 r16 es8 es16 es16 es8 es16 | 
  es8. bes16 c8 d16 | 
  d2 r16 d8 d16 d8 d8 | 
  c8 bes8 g8 bes8 bes2 | 
  bes2 r16 as'8 as16 as8 as8 | 
  g8 f8 d8 f8 f2 ~ | 
  f2 r16 as8 as16 as8 as8 | 
  g8 f8 d8 f8 f2 ~ | 
  f2 r16 d8 d16 d16 d8 d16 | 
  d8 es8 f8 c8 | 
  c8 bes8 c8 d8 -. -. r16 d8 d16 
  d16 d8 d16 | 
  fis8 g8 a8 bes8 -. bes2 ~ | 
  bes2 -- r16  d8 d16 d8 d8 | 
  c8 bes8 g8 bes8 ~ bes2 ~ | 
  bes2 r16 r4..  | 
  c8 bes8 g8 f8 f4. f8 | 
  r16 d8 d16 d16 d8 d16 d8  es8
  f8 c8 | 
  c2 r8 c4. ~ | 
  c8 r8 r4 d,8 d16 d16 d8 d16 d16 | 
  f8 d8 d8 -. c8  c8 bes8 ~ -! bes16 ~ bes16 ~ bes8 | 
  bes2 r8 r16 r16 r4 | 
  r1 | 
  r1 \bar "|."
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
Eis o ma -- lan -- dro na pra -- ça ou -- tra vez
Ca -- mi -- nhan -- do na pon -- ta dos pés
Co -- mo quem pi -- sa nos co -- ra -- ções
Que ro -- la -- ram nos ca -- ba -- rés

En -- tre deu -- sas e bo -- fe -- tões
En -- tre da -- dos e co -- ro -- néis
En -- tre pa -- ran -- go -- lés e pa -- trões
O ma -- lan -- dro an -- da as -- sim de viés

Dei -- xa ba -- lan -- çar a ma -- ré
E a po -- ei -- ra as -- sen -- tar no chão
Dei -- xa a pra -- ça vi -- rar um sa -- lão
Que o ma -- lan -- dro é o ba -- rão da ra -- lé
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
        % \addlyrics \letratoda
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
          \transpose c g {
            \parteum
          }
        }
        % \addlyrics \letratoda
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
        % \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 120
    }
  }
}
