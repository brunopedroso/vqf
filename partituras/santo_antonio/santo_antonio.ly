\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title = "Santo Antônio"
  composer = "Hermeto Pascoal"
}

#(set-global-staff-size 22)


parteum = \relative c'' {
  \time 2/4
  \repeat volta 2 {
    aes8. bes16 c8 des ~ | des16 c8 bes16 aes8. bes16 |
    aes8. bes16 c8 des ~ | des16 c8 bes16 aes8. bes16 |
    aes8. bes16 b8 des ~ | des16 b8 bes16 aes8. bes16 |
    aes2 | r 
    }
  d8. es16 f8 g ~ | g16 f8 es16 d8. c16 | 
  d8. es16 f8 g ~ | g16 f8 es16 d8. c16 | 
  e8. f16 g8 aes ~| aes16 g8 f16 e8. d16 |
  e8. f16 g8 aes ~| aes16 g8 f16 e8. b16 |
  
  d8 e  b' a | \tuplet 3/2 {r8 g fis } \tuplet 3/2 {e d c } |
  d8. e16 b'8 a | \tuplet 3/2 {r8 g fis } \tuplet 3/2 {e d b } |
  
  \repeat volta 2 {
    d16 b d g b d c8 ~| c16 b8 g16 c8 b 
    d,16 b d g b d c8 ~| c16 b8 g16 c8 b 
    }
  \repeat volta 2 {
    f, f a c | b4 a8 a | r a a c | b4 a8 f | r d f a |
    g4 f8 a | r a a c | b4 a8 f | r d f a | g4 d8 f ~|
  }
  \alternative {
    {f2 | e4 es | d des|c2|cis4 d| dis e}
    {\repeat volta 2 {
      r8 a a c | b4 a8 f|d f a | g4 d8 fj
    }
    }
  }
}
 
 
\book {
  \bookOutputName "santo_antonio_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c a, {
            \parteum
             
             
          }
        }
 
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "santo_antonio_C"
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
 
      }
    >>
    \layout{
    }
  }
    \score {
    <<
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c c {
          \tempo 4 = 100 {
            \unfoldRepeats {        
             \parteum
                 
                 
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
  \bookOutputName "santo_antonio_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose c d {
            \parteum
             
             
          }
        }
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "santo_antonio_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letraa" {
            \time 2/4
%               \intro
            \parteum
            \break
             
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
  \bookOutputName "santo_antonio_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose c a'  {
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