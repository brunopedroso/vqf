\version "2.18.2"
% transcrito por Karine Dias originalmente para sax alto
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\include "../formatoversos.ly"


\header {
    encodingsoftware = "MuseScore 3.3.4"
    source = "/tmp/audiveris-2a45b5c3f319a15f0b0d02d618454f21.pdf / transcrição Lucas Seco"
    encodingdate = "2020-01-27"
    title = "Yékérmo Séw"
    composer = "Mulatu Astatke"
    }

#(set-global-staff-size 18)

parteum = \relative c' {
    \time 4/4
    \transposition bes \clef "treble" \key c \major R1*3 \repeat volta 2
    {
        | 
        r2 r8 f8 a8 [ b8 ] | 
        c8 [ e16 c16 ] b8 [ a8 ] b8 [ c16 b16 ] a8 [ e8 ] | 
        f8 [ a16 f16 ] e8 [ c8 ] e8 [ f16 e16 ] c8 [ b8 ] | 
        c1 \break | 
        r2 r8 f8 a8 [ b8 ] | 
        c8 [ e16 c16 ] b8 [ a8 ] b8 [ c16 b16 ] a8 [ e8 ] |
        
        f8 [ a16 f16 ] e8 [ c8 ] e8 [ f16 e16 ] c8 [ b8 ] | 
        b1 }
    \break | 
    r2 r4 r8 f'8 | 
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c'8 [ b8 a8 ] }
    e16 [ f16 a8 ] b4. a8 | 
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 [ b8 a8 ] }
    e16 [ f16 c8 ] e4. f8 | 
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c'8 [ b8 a8 ] }
    e16 [ f16 a8 ] b4. a8 \break | 
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8 [ b8 a8 ] }
    e16 [ f16 c8 ] e4. r8 | 
    <c f>4. <b e>8 r2     ^"D.C. al Fine"    \bar "|."

}

partedois = \relative c' {
  
}
 

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
            \transpose c bes {
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
          \transpose c g  {
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
                           
             \parteum
                
               
                
                
                \partedois
                
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
                           
             \parteum
                
               
                
                
                \partedois
                
          }
        }
      }
    >>
    \layout {
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


% \include "cifra_yekermo_sew.ly"
% 
% #(set-global-staff-size 20)
% 
% \book {
%   \bookOutputName "yekermo_sew_letra"
%   \header {
%      instrument = "Letra e Acordes"
%   }
%    \score {
%     <<
%        \new Staff  {
%           \new Voice = "letra" {
%                            
%              \parteum
%              \partedois
%                 
%            }
%       }
%              \new ChordNames  \with {
%                \consists "Bar_engraver"
%              } {
%              \transpose e f {
%              \acordetodo}
%              }
%     >>
%            \include "../imprimirsoletras.ly"
%   }
% }
