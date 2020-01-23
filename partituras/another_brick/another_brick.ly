\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title = "Another Brick in the Wall"
  composer = "Pink Floyd"
}

#(set-global-staff-size 22)


parteum = \relative c'' {
  \time 4/4 \key b \minor 
  \repeat volta 2  {
    b4 cis8 d8~ d8 cis ~ cis4 | 
    b4 cis8 d8~ d8 cis ~ cis4| r1 | r1 |
    b4 cis8 d8~ d8 cis ~ cis4 |
    b4 cis8 d8~ d2 | 
    }
    \alternative {
      {r1 r1}
      {e1 | e }
    }
}
 
partedois = \relative c'' {
  e4 r4 e4 r |
  e8 e r4 
  fis8 e d16 e8 d16 | 
  r8 d r d |
  r b' ~ b16 a8. b b16 b8 a16 a a8 gis16 gis |
  gis8 fis 
  \repeat volta 2 {
    r d d d d d d d r cis cis cis cis b ~ b a | b1 | r
  }
}

 
\book {
  \bookOutputName "another_brick_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c c {
            \parteum
            \partedois
             
          }
        }
 
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "another_brick_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose a c {
            \parteum
             
            \partedois 
          }
        }
 
      }
    >>
    \layout{
    }
  }
    \score {
    <<
      \new Staff {
        \new Voice = "saxalto" {
          \transpose a c {
          \tempo 4 = 130 {
            \unfoldRepeats {        
             \parteum
            \partedois     
                 
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
  \bookOutputName "another_brick_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose a d {
            \parteum
            \partedois 
             
          }
        }
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "another_brick_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letraa" {
            \time 4/4
%               \intro
            \parteum
            \break
            \partedois 
            \break
             
             
           }
      }
  %           \new ChordNames 
  %           \acordetodo
             \new Lyrics
             \lyricsto "letraa" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "another_brick_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose c c  {
            \easyHeadsOn
            \teeny
           { \parteum
             
             
          }
        }
 
      }
    >>
    \layout {
    \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    \context {
      \Score 
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
	}
}
  }
}
}


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.