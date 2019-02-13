
\version "2.18.2"
% automatically converted by musicxml2ly from /home/GuigUse/Música/Watermelon Man.mxl

\header {
  encodingsoftware = "MuseScore 3.0.0"
  encodingdate = "2018-07-08"
  composer = "Herbie Hanccock"
  title = "Watermelon Man"
}
\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 18)


parteum =  \relative es'' {
  \clef "treble" \key f \major \numericTimeSignature\time 4/4 \repeat
  volta 2 {
    es1 ~ | 
    es4 f,8 f8 <as c>8 <bes d>4 f8 ~ | 
    f1 ~ | 
    f2 r2 | 
    f'1 ~ | 
    f4 f,8 f8 <as c>8 <bes d>4 f8 ~ | 
    f1 ~ | f2 r2 | 
    r4 c'8 c8 g'4 a4 | 
    as8 g8 f8 d8 f4 g4 | 
    r4 c,8 c8 g'4 a4 | 
    as8 g8 f8 d8 c4 d4 | 
    r4 c8 c8 g'4 as4 | 
    f4 as,8 as8 <as c>8 <bes d>4 f8 ~ | 
    f1 | 
    R1
  }
}

letratoda = \lyricmode {
  Hey wa -- ter -- mel -- on man
Hey wa -- ter -- mel -- on man
Bring me one that rat -- tles when you plug it
One that's erd and jui -- cy when you plug it
Do you un -- der -- stand wa -- ter -- mel -- on man
}

\book {
  \bookOutputName "watermelon_man_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose f g {
            \parteum
          }
        }
        \addlyrics \letratoda
      }
    >>
}
}

\book {
  \bookOutputName "watermelon_man_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose f d' {
            \parteum
          }
        }
        \addlyrics \letratoda
      }
    >>
}
}


\book {
  \bookOutputName "watermelon_man_C"
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
  \bookOutputName "watermelon_man_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "trombone" {
          \transpose f d' {
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
#(set-global-staff-size 20)

\book {
  \bookOutputName "watermelon_man_letra"
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
