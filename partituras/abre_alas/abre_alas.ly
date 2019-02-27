\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title = "Ô Abre Alas"
  composer =  "Chiquinha Gonzaga"
}

parteum = \relative c' {
        \time 2/4
	\clef G
	\key d \minor
  	\unfoldRepeats {
  	\repeat percent 2 {r8 f f e |
  	e d4 f8~ |
  	f8 e d cis |
  	d2 |
	%\bar "abre_alas_letratoda"
	\break
  	}
  	}

	r8 d d c |
	c bes4 d8~ |
	d d c bes |
	a2 
	%\bar "abre_alas_letratoda"
	\break

	r8 a cis e |
  	a e4 a8~ |
	a g f e |
	d2\fermata
	\bar "|."

}

letratoda = \lyricmode { 
	Ô  a  bre   a  las   que-eu   que  ro   pas  sar  
	Ô  a  bre   a  las   que-eu   que  ro   pas  sar  
	Eu   sou   da   li  ra   não   pos  so   ne  gar
	Ro  sa   de   ou  ro   é   quem   vai   ga  nhar
}

\book {
  \bookOutputName "abre_alas_Eb"
  \header{
  instrument = "Para instrumentos em Eb"
  }
\score {
	<<
	\new TimeSig \compassoseparado
	\new Staff {
	\new Voice = "um" {
		\transpose bes g' {
			\parteum
		}
	}
	}
	\new Lyrics \lyricsto "um" {
        \letratoda
    }
	>>
}
}

\book {
  \bookOutputName "abre_alas_Bb"
  \header{
  instrument = "Para instrumentos em Bb"
  }
\score {
	<<
        \new TimeSig \compassoseparado
	\new Staff {
	\new Voice = "um" {
		\transpose c d {
			\parteum
		}
	}
	}
	\new Lyrics \lyricsto "um" {
        \letratoda
    }
	>>
}
}
\book {
  \bookOutputName "abre_alas_C"
  \header{
  instrument = "Para instrumentos em C"
  }
\score {
	<<
        \new TimeSig \compassoseparado
        \new Staff {
	\new Voice = "um" {
		\transpose c c {
			\parteum
		}
	}
	\addlyrics {
        \letratoda
    }
        }
	>>
	\layout {}
	\midi {
	\tempo 4 = 80
	\context {
	    \Voice
	    \consists "Staff_performer"
	    }
	}
}
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "abre_alas_Eb_notas"
  \header{
  instrument = "Eb"
  }
\score {
	<<
	\new TimeSig \compassoseparado
	\new Staff {
	  \accidentalStyle Score.dodecaphonic
	\new Voice = "um" {
		\transpose bes g' {
		  \easyHeadsOn
		  \teeny
			\parteum
		}
	}
	}
	\new Lyrics \lyricsto "um" {
        \letratoda
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

\include "cifra_abre_alas.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
#(set-global-staff-size 15)

\book {
  \bookOutputName "abre_alas_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letratoda" {
%                \intro
             \parteum
%              \partedois
           }
      }
             \new ChordNames \with {               
               \consists "Bar_engraver"
               }
             \acordetodo
             \new Lyrics
             \lyricsto "letratoda" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
