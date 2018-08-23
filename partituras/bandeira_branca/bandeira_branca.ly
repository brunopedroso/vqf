\include "../formatoversos.ly"
#(set-global-staff-size 21)

\header{
 title = "Bandeira Branca"
 composer = "Max Nunes e Laércio Alves"
}

parteum = \relative c' {
	\key d \minor
	
	\repeat volta 2 {

 	\partial 4 {d4 \mark \default } | e f | e d8 a8 ~ | a2 | r4
	\bar "" \break 
	d4 | e f | g2 ~ | g2 | r4
	
	\bar "" \break
	g4 | f e | bes' a |
	\break
	f d | a' g | f e | d2 ~ | d
	
	}
	r4.
	\bar "" \break

}

partedois = \relative c' {
        f8 | f f f g | f8 e8 ~ e8 bes'8 ~ | bes2 | r4.
 	
 	\bar "" \break
	
	e,8 | e e e f | e8 d8 ~ d8 a'8 ~ | a2 | r4
	
	\bar "" \break

	a, | d a8 bes~ |bes4 
	\bar "" \break
	d4 e f a g
	 e f8 d~ |d2
	

}

letraum = \lyricmode { 
	Ban dei ra bran ca-a mor 
	Não pos so mais 
	Pe la sau da de 
	Que me-in va de-eu pe ço paz
}

letradois = \lyricmode { 
	Sau da de mal de-a mor de-a mor 
	Sau da de dor que dói de mais 
	Vem meu a mor!
	Ban dei ra bran ca-eu pe ço paz
}

letratoda = {
 \letraum
 \letradois
}

\book {
  \bookOutputName "bandeira_branca_Eb"
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
  }
}

\book {
  \bookOutputName "bandeira_branca_Bb"
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
  }
}

  \bookOutputName "bandeira_branca_C"
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
      \tempo 4 = 105
    }
  }
}

\version "2.18.2" % necessary for upgrading to future LilyPond versions.
