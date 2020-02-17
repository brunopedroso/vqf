\version "2.18.2"
% transcrito por Karine Dias originalmente para sax alto
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\include "../formatoversos.ly"


\header {
    worknumber = "forró"
    encodingdate = "2020-01-27"
    title = "Madalena"
    composer = "Gilberto Gil"
    }

#(set-global-staff-size 18)

intro =  \relative c' {
    \key d \major \time 4/4 \marcaA
   \repeat volta 2 {
     r8 d'16 ^Intro cis d cis b a b a g fis a fis d8
     r8 d'16 cis d cis b a b a g fis a g e8 |
     r8 e'16 cis e cis a g b a g fis a g e8 
     r8 e'16 cis e cis a g b a g fis a g d8 
   }
}
introb = \relative c'' {}

parteum = \relative c' {
\marcaC 
   \tuplet 3/2 {r4 d fis } \tuplet 3/2 {g a4 g4}  |
   b4 b \bar "" \break \tuplet 3/2 {r4 g fis} | 
   a4.  a8 ~ a fis e d ~ | d2 r |
   r8 d d e \tuplet 3/2 {fis4 d b ~} |
   b8 a4. r4 \bar "" \break  r8 e'8 |
   e8 e4  fis8 \tuplet 3/2 {g4 fis4 e ~} |
   \tuplet 3/2 {e d ~d}
   r4 \bar "" \break r8 d8 |
   d d d e8 fis4. d'8  |
   b4 a8 a ~ a4 r4 
   e4 fis g4 fis8 e ~ |
   e4 d r2
}


partedois = \relative c'' {
   \tuplet 3/2 {r4 b4 b4} \tuplet 3/2 {b4 b a }|
    \tuplet 3/2 {cis4 cis4 \bar "" \break a4 } \tuplet 3/2 {a4 a4 g4} |
    \tuplet 3/2 { b4 b4 g4 } \tuplet 3/2 {g4 g4 fis4 } |
    a2 r2 |
    \tuplet 3/2 {r4 b4 b4} \tuplet 3/2 {b4 b a }|
    \tuplet 3/2 {cis4 cis4 a4 } \tuplet 3/2 {a4 a4 g4} |
    b2 \bar "" \break r8 a a b |
    \tuplet 3/2 {cis4 b a } \tuplet 3/2 {g fis e }
     
   
}

refrao = \relative c' {
 
   d4 \bar "" \break
   \marcaD a'8 [ a] d8[ d16 a] ~ a[ a16 d8] |
   \repeat volta 2 {r8 d4 cis8  b8 d d cis |
   cis4 \bar "" \break 
   a8 [ a] cis8[ cis16 a] ~ a[ a16 cis8] |
   r8 cis4 cis8 cis8 cis b a16 b16 ~ |
   b8 a \bar "" \break
   a8 [ a] d8[ d16 a] ~ a[ a16 d8] |
   r4 \bar "" \break
   d,8 fis8  b8 b b a |
   a a r \bar "" \break
   e e g g a | 
   r4. g8 \tuplet 3/2 {g4 g fis } 
   }
   \alternative {
   {a4  a8 [ a] d8[ d16 a] ~ a[ a16 d8] |}
    {d1 \fermata \bar "|."}
   }
}


parteumtuba =  \relative fis, {
    }

letraintro = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _

}
 
 letraum = \lyricmode {
  Fui pas -- se -- ar na ro -- ça
  En -- con -- trei Ma -- da -- le -- na
  Sen -- ta -- da nu -- ma pe -- dra
  Co -- men -- do fa -- ri -- nha se -- ca
  O -- lhan -- do_a pro -- du -- ção a -- grí -- co -- la
  E a pe -- cu -- á -- ria
 }
 
letradois = \lyricmode {
  Ma -- da -- le -- na cho -- ra -- va
  Sua mãe con -- so -- la -- va
  Di -- zen -- do as -- sim
  Po -- bre não tem va -- lor
  Po -- bre é so -- fre -- dor
  E quem a -- ju -- da_é Se -- nhor do Bon -- fim!
}

letrarefrao = \lyricmode {
  En -- tre_em be -- co sa -- ia_em beco!
  Há_um re -- cur -- so Ma -- da -- lena
  En -- tre_em be -- co sa -- ia_em beco!
  Há_u -- ma san -- ta com seu no -- me
  En -- tra_em be -- co sai em beco!
  Vai na pró -- xi -- ma ca -- pe -- la
  E_acen -- de uma ve -- la
  Para não pas -- sar fome1
}



letratoda = \lyricmode {
  \letraintro
  \letraum
  \letradois
  \letrarefrao 
}

letracifra = \lyricmode {
  \letraum
  \letradois
  \letrarefrao
} 
\book {
  \bookOutputName "madalena_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
            \transpose c c {
        \tempo 4 = 140 {
              \intro             
              \parteum
                \break
                \partedois
                \refrao

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
          \transpose c c {
          \tempo 4 = 140 {
            \unfoldRepeats {
              \intro
              \parteum
              \break
              \partedois
              \refrao
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
  \bookOutputName "madalena_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c a {
            \intro             
            \parteum
            \partedois
            \refrao
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
  \bookOutputName "madalena_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c d {
            \intro             
            \parteum
            \partedois
            \refrao
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
    }
  }
}

#(set-global-staff-size 40)
\book {
  \bookOutputName "madalena_Eb_notas"
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
          \transpose c a {
             \parteum
                \break
                \partedois
                \refrao
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


\include "cifra_madalena.ly"

#(set-global-staff-size 18)

\book {
  \bookOutputName "madalena_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
            
             \parteum
                \partedois
                \refrao
           }
      }
             \new ChordNames \with {
               \consists "Bar_engraver"
             }
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letracifra
    >>
           \include "../imprimirsoletras.ly"
  }
}
    \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \easyHeadsOn
          \teeny
          \transpose c a {
             \parteum
                \break
                \partedois
                \refrao
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


\include "cifra_madalena.ly"

#(set-global-staff-size 18)

\book {
  \bookOutputName "madalena_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
            
             \parteum
                \partedois
                \refrao
           }
      }
             \new ChordNames \with {
               \consists "Bar_engraver"
             }
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letracifra
    >>
           