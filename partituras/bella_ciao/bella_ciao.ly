\version "2.18.2"
% transcrito por Karine Dias originalmente para sax alto
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\include "../formatoversos.ly"


\header {
    encodingdate = "2020-01-27"
    title = "Bella Ciao"
    composer = "(Desc.)Partisanos antifascistas"
    }

#(set-global-staff-size 18)

parteum = \relative c' {
\clef "treble" \key g \major \numericTimeSignature\time 4/4 
\partial 2 { r8 b8 [ e8 fis8 ]} 
\repeat volta 2 {
        g8 [ e8 ~ ] e4 r8 b8 [ e8 fis8 ] | 
        g8 [ e8 ~ ] e4 r8 b8 [ e8 fis8 ] | 
        <e g>4 fis8 [ e8 ] <d g>4 fis8 [ e8 ] | 
        <c e b'>4 <c e b'>4 <b dis b'>4 <fis' a>8 [ <g b>8 ] \break | 
        <e c'>8 [ <e c'>8 ~ ] ~ <e c'>4 r8 <g c e>8 [ <fis b d>8 <e a c>8
        ] | 
        <fis c' e>8 [ <e b' d>8 ~ ] ~ ~ <e b' d>4 r4 <fis a>8 [ <e g>8 ]
        | 
        <dis fis>4 <fis b>4 <dis fis>4 <e g>4 }
    \alternative { {
            | 
            <b e>2 r8 b8 [ e8 fis8 ] }
        {
            | 
            <b, e>2 r8 }
        } 
    
}

partedois = \relative c' {
  e d c |
  b2 r8 a' g fis |
  e2 r8 e d c |
  b2 r8 a' g fis |
  e2 r \bar "|."
}
 
letraum = \lyricmode {
  U -- na mat -- ti -- na mi son al -- za -- to,
  o bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao!
  U -- na mat -- tina! mi son al -- zato
  e ho tro -- va -- to l'in -- va -- sor.
  
%   O par -- ti -- gia -- no por -- ta -- mi via,
%   o bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao
%   o par -- ti -- gia -- no por -- ta -- mi via
%   che mi sen -- to di mo -- rir.
%   
%   E se io muo -- io da par -- ti -- gia -- no,
%   o bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao,
%   e se io muo -- io da par -- ti -- gia -- no
%   tu mi de -- vi sep -- pel -- lir.
%   
%   Sep -- pel -- li -- re las -- sù in mon -- ta -- gna,
%   o bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao,
%   sep -- pel -- li -- re las -- sù in mon -- ta -- gna
%   sot -- to l'om -- bra di un bel fior.
%   
%   E le gen -- ti che pas -- se -- ran -- no,
%   o bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao,
%   e le gen -- ti che pas -- se -- ran -- no
%   mi di -- ran -- no «che bel fior.»
%   
%   Que -- sto è il fio -- re del par -- ti -- gia -- no,
%   o bel -- la ciao, bel -- la ciao, bel -- la ciao ciao ciao,
%   que -- sto è il fio -- re del par -- ti -- gia -- no
%   mor -- to per la li -- ber -- tà
}
 
 
 letrarefrao = \lyricmode {

}


letradois = \lyricmode {

}


letratoda = \lyricmode {
  \letraum
  \letradois
}

\book {
  \bookOutputName "bella_ciao_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
            \transpose c des {
        \tempo 4 = 120 {
             \parteum
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
          \transpose c des {
          \tempo 4 = 120 {
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
  \bookOutputName "bella_ciao_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c bes {
                           
             \parteum
                
               
                
                
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
  \bookOutputName "bella_ciao_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c es {
                           
             \parteum
                
               
                
                
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

#(set-global-staff-size 40)
\book {
  \bookOutputName "bella_ciao_Eb_notas"
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
          \transpose c bes {
                           
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


\include "cifra_bella_ciao.ly"

#(set-global-staff-size 20)

\book {
  \bookOutputName "bella_ciao_letra"
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
             \new ChordNames \with {
               \consists "Bar_engraver"
             }
             \transpose e f {
             \acordetodo}
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
