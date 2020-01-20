\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title = "Come Together"
  composer = "Beatles"
}

#(set-global-staff-size 22)


parteum = \relative c'' {
  \time 4/4 \key d  \minor
  \repeat volta 2  {
    r8 f f d f d c d |
    r f~ f d f d c d
    }
    r e~ e4 e4  r4 e8 d ~ d e ~ e2 
}
 
partedois = \relative c'' {
  f8 f f f f f f f f e d f 
  r4 d8 d16 a' ~ a fis8. r2 fis4 |
  e16 d16 b8 r4 r b8 d16 d
}

letratoda =\lyricmode {
  Here come old flat top
  He come groo -- vin'_up slow -- ly
  % He got joo joo eye -- balls
 % He one holy rol -- ler
  He got 
  hair down to his knee
  Got to be a jo -- ker
  He just do what he please
  
%   He we -- ar no sho -- eshi -- ne
%   He got toe jam fo -- ot -- ball
%   He got mon -- key fin -- ger
%   He sho -- ot Co -- ca-Co -- la
%   He say I know you, you know me
%   One thing I can tell you is
%   You got to be free
  Come to -- ge -- ther, right no -- o -- ow
  O -- ver me
  
%   He bad pro -- duc -- ti -- on
%   He got wal -- rus gum -- bo -- ot
%   He got Ono si -- de -- bo -- ard
%   He one spi -- nal crac -- ker
%   He got fe -- et down be -- low his knee
%   Hold you in his arm -- chair
%   You can fe -- el his di -- se -- a -- se
%   Co -- me to -- gether, right now
%   Over me
%   
%   He rol -- ler co -- as -- ter
%   He got early war -- ning
%   He got muddy wa -- ter
%   He one Mo -- jo fil -- ter
%   He say one and one and one is th -- ree
%   Got to be go -- od lo -- o -- king
%   'Cau -- se he's so hard to see
%   Co -- me to -- gether right now
%   Over me
%   
%   Co -- me to -- gether, ye -- ah
%   Co -- me to -- gether, ye -- ah
%   Co -- me to -- gether, ye -- ah
%   Co -- me to -- gether, ye -- ah
%   Co -- me to -- gether, ye -- ah
%   Co -- me to -- gether, ye -- ah
%   Co -- me to -- gether, ye -- ah
%   Co -- me to -- gether, ye -- ah
%   Co -- me to -- gether, ye -- ah
}

 
\book {
  \bookOutputName "come_together_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c  a,  {
            \parteum
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
  \bookOutputName "come_together_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c  c {
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
          \transpose c  c {
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
  \bookOutputName "come_together_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose d e  {
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
  \bookOutputName "come_together_letra"
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
  \bookOutputName "come_together_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose c a   {
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