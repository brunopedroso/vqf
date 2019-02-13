\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\version "2.18.2"

#(set-global-staff-size 16)

\header {
  title = "O Balancê"
  source = "baseado em versão disponível periclesvile|a.blogspot.com"
  composer = "Alberto Ribeiro e Braguinha"
  encodingdate = "2018-02-05"
}

\layout {
  \context {
    \Score
    skipBars = ##t
  }
}
parteum =  \relative c'' {
  \clef "treble" \key a \major \time 2/4 | 
  \tempo 4=120 | 
  \marcaA cis8 cis8 cis8 b8 ~ | 
  b8 a8 b8 a8 ~ | 
  a4 r4 | r2 | \break
  a8 a8 a8 a8 ~ | 
  a8 fis8 ~ fis16 a8. | 
  b2 | r2 | \break
  cis8 a8 cis8 b8 ~ | 
  b8 gis4 b8 | 
  a8 fis8 a8 gis8 ~ | 
  gis4 r4 | \break
  cis8 cis8 cis8 b8 ~ | 
  b8 a8 b8 a8 ~ | a4 r4 | r2 |\break
}

letraum = \lyricmode {
  Ô ba -- lan -- cê, ba -- lan -- cê
  Que -- ro dan -- çar com vo -- cê
  En -- tra na ro -- da, mo -- re -- na, pra ver
  Ô ba -- lan -- cê, ba -- lan -- cê
   }
partedois = \relative c'' {
  \marcaB
  \tuplet 3/2 {a'4 a a} | 
  \tuplet 3/2 {a b cis} | 
  gis4. eis8 ~ | 
  eis4. r8 | \break 
  \tuplet 3/2 {fis4 fis fis} | 
  \tuplet 3/2 {fis gis a} | 
  e2 | r2 \break
  \tuplet 3/2 {fis4 b a} | 
  \tuplet 3/2 {eis b' a} | 
  \tuplet 3/2 {e b' a }
  dis,8 dis r4 | 
  cis'8 cis8 cis8 b8 | 
  r8 a8 b8 a8 ~| a2
}

letradois = \lyricmode {
  Quan -- do por mim vo -- cê pas -- sa
  Fin -- gin -- do que não me vê
  Meu co -- ra -- ção qua -- se se des -- pe -- da -- ça
  No ba -- lan -- cê, ba -- lan -- cê
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "balanceh_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose a d' {
            \parteum
            \transpose d' d{\partedois}
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "balanceh_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose a g {
            \parteum
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 130
    }
  }
}

\book {
  \bookOutputName "balanceh_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose a g {
            \parteum
            \transpose d' d{\partedois}
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

#(set-global-staff-size 30)
\book {
  \bookOutputName "balanceh_Eb_notas"
  \header {
     instrument = "Sax Alto Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose a d' {
            \easyHeadsOn
            \teeny
            \parteum
            \transpose d' d{\partedois}
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
	    \context {
	      \Score 
	      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
			}
    }
  }
}

'#(set-global-staff-size 20)

\book {
  \bookOutputName "balanceh_letra"
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
