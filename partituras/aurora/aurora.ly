\include "../formatoversos.ly"

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
  	
  	\bar "" \break
  	
  	d f bes  | g2 ~ | g4 ees | d8 c4. | r2 | r4

	\bar "" \break

	ees8 ees  | ees f ees d |  f ees4. | r8 
	
	\bar "" \break 
	
	c ees a |  g2 | r4  a4 | c8 bes4. | r4  
	}
}

letraum = \lyricmode {
 	
	Se vo cê  fos se  sin ce ra ô  ô ô ô Au ro ra 
	Ai meu Deus que bom que e ra ô ô  ô  ô  Au ro ra


}


partedois = \relative c' {
	r8 \mark \default d'8  | ees ees g g | ees ees g g | ees d c d | ees4
	\bar "" \break
	r8 ees |d d f f d d f f d c bes c d4
	\bar "" \break
	r8 d |  c b c ees |  g g r d  | c bes c d  |  f f r4 |
	\bar "" \break
	r8 d f bes |  g2 | r4  a4 | c8 bes4. | r2 | 


}

letradois = \lyricmode { 

	Um lin do-a par ta men to  com  por tei ro-e-e le va dor 
	E ar re fri ge ra do pa ra-os di as de ca lor 
	Mo re na-an tes do no me vo cê te ri a-a go ra 
	ô ô ô ô Au ro ra
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
			\skip 256 \bar "" \break 
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
			\skip 256 \bar "" \break 
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
			\skip 256 \bar "" \break 
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
			\skip 256 \bar "" \break 
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
