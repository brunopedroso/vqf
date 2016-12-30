
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      \override BarLine #'transparent = ##t
    }
}


\header{
  title = "Saca rolhas (sem ritmo)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

  	d g ges f e ees  r r c c ees g fis g fis g fis g ees d
	\break

	bes bes d g fis g fis g fis g gis a fis   r r r
	\break

	d a' g fis    r1 d4 bes' a g 
	\break

	bes a g f ees d    r r 
	
}

letraum = \lyricmode {
 
	As -- á -- guas --  vão --  ro -- lar
	Gar -- ra -- fa --  chei -- a --  eu --  não --  que -- ro --  ver --  so -- brar
	Eu --  pas -- soa  -- mão --  no --  sa -- ca --  sa -- ca --  sa -- ca --  ro -- lhas
	E --  be -- boa  -- té --  me --  a -- fo -- gar
	Dei -- xaas --  á -- guas --  ro -- lar

}


partedois = \relative c' {
	\key g \minor

	\mark "segunda"

	g' a bes a g f ees c d ees    r r
	\break

	g a bes a g g d bes c d    r r
	\break

	d g fis g fis g fis g gis a fis   r
	\break

	d a' g g fis r   d bes' a a g   r
	\break

	bes a g f ees d    r r

}

letradois = \lyricmode { 

	Sea --  po -- lí -- cia --  por --  is -- so --  me --  pren -- der
	Mas --  na --  úl -- ti -- ma --  ho -- ra --  me --  sol -- tar
	Eu --  pe -- goo --  sa -- ca --  sa -- ca --  sa -- ca --  ro -- lhas
	Nin -- guém --  mea  -- gar -- ra
	Nin -- guém  -- mea -- gar -- ra
	
	Dei -- xaas --  á -- guas --  ro -- lar
}

\score {
	<<
	\new Voice = "um" {
		\transpose bes g' {
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
		\transpose bes g' {
			\partedois
		}
	}
	\new Lyrics \lyricsto "dois" {
        \letradois
    }
	>>
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
