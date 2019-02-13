\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

% automatically converted by musicxml2ly from Autumn-leaves-basico.mxl

\header {
    encodingsoftware = "MuseScore 3.0.1"
    source = " adaptado de https://www.swiss-jazz.ch/standards-jazz/AutumLeaves.pdf"
    encodingdate = "2019-01-30"
    title = "Autumn Leaves"
    composer = "Johnny Mercer"
    poet = "(Medium Jazz)"
    }

\layout {
    \context { \Score
        skipBars = ##t
        }
    }
parteum =  \relative e' {
    \clef "treble" \key g \major \numericTimeSignature\time 4/4 | 
    \tempo 4=120 r4 \marcaA  e4 fis4 g4
    \repeat volta 2 {
        | 
        c1 ~ | 
        c4 d, e4 fis4 | 
        b2 b2 ~ | 
        b4 c,4 d4 e4 | 
        a1 ~ | 
        }
    \alternative {
      {a4 b,4 cis4 dis4 | 
        g1 |
        r4 e4 fis4 g4}
      { a4 fis4 a4 g4 |  e1 | }
    }
}
partedois  = \relative c' {
  \break
  e4 r4  \marcaB dis4  e4 | 
  fis4 b,4 fis'2 ~| \break
  fis4 fis4 e4 fis4 | 
    g1 ~ | 
    \break 
    g4 g4 fis4 g4  | 
    a1 ~ | \break
    a4 d,4 d'4 c | 
    b1 ~ | 
    \break
    b4 r ais4 b4 |
    c4 c4 a4 a4 |
    fis2. c'4 | 
    b2 b2 ~ | \break
    b2. e,4 |
    a2. g4  | 
    fis2 g4 b, | 
    e1 | 
    r4 e4 fis g 
    \bar "|."
    }

parteumbaixo =  \relative a, {
    \clef "bass" \key g \major \numericTimeSignature\time 4/4 | % 1
    e4 fis4 g4 gis4 | % 2
    a4 g4 fis4 e4 | % 3
    d4 e4 fis4 a4 | % 4
    g4 a4 b4 d4 | % 5
    cis4 b4 a4 g4 | % 6
    fis4 cis4 dis4 fis4 | % 7
    b4 cis4 d4 a4 | % 8
    b4 a4 g4 fis4 | % 9
    e4 -> d4 b4 e4 | \barNumberCheck #10
    a4 b4 c4 cis4 | % 11
    \times 2/3  {
        d4 -. e4 f4 }
    fis4 s4 | % 12
    \times 2/3  {
        g4 -. d4 b4 }
    g4 s4 | % 13
    cis,4 d4 e4 g4 | % 14
    fis4 gis4 ais4 cis8 c8 | % 15
    \tuplet 3/2 {b8 fis8 d8} b4 cis4 d4 | % 16
    fis4 a4 b4 c4 | % 17
    cis4 d4 e4 eis4 | % 18
    fis4 e4 dis4 cis4 | % 19
    b4 a4 g4 fis4 | \barNumberCheck #20
    d4 e4 fis4 b,4 | % 21
    e4 -> fis4 g4 e4 | % 22
    a4 g4 fis4 e4 | % 23
    d4 cis4 d4 e4 | % 24
    g4 b,4 e4 d4 | % 25
    cis4 e4 g4 f4 | % 26
    fis4 cis4 fis4 ais4 | % 27
    b4 b4 bes4 bes4 | % 28
    a4 a4 as4 as4 | % 29
    g4 -! cis4 e4 g4 | \barNumberCheck #30
    fis4 dis4 e4 fis4 | % 31
    b,4 d4 cis4 a4 | % 32
    fis4 d4 cis4 b4 \bar "|."
    }


letratoda = \lyricmode {
  The fall -- ing leaves drift by the win -- dow
  The au -- tumn leaves of red and gold
  I see your 
%   lips, the sum -- mer kiss -- es
%   The sun-burned 
  hands I used to hold
  _ Since you went a -- way 
  the days grow long
  And soon I'll hear 
  old win -- ter's song
  But I miss you most of all 
  my dar -- ling
  When au -- tumn leaves 
  start to fall
  (The fall -- ing)
}

letrabaixo = \lyricmode {
  The fall -- ing leaves _ _ drift by the win -- dow _ _
  The au -- tumn leaves _ _ of red and gold _ _
  I see your 
   lips, _ _ the sum -- mer kiss -- es _ _ 
   The sun-burned 
  hands _ _ I used to hold
  _ Since you went a -- way _
  the days grow long _ 
  And soon I'll hear _ 
  old win -- ter's song _ 
  But I miss you most of all _ 
  my dar -- ling _ 
  When au -- tumn leaves _ 
  start to fall
  _ Since you went a -- way _
  the days grow long _
  And soon I'll hear _
  old win -- ter's song _
  But I miss you most of all _
  my dar -- ling _
  When au -- tumn leaves _
  start to fall
}


% The score definition
\book {
  \bookOutputName "autumn_leaves_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \tempo 4 = 80 {
            \transpose g g {
 %            \intro
            \parteum
%             \skip 256 \bar "autumn_leaves_letra" \break
             \partedois
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
          \tempo 4 = 120 {
            \unfoldRepeats {
              \transpose g g {
%               \intro
              \parteum
%             \skip 256 \bar "autumn_leaves_letra" \break
              \partedois
              }              
            }
          }
        }
       }
       \new Staff {
          \new Voice = "tuba" {
            \unfoldRepeats {
              \transpose g g {
                \parteumbaixo
              }
            }
          }
       }
    >>
		\midi {}
  }
}

\book {
  \bookOutputName "autumn_leaves_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose g e {
%             \intro
            \parteum
%             \skip 256 \bar "autumn_leaves_letra" \break
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
  \bookOutputName "autumn_leaves_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose g a {
%             \intro
            \parteum
%             \skip 256 \bar "autumn_leaves_letra" \break
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
  \bookOutputName "autumn_leaves_C_Tuba"
  \header {
     instrument = "Para Tuba -Bb (part. em C)"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "tuba" {
          \transpose g g {
%             \intro
            \parteumbaixo
%             \skip 256 \bar "autumn_leaves_letra" \break
          }
        }
        \addlyrics \letrabaixo
      }
    >>
    \layout { \apertacompasso
    }
  }
}

#(set-global-staff-size 30)
\book {
  \bookOutputName "autumn_leaves_Eb_notas"
  \header {
     title = \markup {\fontsize #-3 "Autumn Leaves"}
     composer = \markup {\fontsize #-5 "Johnny Mercer"}
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
          \transpose g e {
%             \intro
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
'#(set-global-staff-size 20)

\book {
  \bookOutputName "autumn_leaves_letra"
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
