\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"


\header {
  title = "Paula e Bebeto"
  composer = "Milton Nascimento / Caetano Veloso"
}

#(set-global-staff-size 16)

intro = \relative c'' {
   \key d \major
	\time 4/4
	\repeat volta 2 {
	\marcaA \unfoldRepeats {
	  \repeat volta 2 {
	  a8 a b a~ a a b g ~| g g fis e ~ e d d d|
	}
	  g g fis e ~e d c g~ | g b d r d4 d |
	  g8 g fis e ~e d c g~ | g b d4 d4 r |
	}
	}
}

parteum = \relative c'' {
  \break \marcaB
  g8 g fis e ~e d c g~ | g b d r d4 d |
  g8 g fis e ~e d c d~ | d f bes4 g r |
}

introtuba = \relative c {
   \key f \minor
	\time 4/4
	\repeat volta 4 {
	\marcaA c16 c8. r8 c c4 r8 c | c16 c8. r8 f f  des des c }
}

partedois = \relative c'' {
  	\break
  	\repeat volta 2 {
	\marcaC \unfoldRepeats \repeat volta 2 {
	  a8 a b a~ a a b g ~| g g fis e ~ e d d d|
	}
	g g fis e ~e d c f,~ | f a c r d4 d |
        g8 g fis e ~e d c f,~ | f a c4 d4 r |
        }
        g8 g fis e ~e d c f,~ | f a c r d4 d |
        g8 g fis e ~e d c d~ | d f bes4 g r \bar "|."
}

letraintro = \lyricmode {

}

letraum = \lyricmode {
  Ê Vi -- da vi -- da que amor brin -- ca -- dei -- ra, ve -- ra
  E -- les a -- ma -- ram de qual -- quer ma -- nei -- ra, ve -- ra
  Qual -- quer ma -- nei -- ra de_a -- mor va -- le_a pe -- na
  Qual -- quer ma -- nei -- ra de_a -- mor va -- le_a -- mar
  
%   Pe -- na que pe -- na que coi -- sa bo -- ni -- ta, di -- ga
%   Qual a pa -- la -- vra que nun -- ca foi di -- ta, di -- ga
%   Qual -- quer ma -- nei -- ra de amor va -- le aque -- la
%   Qual -- quer ma -- nei -- ra de amor va -- le amar
  Qual -- quer ma -- nei -- ra de_a -- mor va -- le_a pe -- na
  Qual -- quer ma -- nei -- ra de_a -- mor va -- le -- rá
  
  E -- les par -- ti -- ram por ou -- tros as -- sun -- tos, mui -- tos
  Mas no meu can -- to_es -- ta -- rão sem -- pre jun -- tos, mui -- to
  Qual -- quer ma -- nei -- ra que_eu can -- te_es -- se can -- to
  Qual -- quer ma -- nei -- ra me va -- le can -- tar
  
%   Eles se amam de qual -- quer ma -- nei -- ra, ve -- ra
%   Eles se amam e pra vi -- da in -- tei -- ra, ve -- ra
%   Qual -- quer ma -- nei -- ra de amor va -- le o can -- to
%   Qual -- quer ma -- nei -- ra me va -- le can -- tar
  Qual -- quer ma -- nei -- ra de amor va -- le aque -- la
  Qual -- quer ma -- nei -- ra de amor va -- le -- rá
  
%   Pe -- na que pe -- na que coi -- sa bo -- ni -- ta, di -- ga
%   Qual a pa -- la -- vra que nun -- ca foi di -- ta, di -- ga
%   Qual -- quer ma -- nei -- ra de amor va -- le o can -- to
%   Qual -- quer ma -- nei -- ra me va -- le can -- tar
%   Qual -- quer ma -- nei -- ra de amor va -- le aque -- la
%   Qual -- quer ma -- nei -- ra de amor va -- le -- rá
}

letradois = \lyricmode {
Pen -- se no Ha -- i -- ti, re -- ze pe -- % lo_Ha --i -- ti 
(lo)O_Ha -- i -- ti  é  a -- qui 
O_Ha -- i -- ti não é  a -- qui 

}
letratoda = \lyricmode {
  \letraintro
  \letraum
  \letradois
}

\book {
  \bookOutputName "paula_e_bebeto_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \tempo 4 = 150 {
            \transpose d g {
            \intro
            \parteum
%             \skip 256 \bar "paula_e_bebeto_letra" \break
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
          \tempo 4 = 150 {
            \unfoldRepeats {
              \transpose d g {
              \intro
              \parteum
%             \skip 256 \bar "paula_e_bebeto_letra" \break
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
  \bookOutputName "paula_e_bebeto_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose d b {
            \intro
            \parteum
%             \skip 256 \bar "paula_e_bebeto_letra" \break
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
  \bookOutputName "paula_e_bebeto_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose d d {
            \intro
            \parteum
%             \skip 256 \bar "paula_e_bebeto_letra" \break
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

#(set-global-staff-size 30)
\book {
  \bookOutputName "paula_e_bebeto_Eb_notas"
  \header {
     title = \markup {\fontsize #-3 "Paula e Bebeto"}
     composer = \markup {\fontsize #-7 "Milton Nascimento / Caetano Veloso"}
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
          \transpose d e {
            \intro
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
#(set-global-staff-size 20)

\book {
  \bookOutputName "paula_e_bebeto_letra"
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
}
