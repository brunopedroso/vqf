\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 17)

\header{
  title = "Circo da Alegria"
  composer = "Cid Guerreiro e Dito"
}


melodia = \relative c'' {
  \clef G
  \time 2/4
  \key f \major
  r8 \mark \default c d e | f4 e | d c | a2
  r8 c d e | f4 e | f fis|  g2
  \break
  r8 d e f | g4 f | e d | c2 |
  \break
  r8 f e d | c4 d | e c | f2 |
}

chegouchegou = \relative c'' {
  \key f \major
  \time 2/4
  \partial 4 { r8 c8 ^\markup { \large \bold \box "B"} } | f4 a8 g~ | g bes4 g8 | e e d c | d c
  \bar "circo_letra" \break
   r8 c8 | f4 a8 g~ | g bes4 g8 | f e d c | d c
   \bar "circo_letra" \break
  \repeat volta 2 {
  r8 a | a bes d cis | c4 c8 e ~ | e e d c |
  }
  \alternative {
    { d c \bar "circo_letra" \break}
    { f f}
  }
}

letrachegou = \lyricmode {
  Che gou, che gou, tá na ho ra da-a le gri a!
  Che gou, che gou, tá na ho ra da-a le gri a!
  O cir co tem pa lha ço, tem, tem to do di a!
  O cir co tem pa lha ço, tem, tem to do di a!

}
\book {
  \bookOutputName "circo_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes g {
            \melodia
          }
        }
      }
    >>
    \layout {}
  }
   \markup {\vspace #2 }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto2" {
          \transpose bes g {
            \unfoldRepeats
            \chegouchegou
          }
        }
      \addlyrics \letrachegou
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "circo_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose bes c {
            \melodia
          }
        }
      }
    >>
    \layout {}
  }
   \markup {\vspace #2 }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete2" {
          \transpose bes c {
            \unfoldRepeats
            \chegouchegou
      }
    }
      \addlyrics \letrachegou
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "circo_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose bes bes {
            \melodia
          }
        }
      }
    >>
    \layout {}
  }
  \markup {\vspace #2 }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone2" {
          \transpose bes bes {
            \unfoldRepeats
            \chegouchegou
      }
    }
      \addlyrics \letrachegou
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "circo_midi"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose bes bes {
            \melodia
            \unfoldRepeats
            \chegouchegou
          }
        }
      }
    >>
    \midi {
      \tempo 4 = 160
    }
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "circo_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado   
      \new Staff {
        \accidentalStyle Score.dodecaphonic    
        \new Voice = "saxalto" {
          \transpose bes g {
            \easyHeadsOn
            \teeny
            \melodia
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
   	  \score {
		    <<
		      \new TimeSig \compassoseparado
		      \new Staff {
		        \accidentalStyle Score.dodecaphonic    
		        \new Voice = "saxalto2" {
		          \transpose bes g {
                 \easyHeadsOn
		            \teeny
		            \unfoldRepeats
		            \chegouchegou
		          }
		        }
		      \addlyrics \letrachegou
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

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
'#(set-global-staff-size 20)

\book {
  \bookOutputName "circo_letra"
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
