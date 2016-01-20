
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      \override BarLine #'transparent = ##t
    }
}


\header{
  title = "Alalaô (sem ritmo)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

  	d d d f d bes ees c a bes r r

	\break

	d d d f d bes ees c a bes r r

	\break
	
	d ees d c c ees d c c d ees f f r r r

	\break

	d d d ees d c c ees d c c d ees f f r

	\break

	d d d f d bes ees c a bes r r
}

letraum = \lyricmode {
 
	A -- la -- la -- ô  -- ô --  ô  -- ô  -- ô  -- ô  -- ô 
	Mais  -- que --  ca -- lor --  ô  -- ô  -- ô -- ô --  ô --  ô

	A -- tra -- ves -- sa -- mos --  o  -- de -- ser -- to --  do --  Sa -- a -- ra
	O --  sol --  es -- ta -- va  -- quen -- te --  e --  quei -- mou --  a --  nos -- sa --  ca -- ra

	A -- la -- la -- ô --  ô --  ô --  ô --  ô --  ô --  ô 
}


partedois = \relative c' {
	\key g \minor

	\mark "segunda"
	
	d f f d bes g g r

	\break

	d' c bes c d c bes c d c bes d

	\break

	f f f f f f d c bes d r r

	\break

	bes f bes f bes f bes r 

	\break

	d bes d bes d bes d r 

	\break

	d f g f d bes r r 
	

}

letradois = \lyricmode { 

	Vi -- e -- mos --  do --  E -- gi -- to
	E --  mui -- tas --  ve -- zes --  nós --  ti -- ve -- mos --  que --  re -- zar
	A -- lá  -- A -- lá --  A -- lá --  meu --  bom --  A -- lá
	Man -- de --  á -- gua --  pra --  io -- iô
	Man -- de --  á -- gua --  pra --  ia -- iá
	A -- lá --  meu --  bom --  A -- lá

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
