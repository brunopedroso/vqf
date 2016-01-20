
\layout{
	indent = 0
	ragged-right = ##t
}


\header{
  title = "O Abre Alas"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }

musica = \relative c' {
	\clef G
	\key d \minor
	
  	r4 f f e
  	e d2 f4
	(f) e d cis
	d1
	
	\break

  	r4 f f e
  	e d2 f4
	(f) e d cis
	d1
	
	\break

	r4 d d c
	c bes2 d4
	(d4) d c bes
	a1
	
	\break

	r4 a4 cis e
  	a e2 a4
	(a) g f e
	d1

}

letra = \lyricmode { 
	Ô -- a -- bre  -- a -- las  -- queeu  -- que -- ro --  pa -- ssar -- 
	Ô -- a -- bre  -- a -- las  -- queeu  -- que -- ro --  pa -- ssar -- 
	Eu --  sou --  da --  li -- ra  -- não --  pos -- so  -- ne -- gar
	Ro -- sa --  de --  ou -- ro  -- é  -- quem  -- vai --  ga -- nhar
}

\score {
	<<
	\new Voice = "um" {
		\transpose bes g' {
			\musica
		}
	}
	\new Lyrics \lyricsto "um" {
        \letra
    }
	>>
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
