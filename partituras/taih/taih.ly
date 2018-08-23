\include "../formatoversos.ly"
\include "../nomedasnotas.ly"
\include "../marcaspadronizadas.ly"

#(set-global-staff-size 18)

\header{
 title = "Taí (Pra Você Gostar de Mim)"
 composer = "Joubert de Carvalho"
}

parteum = \relative c' {
	\key g \minor
	
 	s4 \mark \default d | c r |
 	\break
 	ees4 c8 a'~ | a a fis fis | d d c c | bes2
	
	\break

	d4 bes8 g'~ | g g f f | ees ees d d | c2 

	\break

	c4 ees8 d ~ | d4 r | 
	\break
	c ees8 d ~ | d4 c8 c | bes bes a a | g2 |
	\break

}

letraum = \lyricmode { 
	Ta í! 
	eu fiz tu do pra vo cê gos tar de mim
	Ah meu bem não faz as sim co mi go não!
	Vo cê tem, Vo cê tem que me dar seu co ra ção!
}


partedois = \relative c' {
	r8 \mark \default bes d bes | g g bes d | g4 fis8 a ~ | a2
	\break

	r8 d, d c | a a c fis | a4 g8 bes ~ | bes2

	\break

	r8 bes a g | f4 ees8 c | a'4 g8 g ~ |
	\break
	
	g8 d4 bes8  |f'4 ees8 d~  | d c4 bes8 | a4 ees'8 d~ | d2

	\break

	r8 bes' a g | f ees4 c8 | a'4 g8 bes ~ |
	\break
	bes a4 g8 | f4 ees8 d~ |d c4 bes8 | a4 bes8 g | g4\fermata \bar "|."

}

letradois = \lyricmode { 

	Es sa his tó ria de gos tar de-al guém,
	Já é ma ni a que-as pes so as têm!
	Se me-a ju das se Nos so Se nhor,
	Eu não pen sa ri a mais no a mor 
	Se me-a ju das se nos so se nhor 
	Eu não pen sa ri a mais no a mor
}

letratoda = {
 \letraum
 \letradois
}

\book {
 \bookOutputName "taih_Eb"
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
 \bookOutputName "taih_Bb"
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
 \bookOutputName "taih_C"
 \header {
  instrument = "Para instrumentos em C"
 }
 \score {
  <<
   \new TimeSig \compassoseparado
   \new Staff {
    \new Voice = "trombone" {
     \transpose bes bes' {
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
	 \tempo 4 = 120
	}
 }
}

#(set-global-staff-size 30)
\book {
 \bookOutputName "taih_Eb_notas"
 \header {
  instrument = "Para instrumentos em Eb"
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
