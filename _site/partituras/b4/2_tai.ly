
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      \override BarLine #'transparent = ##t
    }
}


\header{
  title = "Taí (sem ritmo)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key g \minor
	
	\mark "primeira"	

  	d c ees c a' a fis fis d d c c bes r r r
	
	\break

	d bes g' g f f ees ees d d c r

	\break

	c ees d c ees d  c c bes bes a a g r r

	\break

}

letraum = \lyricmode { 
	Ta -- í -- eu -- fiz -- tu -- do -- pra -- vo -- cê -- gos -- tar -- de -- mim
	Ah -- meu -- bem -- não -- faz as -- sim -- co -- mi -- go -- não
	Vo -- cê -- tem -- vo -- cê -- tem -- que -- me -- dar -- seu -- co -- ra -- ção
}


partedois = \relative c' {
	\key g \minor

	\mark "segunda"
	
	bes d bes g g bes d g fis a r r

	fis d c a a cis e a g bes r r

	\break

	bes a g f ees c a' g g d bes f' ees d c bes a ees' d r

	\break

	bes' a g f ees c a' g bes a g f ees d c bes a bes g

}

letradois = \lyricmode { 

	Es -- sa -- his -- tó -- ria  -- de  -- gos -- tar  -- deal  -- guém -- 
	Já --  é --  ma -- ni -- a --  queas  -- pes -- so -- as  -- têm -- 
	Se --  mea -- ju -- das -- se --  nos -- so  -- se -- nhor -- 
	Eu --  não --  pen -- sa -- ri -- a --  mais  -- no  -- a -- mor -- 
	Se --  mea -- ju -- das -- se --  nos -- so --  se -- nhor -- 
	Eu --  não --  pen -- sa -- ri -- a --  mais  -- no  -- a -- mor
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
