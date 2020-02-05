\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
% da transcrição de Karine Dias e base rítmica de partitura da internet  
% arquivo baixado como partituradebanda-170208215103.pdf
#(set-global-staff-size 17)

\header{
  title = "Andar com Fé"
  composer = "Gilberto Gil"
}


parteum = \relative d'' {
    \key g \major \time 4/4
    d16 d8 b16 e16 e16 d8 r8. b16 e16 e8 d16 | 
    d16 d8 c16 a8 r8 r2 | 
    d16 d8 b16 e16 e16 d8 r8. b16 e16 e8 d16 | 
    d16 d8 c16 a8 r8 r2 | 
    b'16 b8 g16 c16 c16 b8 r8. g16 c16 c8 b16 | 
    b16 b8 a16 fis2. | 
    b16 b8 g16 c16 c16 b8 r8. g16 c16 c8 b16 | 
    b16 b8 a16 fis2. | 
}

letraum = \lyricmode {

  An -- dá com fé eu vou
  Que a fé não cos -- tu -- ma faiá
  An -- dá com fé eu vou
  Que a fé não cos -- tu -- ma faiá
  An -- dá com fé eu vou
  Que a fé não cos -- tu -- ma faiá
  An -- dá com fé eu vou
  Que a fé não cos -- tu -- ma faiá  
}


partedois = \relative c'' {
\repeat volta 2 {
         
        b'16 g8 g16 d8 d16 b16 ~ b16 d8 b'16 ~ b16 g8 g16 |
        
        a8 fis8 fis8 d8 ~ d4 a'4 | 
        g2 \times 2/5 { e4 fis g fis e }
        | 
        d2. r4 } 
}

letradois = \lyricmode { 

  Que_a fé tá na mu -- lher
  A fé tá na co -- bra co -- ral
  Oh! Oh!
  Num pe -- da -- ço de pão
  
%   A fé tá na ma -- ré
%   Ta na lâ -- mi -- na de um pu -- nhal
%   Oh! Oh!
%   Na luz, na es -- cu -- ri -- dão
%   
%   An -- dá com fé eu vou
%   Que a fé não cos -- tu -- ma faiá
%   Olê -- lê!
%   An -- dá com fé eu vou
%   Que a fé não cos -- tu -- ma faiá
%   Olê -- lê!
%   An -- dá com fé eu vou
%   Que a fé não cos -- tu -- ma faiá
%   Olê -- lê!
%   
%   A fé tá na ma -- nhã
%   A fé tá no anoi -- te -- cer
%   Oh! Oh!
%   No ca -- lor do ve -- rão
%   
%   A fé tá vi -- va e sã
%   A fé tam -- bém tá prá mor -- rer
%   Oh! Oh!
%   Tris -- te na so -- li -- dão
%   
%   An -- dá com fé eu vou
%   Que a fé não cos -- tu -- ma faiá
%   Oh Mi -- ni -- na!
%   An -- dá com fé eu vou
%   Que a fé não cos -- tu -- ma faiá
%   Oh Mi -- ni -- na!
%   An -- dá com fé eu vou
%   Que a fé não cos -- tu -- ma faiá
%   Oh Mi -- ni -- na!
%   
%   Cer -- to ou er -- ra -- do até
%   A fé vai on -- de quer que eu vá
%   Oh! Oh!
%   A pé ou de avião
%   
%   Mes -- mo a quem não tem fé
%   A fé cos -- tu -- ma acom -- pa -- nhar
%   Oh! Oh!
%   Pe -- lo sim, pe -- lo não
%   
%   An -- dá com fé eu vou
%   Que a fé não cos -- tu -- ma faiá
%   Olê -- lê!
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "andar_com_fe_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "um" {
		\transpose d g {
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
  \bookOutputName "andar_com_fe_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "um" {
		\transpose d bes {
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
  \bookOutputName "andar_com_fe_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "um" {
		\transpose d c {
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
  \bookOutputName "andar_com_fe_Eb_notas"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "um" {
		\transpose a c {
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

\include "cifra_andar_com_fe.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

#(set-global-staff-size 15)

\book {
  \bookOutputName "andar_com_fe_letra"
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
   