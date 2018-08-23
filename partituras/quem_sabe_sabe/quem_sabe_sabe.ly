\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 22)

\header{
 title = "Quem Sabe Sabe"
 composer = "Jota Sandoval e Carvalhinho"
 year = 1955
}

parteum = \relative c' {
	\key g \minor
	\repeat volta 2 {
	r8 \mark \default d8 g8. f16 | ees8 c4. |
	\break
	r8 ees g8. ees16 | d2
	\break
	r8 d ees8. d16 | c8 a4. | 
	\break
	}
	\alternative {
	  {r8 a bes8. c16 | d2| \break}
	  {r8 d e8. fis16 | g2}
	}
	r2 \break



}

letraum = \lyricmode {
 	
	
	Quem sa be sa be 
	Co nhe ce bem 
	Co mo-é gos to so 
	Gos tar de-al guém
	
	%Adicionado pela volta
	Gos tar de-al guém

}


partedois = \relative c' {
 
 \mark \default

	\repeat volta 2 {

	bes'2 (bes4) a4 g4. d8 ~ | d2 
	\break
	\tuplet 3/2 {bes'4 a g} | \tuplet 3/2 {f ees d} | c2 |r4.
	\bar "" \break
	d8  ees c4. r8 g' f ees  d2 | r4.
	\bar "" \break
	g8 | \tuplet 3/2 {g4 g g} | \tuplet 3/2 {g fis g} | a2 

	}
}

letradois = \lyricmode { 

	Ai, mo re na 
	Dei xa-eu gos tar de vo cê 
	Bo ê mio sa be be ber 
	Bo ê mio tam bém tem que rer
}

letratoda = {
 \letraum
 \letradois
}

\book {
 \bookOutputName "quem_sabe_sabe_Eb"
 \header {
  instrument = "Para instrumentos em Eb"
 }
 \score {
  <<
   \new TimeSig \compassoseparado
   \new Staff {
    \new Voice = "sax alto" {
		\transpose bes g' {
			\parteum
			\pulalinha
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
 \bookOutputName "quem_sabe_sabe_Bb"
 \header {
  instrument = "Para instrumentos em Bb"
 }
 \score {
  <<
   \new TimeSig \compassoseparado
   \new Staff {
    \new Voice = "trompete" {
		\transpose bes c' {
			\parteum
			\pulalinha
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
 \bookOutputName "quem_sabe_sabe_C"
 \header {
  instrument = "Para instrumentos em C"
 }
 \score {
  <<
   \new TimeSig \compassoseparado
   \new Staff {
    \new Voice = "trombone" {
		\transpose bes bes {
			\parteum
			\pulalinha
			\partedois
		}
	}
	\addlyrics \letratoda
  }
	>>
	\layout {}
	\midi {
	 \tempo 4 = 95
	}
 }
}

#(set-global-staff-size 30)

\book {
 \bookOutputName "quem_sabe_sabe_Eb_notas"
 \header {
  instrument = "Eb"
 }
 \score {
  <<
   \new TimeSig \compassoseparado
   \new Staff {
    \new Voice = "sax alto" {
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
 }
}
}



\version "2.18.2" % necessary for upgrading to future LilyPond versions.
