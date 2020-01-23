\include "../formatoversos.ly"
\include "../nomedasnotas.ly"
\include "../marcaspadronizadas.ly"

#(set-global-staff-size 16)

\header{
  title = "Mamãe eu quero!"
  composer = "Vicente Paiva e Jararaca"
}

pulalinha = {
  \cadenzaOn
  \stopStaff
  \markup {"mamae_eu_quero_letra"}
  \bar "mamae_eu_quero_letra" \break
  \startStaff
  \cadenzaOff
}

parteum = \relative c' {
	\key bes \major
	\time 2/4
	r8 \mark \default f8 f f | d bes4. | r8 f' f f | d bes4. |
	\break
	r4 f' | bes a8 g8~ | g f ees d ~ | d c4.
	
	\break

	r8 f f f | ees c4. | r8 f f f | ees c4. |
	\break
	r8 f f f | a8. g16 f8 ees | f ees d c | bes2
	\break
}

letraum = \lyricmode {
 
  Ma -- mãe eu que -- ro, 
  ma -- mãe eu que -- ro
  Ma -- mãe eu que -- ro ma -- ma -- ar!
  Dá a chu -- pe -- ta, 
  dá a chu -- pe -- ta, 
  Dá a chu -- pe -- ta pro be -- bê não cho -- ra-- ar!
}


partedois = \relative c' {
	\mark \default  bes4 bes8 c | d4 d | ees8 d c b | c2 |
	\break

	c8 c c d | ees ees ees ees | f ees d ees | f2

	\break

	d8 d d ees | f2 | g8 f ees f | g8 g8

	\bar "mamae_eu_quero_letra" \break

	g8 g | g bes a g | f bes a g | f ees d c | bes bes4.\fermata \bar "|."
}

letradois = \lyricmode { 
  Dor -- me fi -- lhi -- nho do meu co -- ra -- ção
  Pe -- ga_a ma -- ma -- dei -- ra_e vem en -- trar no meu cor -- dão
  Eu te -- nho uma ir -- mã que se cha -- ma Ana
  De tan -- to pis -- car o o -- lho já fi -- cou sem a pes -- ta -- na
  
%   Eu olho as pe -- que -- nas, mas da -- que -- le jei -- to
%   E te -- nho mui -- ta pe -- na não ser cri -- an -- ça de pei -- to
%   Eu te -- nho uma ir -- mã que é fe -- no -- me -- nal
%   Ela é da bos -- sa e o ma -- ri -- do é um bo -- çal
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "mamae_eu_quero_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
	<<
	\new TimeSig \compassoseparado
	\new Voice = "saxalto" {
		\transpose bes g' {
			\parteum
			\pulalinha
			\partedois
		}
	}
	\addlyrics \letratoda
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "mamae_eu_quero_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
	<<
	\new TimeSig \compassoseparado
	\new Voice = "trompete" {
		\transpose bes c' {
			\parteum
			\pulalinha
			\partedois
		}
	}
	\addlyrics \letratoda
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "mamae_eu_quero_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
	<<
	\new TimeSig \compassoseparado
	\new Voice = "trombone" {
		\transpose bes bes {
			\parteum
			\pulalinha
			\partedois
		}
	}
	\addlyrics {\letratoda}
	>>
	\layout {}
	\midi {
	  \tempo 4 = 150
	}
  }
}

\book {
  \bookOutputName "mamae_eu_quero_Eb_notas"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
	<<
	\new TimeSig \compassoseparado
	\new Staff {
       \accidentalStyle Score.dodecaphonic
	\new Voice = "saxalto" {
		\transpose bes g' {
       \easyHeadsOn
       \teeny
			\parteum
			\pulalinha
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



\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
\include "cifra_mamae_eu_quero.ly"
#(set-global-staff-size 14)

\book {
  \bookOutputName "mamae_eu_quero_letra"
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
