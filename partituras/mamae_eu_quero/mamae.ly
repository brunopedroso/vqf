
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      \override BarLine #'transparent = ##t
    }
}


\header{
  title = "Mamãe eu quero! (sem ritmo)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

  	f f f d bes f' f f d bes f' bes a g f ees d c r r
	
	\break

	f f f ees c f f f ees c f f f a g f ees f ees d c bes
}

letraum = \lyricmode {
 
	Ma -- mãe --  eu  -- que -- ro
	Ma -- mãe --  eu --  que -- ro
	Ma -- mãe --  eu --  que -- ro --  ma -- ma -- ar

	Dá --  a --  chu -- pe -- ta
	Dá --  a --  chu -- pe -- ta
	Dá --  a --  chu -- pe -- ta --  pro --  ne -- nem --  não --  cho -- ra -- ar
}


partedois = \relative c' {
	\key g \minor

	\mark "segunda"
	
	bes bes c d d ees d c b c r r
	
	\break

	c c c d ees ees ees ees f ees d ees f r r r

	\break

	d d d ees f g f ees f g g  r 

	\break

	g g g bes a g f bes a g f ees d c bes bes

}

letradois = \lyricmode { 

	Dor -- me  -- fi -- lhi -- nho --  do --  meu --  co -- ra -- ção
	Pe -- gaa  -- ma -- ma -- dei -- rae  --  vem --  en -- trar --  no --  meu --  cor -- dão
	Eu --  te -- nhou--  mair -- mã --  que --  se --  cha -- ma --  A -- na
	De --  tan -- to --  pis -- car --  o --  o -- lho  -- já --  fi -- cou --  sem --  a --  pes -- ta -- na

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
