
\version "2.18.2"
% automatically converted by musicxml2ly from /home/GuigUse/Música/TIRA COCO.xml


#(set-global-staff-size 16)
\header {
  encodingsoftware = "Audiveris 4.4.0-SNAPSHOT/Frescobaldi"
  source = "https://emosc-com-br.webnode.com/apostila-musical-da-emosc/partituras/frevos/"
  worknumber = "FREVO"
  encodingdate = "2018-07-07"
  title = "Pra tirar côco"
}

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"


parteum =  \relative g'' {
  \clef "treble" \key g \major \time 2/4 
  \partial 8 \marcaA g8 \repeat volta 2 {
    \mark \markup { \musicglyph #"scripts.segno" } | 
    e8 g8 e8 g8 | e4. g8 | 
    e8 g8 e8 g8 |  fis4. fis8 | 
    dis8 fis8 dis8 fis8 | 
    dis4. fis8 | 
    dis8 fis8 dis8 fis8 | 
    g4. g8 | 
    e8 g8 e8 g8 | 
    e4. g8 | 
    e8 g8 e8 g8 | 
     fis4. fis8 | 
    dis8 fis8 dis8 fis8 | 
    \tuplet 3/4 {b8 b b} \tuplet 3/4 {a a a} |
    \tuplet 3/4 {g g g} \tuplet 3/4 {fis fis fis}
    e8. e16 e8 e~ |
  }
}

parteliga = \relative g'' {
  e4 g 
}
  
}

partedois = \relative g'' {
 \repeat volta 2 {
      | 
      g4 e8 g8 ~ | 
      g8 e8 g8 e8 | b2 | 
      b4 r4 | fis'4 fis8 fis8 ~ | 
      fis8 fis8 e8 fis8 | 
      g8 e4. ~ | 
      e4. e8 | 
      g4 e8 g8 ~ | 
      g8 e8 g8 e8 | 
      b4. b16 dis16 | 
      fis8 fis8 fis8 e8 | 
      dis4. fis16 fis16 | 
      fis8 fis8 fis8 e8 
    } 
    e4 r8 e8 | 

}
}

letraintro = \lyricmode {
  - - - - - - - - - - - 
  - - - - - - - - - - - 
  - - - - - - - - - - - 
  - - - - - - - - - - - 
  - - - - - - - - - - - 
  - -
}
letraum = \lyricmode {
  Eu quero me trepar no pé de coco
Eu quero me trepar pra ti -- rar co -- co

De -- pois eu quero quebrar o coco
Pra saber se o coco é oco
Pra saber se o coco é o -- co

% Tem gente dizendo que eu sou louco
% Que eu só falo em tirar coco
% 
% Realmente eu quero tirar o coco
% Pra depois quebrar o coco
% Pra saber se o coco é oco
% 
% Realmente eu quero tirar o coco
% Pra depois quebrar o coco
% Pra saber se o coco é oco

}

letratoda = \lyricmode {
  \letraintro
  \letraum
}

\book {
  \bookOutputName "pra_tirar_coco_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose g d {
            \parteum
            \parteliga
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
  \bookOutputName "pra_tirar_coco_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "sax alto" {
          \transpose g a {
            \parteum
            \parteliga
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
  \bookOutputName "pra_tirar_coco_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose g c {
            \parteum
            \parteliga
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 190
    }
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "pra_tirar_coco_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "sax alto" {
          \transpose g a {
            \easyHeadsOn
            \teeny
            \parteum
            \parteliga
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
}