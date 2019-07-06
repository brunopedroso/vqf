\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"


\header {
  title = "Bebê"
  composer = "Hermeto Pascoal"
}

parteum = \relative c' {
    \repeat volta 2 {
        e16 \marcaA f e f  e f e f 
       e f e f  e  f  
        g8 ~ | 
        g2 ~ | 
        g | 
        e16 f e f e f 
        e f  | 
        e f e f e f  
        b8 ~ | 
        b2 ~ | 
        b | 
        b16  a d c  b  a 
        d c  | 
        b a d c  b  a a8 ~  | 
        a16  g c bes  a  g 
        c bes  | 
            a  g c 
        bes  a  g g8 ~  | 
            g16  f bes 
        as  g  f bes as  | 
    }
    \alternative {
      {g f bes as  g  f f8 ~ | 
        f2 ~| 
        f }
      {
        g16  f16 bes16 
        as16  g16  f16 e8 ~ | e2~ | e2  |
      }
    }
}

partedois = \relative c'' {
    \repeat volta 2 {
        \marcaB a'16 g d a'  g  d a'8  | 
        r16 g  a bes  a  g g8  | 
        r16 f  [ c g']  f  c g'8  | 
        r16 f  g as  g  f f8  | 
        r16 es  bes f'  es  bes f'8  | 
        r16 es f  ges  r f  es8  
    }
    \alternative {
      {d8.  dis16 ~  dis e f8  | r fis r16 g8. }
      {\times 2/3 {r8 es  f }
       \times 2/3 { ges[ f es] } 
        a2 ~ | a }
    }
}
partetres = \relative c'' {
     \repeat volta 2 {
        \marcaC f16 es es f  f  es es f  | 
        f  es es ges  ges  f f es  | 
        es  des des es  es  des des es  | 
        es  des des e  e es16  es cis  | 
        cis  b b cis  cis  b b cis  |
        cis  b cis d  r cis8  b16  | 
     }
     \alternative {
       { ais8. b16~ b8 c16 cis  | r8 d r16 dis8. }
       {\times 2/3  { cis8  b cis  } \times 2/3  { d  cis b  }}
       }
    f'2 ~ | f4. e8 ~ \bar "||" \break
    \marcaD e16 d  d e e  d d e  | 
    e  d d f  f  e e d  | 
    d  c c d  d  c c d  | 
    d  c c es  es d16  d c  | 
    c bes bes c  c  bes bes c  | 
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c8  bes c  }
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        des  c bes  }
    | 
    e4 ~ e8
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
        c16 a f  }
    | e2 ~ | e ~ | e \bar "|."
    }

florflauta = \relative c'' {
  \times 2/6 { e16 f g aes g f e f g aes g f}
  \times 2/6 { e16 f g aes g f e f g aes g f}
}

\book {
  \bookOutputName "bebe_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "flute" {
          \tempo 4 = 83 {
            \transpose c c {
            \parteum
            \break
            \partedois
            \break
            \partetres
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
        \new Voice = "saxalto" {
           \transpose c a {
          \tempo 4 = 80 {
            \unfoldRepeats {
              \parteum
               \partedois
            \break
            \partetres
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
  \bookOutputName "bebe_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \tempo 4 = 83 {
            \transpose c d {
            \parteum
            \break
              \partedois
              \break
            \partetres
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
  \bookOutputName "bebe_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \tempo 4 = 83 {
            \transpose c a {
            \parteum
            \break
              \partedois
            \break
            \partetres              
            }
          }
        }
      }

    >>
    \layout{
    }
  }
}

#(set-global-staff-size 38)
\book {
  \bookOutputName "bebe_Eb_notas"
  \header {
     title = \markup {\fontsize #-3 "Bebê"}
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
           \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {

          \tempo 4 = 83 {
            \easyHeadsOn
            \teeny
            \transpose c a {
            \parteum
            \break
              \partedois
            \break
            \partetres
            }
          }
        }
%         \addlyrics \letratoda
      }
    >>
    \layout{
             \apertacompasso
    \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    }
  }
}

\include "../cifra-formatos.ly"
#(set-global-staff-size 15)



% \book {
%   \bookOutputName "bebe_letra"
%   \header {
%      instrument = "Letra e Acordes"
%   }
%    \score {
%     <<
%        \new Staff  {
%           \new Voice = "letra" {
%             \unfoldRepeats
%              \parteum
% %              \partedois
%              \parteum
%              \partedois
%            }
%       }
%   %           \new ChordNames 
%   %           \acordetodo
%              \new Lyrics
%              \lyricsto "letra" \letracorde
%     >>
%             \include "../imprimirsoletras.ly"
%   }
% }
