\include "../formatoversos.ly"

#(set-global-staff-size 16)

\header{
  title = "Cachaça"
  composer = "Marinósio Trigueiros Filho"
}

voztoda = \relative c' {
	\key bes \major
	\time 2/4

	\repeat volta 2 {

  	r4 \mark \default bes8 d  | f f f f | f4 e8 g~ | g f4.
	r4. f8 | f d f d | f4 e8 ees~ | ees2
	\break
	r4. ees8 | ees ees ees ees | ees4 d8 f~ | f ees4.
	r f8 | f f f g | f4 ees8 d~ | d2 |
	\break
	}
	s2 \bar "" \break 
	 \mark \default f8 f f f | f g f e | g f4. |r4. \bar "" \break
	d8 | f4-> r8 d | f4-> r8 e | ees2 | r2
	\break
	ees8 ees ees ees | ees4 d8 f~ | f ees4. | r8
	\bar "" \break
	f f f | f4 f8 g | f4 ees8 d~ | d2
	\bar "" \break

	f8 f f f | f4 e8 g8~ | g f4. | r2 |
	\break 
	bes8 bes bes bes |bes4 a8 aes~ | aes g4. | r4
	\bar "" \break
	g8 g | g4 a | bes a | g f | a f | g f |ees c | g'4. f8 | r4
	\bar "" \break
	g8 g | g4 a | bes a | g f |
	\break
	a f | g f | ees c| bes bes \bar "|."
	
	
}

letratoda = \lyricmode {
 	
	Vo cê pen sa que ca cha ça-é á gua 
	Ca cha ça não é á gua não 
	Ca cha ça vem do a lam bi que 
	E á gua vem do ri bei rão 

	Po de me fal tar tu do na vi da 
	Ar roz fei jão e pão 
	Po de me fal tar man tei ga 
	E tu do mais não faz fal ta não 

	Po de me fal tar o-a mo or 
	Dis so-eu a té a cho gra ça 
	Só não que ro-é que me fal te 
	A da na da da ca cha ça 
	Só não que ro-é que me fal te 
	A da na da da ca cha ça 


}



letradois = \lyricmode { 

	
}
\book {
  \bookOutputName "cachaca_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes g' {
            \voztoda
          }
        }
        \addlyrics \letratoda
      }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "cachaca_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose bes c' {
            \voztoda
          }
        }
        \addlyrics \letratoda
      }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "cachaca_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose bes bes {
            \voztoda
          }
        }
        \addlyrics \letratoda
      }
	>>
	\layout {}
	\midi {
	  \tempo 4 = 160
	}
	
  }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
