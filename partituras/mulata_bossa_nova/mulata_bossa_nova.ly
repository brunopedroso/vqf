\include "../formatoversos.ly"
%#(set-global-staff-size 16)

\header{
  title = "Mulata Bossa Nova (sem ritmo)"
  composer = "João Roberto Kelly"
}

parteum = \relative c' {
	\key f \major
	
  	\partial 8 {c'8 \mark \default} | f f f f | a a   r8 
  	\bar "" \break
  	c, | f f f f | a a r4  | r2 | 
  	\break
  	a2 | f4 a8 a ~ | a g4. | r2 |
  	\break

	bes4 a g a8 bes   a4 g f2   
	\break
	a g4 a4   g2 f

}

letraum = \lyricmode {
 	
	Mu la ta Bos sa no va ca iu no hul ly gul ly 
	E só dá e la 
	Ei ei ei ei ei ei ei ei 
	Na pas sa re la	


}


partedois = \relative c' {
        \mark \default
	bes''4 bes | a g | d2 ~ |  d2
	a'4 a | g f | c2 ~ | c2

	\break

	f4 f g a bes bes
	r8 c4 bes8 |  a4 f | d f |  g2 c_> \fermata


}

letradois = \lyricmode { 

	A mu la ta-es tá 
	chei a de fiu fiu 
	Es pan tan do-as loi ras 
	E-as mo re nas do Bra si il
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "mulata_bossa_nova_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes g {
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
  \bookOutputName "mulata_bossa_nova_Bb"
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
  \bookOutputName "mulata_bossa_nova_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose bes bes, {
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
	  \tempo 4 = 140
	}
  }
}
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
