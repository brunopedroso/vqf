
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


\header{
  title = "Mulata Bossa Nova (sem ritmo)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key f \major
	
	\mark "primeira"	

  	r2 r4. c'8 f f f f a a   r8 c,  f f f f a a r4   r1 a2 f4 a4 a2 g2

	bes4 a g a8 bes   a4 g f2   a g4 a4   g2 f

}

letraum = \lyricmode {
 	
	Mu -- la -- ta --  Bos -- sa --  no -- va --  ca -- iu --  no --  hul -- ly --  gul -- ly -- 
	E --  só --  dá --  e -- la -- 
	Ei --  ei --  ei --  ei --  ei --  ei --  ei --  ei --  
	Na --  pas -- sa -- re -- la	


}


partedois = \relative c' {
	\key f \major

	\mark "segunda"

	bes''4 bes a g d1
	a'4 a g f c1

	\break

	f4 f g a bes bes
	r4 c8 bes   a4 f d f   g2 c 


}

letradois = \lyricmode { 

	A --  mu -- la -- taes -- tá -- 
	chei -- a --  de --  fiu --  fiu -- 
	Es -- pan -- tan -- doas --  loi -- ras -- 
	Eas --  mo -- re -- nas --  do --  Bra -- si -- il
}

\score {
	<<
	\new Voice = "um" {
		\transpose bes g {
			\parteum
		}
	}
	\new Lyrics \lyricsto "um" {
        \letraum
    }
	>>
}

\markup { \vspace #2 }

\score {
	<<
	\new Voice = "dois" {
		\transpose bes g {
			\partedois
		}
	}
	\new Lyrics \lyricsto "dois" {
        \letradois
    }
	>>
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
