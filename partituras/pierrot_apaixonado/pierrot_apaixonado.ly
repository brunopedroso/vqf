\include "../formatoversos.ly"

#(set-global-staff-size 16)

\header{
  title = "Pierrot Apaixonado"
  composer = "Noel Rosa e Heitor dos Prazeres"
}

parteum = \relative c' {
	\key bes \major
  	f8 \mark \default f f f | f4 e8 g~ |g f4. | r2
	\break
	f8 f f f | f4 d8 a'~ |a g4. | r
	\bar "" \break
	g8 |  g g g a |  bes4 a8 g~ |g f 
	\bar "" \break
	f g | a4 g8 f~ | f ees 
	\bar "" \break
	ees f | g4 f8   ees~ | ees d4. | r8
	\bar "" \break
}

letraum = \lyricmode {
 	
	Um pie rrô a pai xo na do 
	Que vi vi a só can tan do 
	Por cau sa deu ma co lom bi na 
	A ca bou cho ran do 
	A ca bou cho ran do


}


partedois = \relative c' {
	\repeat volta 2 {\mark \default g' f g | f g f g | f4 g8  f~ | f2 | r8
	\bar "" \break
	aes g aes | g aes g aes | g4 aes8 g~ | g2 | r4.
	\bar "" \break
	f8 | g g g a | bes4 c8 d~ | d c 
	\bar "" \break
	bes a | g4. f8 | bes g bes g | bes4 c8 bes8~ | }
	\alternative {
	  { bes2\fermata | r8 \bar "" \break  }
	  { bes4\fermata s8.... \bar "|."}
	}

}

letradois = \lyricmode { 

	A co lom bi na-en trou no bo te quim 
	Be beu be beu sa iu as sim as sim 
	Di zen do pi er rô ca ce te 
	Vai to mar sor ve te com o ar le quim
	
	Um gran de-a mor tem sem pre-um tris te fim
	Com o pier rô a con te ceu as sim
	Le van do es se gran de chu te
	Foi to mar ver mu te com a men do im
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "pierrot_apaixonado_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes g' {
            \parteum
            \skip 256 \bar "" \break 
            \unfoldRepeats \partedois
          }
        }
        \addlyrics \letratoda
      }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "pierrot_apaixonado_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose bes c {
            \parteum
            \skip 256 \bar "" \break 
            \unfoldRepeats \partedois
          }
        }
        \addlyrics \letratoda
      }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "pierrot_apaixonado_C"
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
            \skip 256 \bar "" \break 
            \unfoldRepeats \partedois
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

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
