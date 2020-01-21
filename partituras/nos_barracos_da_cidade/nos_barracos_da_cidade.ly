\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
% da transcrição de Karine Dias e base rítmica de partitura da internet  
% arquivo baixado como partituradebanda-170208215103.pdf
#(set-global-staff-size 17)

\header{
  title = "Nos barracos da cidade"
  composer = "Gilberto Gil"
}


parteum = \relative d'' {
    \key f \major \time 4/4 | 
        \repeat volta 2 {
          r8 r16 f16 a bes a8 f4 f16 a16  f8 | 
          g2  d2  |
          r8 r16 f16 a bes a8 f4 f16 a16  f8 | 
          g1 |  

        }
        \break
    \repeat volta 2 {
        r4 a8 a16 a16 ~ a8 g8 g8 f16 g16 ~ | 
        g8 a4. r2 | 
        r4 a8 a a a g g f16 g16 ~ | 
        g8 f4. r2 |
        r4 a8 a16 a16 ~ a8 g8 g8 f16 g16 ~ | 
        g8 a4. r2 |
    }
}

letraum = \lyricmode {
  - - - - - - - - 
  - - - - - - - - 
  - - - 
  
}


partedois = \relative c'' {
    \repeat volta 2 {
        | 
        s8. s16 s2. c2 r2 | 
        s1 \bar "||"
        s8. s16 s16*9 c'2 r2 | 
        s64*67 d,2 g2 es2 -. f2 |
        
        }
}

letradois = \lyricmode { 
  Nos bar -- ra -- cos da ci -- da -- de
  Nin -- guém mais tem ilu -- são
  No po -- der da au -- to -- ri -- da -- de
  De to -- mar a de -- ci -- são
  E o po -- der da au -- to -- ri -- da -- de, se po -- de, não faz ques -- tão
  Mas se faz ques -- tão, não
  Con -- se -- gue
  En -- fren -- tar o tu -- ba -- rão
  
  Ôôô , ôô
  Gen -- te es -- tú -- pi -- da
  Ôôô , ôô
  Gen -- te hi -- pó -- cri -- ta
  E o go -- ver -- na -- dor pro -- me -- te,
  Mas o sis -- te -- ma diz não
  Os lu -- cros são mui -- to gran -- des,
  Gran -- des... ie, ie
  E nin -- guém quer abrir mão, não
  Mes -- mo uma pe -- que -- na par -- te
  Já se -- ria a so -- lu -- ção
  Mas a usu -- ra des -- sa gen -- te
  Já vi -- rou um alei -- jão
  
  % Ôôô , ôô
%   Gen -- te es -- tú -- pi -- da
%   Ôôô , ôô
%   Gen -- te hi -- pó -- cri -- ta
%   
%   Ôôô , ôô
%   Gen -- te es -- tú -- pi -- da
%   Ôôô , ôô
%   Gen -- te hi -- pó -- cri -- ta
%   Ôôô , ôô
%   Gen -- te es -- tú -- pi -- da
%   Ôôô , ôô
%   Gen -- te hi -- pó -- cri -- ta
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "nos_barracos_da_cidade_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "um" {
		\transpose c e, {
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
  \bookOutputName "nos_barracos_da_cidade_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "um" {
		\transpose a c {
			\parteum
			  
			\partedois
		}
	}
	\addlyrics \letratoda
    }
	>>
	\layout {}
	\midi {
	\tempo 4 = 140}
  }
}


\book {
  \bookOutputName "nos_barracos_da_cidade_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "um" {
		\transpose f a {
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

#(set-global-staff-size 40)

\book {
  \bookOutputName "nos_barracos_da_cidade_Eb_notas"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "um" {
		\transpose c c {
      \easyHeadsOn
       \teeny
			\parteum
			  
			\partedois
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

\include "cifra_nos_barracos_da_cidade.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

#(set-global-staff-size 15)

\book {
  \bookOutputName "nos_barracos_da_cidade_letra"
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
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
