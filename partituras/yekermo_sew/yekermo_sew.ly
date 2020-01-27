\version "2.18.2"
% transcrito por Karine Dias originalmente para sax alto
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\include "../formatoversos.ly"
\include "../cifra-formatos.ly"

\header {
    encodingsoftware = "Lilypond 2.18.2"
    source = "transcrição da sexta por Lucas Seco, 
normal por fonte da internet yekermosewutvoixb e Rodrigo Borges"
    encodingdate = "2020-01-27"
    title = "Yékérmo Séw"
    composer = "Mulatu Astatke"
    }

#(set-global-staff-size 18)

parteum = \relative c' {
    \time 4/4
    \key c \major R1*3 \repeat volta 2
    {
        r2 r8 f8 a8 [ b8 ] | 
        c8 [ e16 c16 ] b8 [ a8 ] b8 [ c16 b16 ] a8 [ e8 ] | 
        f8 [ a16 f16 ] e8 [ c8 ] e8 [ f16 e16 ] c8 [ b8 ] | 
        c1 \break | 
        r2 r8 f8 a8 [ b8 ] | 
        c8 [ e16 c16 ] b8 [ a8 ] b8 [ c16 b16 ] a8 [ e8 ] |
        
        f8 [ a16 f16 ] e8 [ c8 ] e8 [ f16 e16 ] c8 [ b8 ] | 
        b1 }

}

partedois = \relative c' {
    r2 r4. f8 | 
    \tuplet 3/2  {c'8 b8 a8 }
    f a  b4. a8 | 
    \tuplet 3/2 {c8 b8 a8 }
    e c e4. f8 | 
    \tuplet 3/2 {c'8 b8 a8 }
    f a  b4. a8 | 
    \once \override TupletBracket #'stencil = ##f
    \tuplet 3/2 {c8 b8 a8 }
    e c e4 r |   
    <c f>4. <b e>8 r2     ^"D.C. al Fine"    \bar "|."
  
}
 
parteumsexta = \relative c'' { 
      \time 4/4
      R1*3 \repeat volta 2 {
        r2 r8 a c e
        f a16 f e8 c e f16 e c8 a b c16 b a8 f a b16 a f8 e f1
        r2 r8 a c e
        f a16 f e8 c e f16 e c8 a b c16 b a8 f a b16 a f8 e e1 
      }


}

partedoissexta = \relative c' {
  r2 r4. e8 
\tuplet 3/2 {c'8 b a} f a b4. e,8
\tuplet 3/2 {c'8 b a} f c e4 r8 e|
\tuplet 3/2 {c'8 b a} f a b4. e,8
\tuplet 3/2 {c'8 b a} f c e4 r4 | 
f4. e8 r2
}

partetoda = {\parteum \partedois}

partetodasexta = {\parteumsexta \partedoissexta}

\book {
  \bookOutputName "yekermo_sew_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
            \transpose c bes, {
        \tempo 4 = 120 {
             \parteum
             \partedois
                
            }
          }
        }
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
          \transpose c bes  {
          \tempo 4 = 120 {
            \unfoldRepeats {
             \partcombine
             \partetoda
             \partetodasexta
                
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
  \bookOutputName "yekermo_sew_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c g  {
             \parteum \partedois
          }
        }
      }
    >>
    \layout {
    }
  }
}

\book {
  \bookOutputName "yekermo_sew_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c c {
%              \partcombine \parteum 
             \parteumsexta
             \partedoissexta
%                 \partedois
                
          }
        }
      }
    >>
    \layout {
    }
  }
}

\book {
  \bookOutputName "yekermo_sew_C_voz2"
  \header {
     instrument = "Para instrumentos em C - voz 2"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
            \transpose c bes, {
        \tempo 4 = 120 {
             \parteumsexta
             \partedoissexta
                
            }
          }
        }
      }

    >>
    \layout{
    }
  }
}

\book {
  \bookOutputName "yekermo_sew_Bb_voz2"
  \header {
     instrument = "Para instrumentos em Bb - voz 2"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
            \transpose c c {
        \tempo 4 = 120 {
             \parteumsexta
             \partedoissexta
                
            }
          }
        }
      }

    >>
    \layout{
    }
  }
}

\book {
  \bookOutputName "yekermo_sew_Eb_voz2"
  \header {
     instrument = "Para instrumentos em Eb - voz 2"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
            \transpose c g {
        \tempo 4 = 120 {
             \parteumsexta
             \partedoissexta
                
            }
          }
        }
      }

    >>
    \layout{
    }
  }
}


#(set-global-staff-size 40)
\book {
  \bookOutputName "yekermo_sew_Eb_notas"
  \header {
     title = \markup {\fontsize #-3 "extra"}
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
          \transpose bes a {
                           
             \parteum
                
               
                
                
                \partedois
                
          }
        }
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


\include "cifra_yekermo_sew.ly"

#(set-global-staff-size 20)

\book {
  \bookOutputName "yekermo_sew_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
                           
             \parteum
             \partedois
                
           }
       }
           \new ChordNames  \with {
               \consists "Bar_engraver"
             } 
             \transpose c d {\acordetodo}
    >>
         \layout {
       \apertacompasso
         }
   }
  }

