\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

%#(set-global-staff-size 17)

\header{
  title = "Aurora"
  composer = \markup {
    \right-column {
      "Mário Lago e"
      "Roberto Roberti"
      " "
    }
  }
}


parteum = \relative c' {
	\key bes \major
	\time 2/4
	\repeat volta 2 {
  	\partial 4  f'8 \mark \default f  | f g f e  | g f4. ~ | f8 
  	
  	\bar "aurora_letra" \break
  	
  	d f bes  | g2 ~ | g4 ees | d8 c4. | r2 | r4

	\bar "aurora_letra" \break

	ees8 ees  | ees f ees d |  f ees4. | r8 
	
	\bar "aurora_letra" \break 
	
	c ees a |  g2 | r4  a4 | c8 bes4. | r4  
	}
}

letraum = \lyricmode {

  Se vo -- cê fos -- se sin -- ce -- ra 
  Ô ô ô ô, Au -- ro -- ra
  Ve -- ja só que bom que e -- ra 
  Ô ô ô ô, Au -- ro -- ra
}


partedois = \relative c' {
	r8 \mark \default d'8  | ees ees g g | ees ees g g | ees d c d | ees4
	\bar "aurora_letra" \break
	r8 ees |d d f f d d f f d c bes c d4
	\bar "aurora_letra" \break
	r8 d |  c b c ees |  g g r d  | c bes c d  |  f f r4 |
	\bar "aurora_letra" \break
	r8 d f bes |  g2 | r4  a4 | c8 bes4. | r2 | 


}

letradois = \lyricmode { 

Um lin -- do_a -- par -- ta -- men -- to 
Com por -- tei -- ro_e_e -- le -- va -- dor
E ar re -- fri -- ge -- ra -- do 
Pa -- ra_os di -- as de ca -- lor
Ma -- da -- me_An -- tes do no -- me Vo -- cê te -- ri --a_a -- go -- ra
Ô-- ô-- ô-- ô  Au -- ro -- ra
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "aurora_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "um" {
		\transpose bes g {
			\parteum
			\skip 256 \bar "aurora_letra" \break 
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
  \bookOutputName "aurora_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "um" {
		\transpose bes bes {
			\parteum
			\skip 256 \bar "aurora_letra" \break 
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
  \bookOutputName "aurora_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "um" {
		\transpose bes c {
			\parteum
			\skip 256 \bar "aurora_letra" \break 
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
  \bookOutputName "aurora_Eb_notas"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "um" {
		\transpose bes g {
      \easyHeadsOn
       \teeny
			\parteum
			\skip 256 \bar "aurora_letra" \break 
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

\include "cifra_aurora.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

#(set-global-staff-size 15)

\book {
  \bookOutputName "aurora_letra"
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
