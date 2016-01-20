
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      \override BarLine #'transparent = ##t
    }
}


\header{
  title = "Índio quer apito (sem ritmo)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

	g' f g f g d g g f f d c c c d g, g g g   r
	

}

letraum = \lyricmode {
 	
	Ê -- ê --  ê --  ê --  ê --  ê -- 
	Ín -- dio --  quer --  a -- pi -- to  -- se --  não --  der --  pau --  vai --  co -- mer

}


partedois = \relative c' {
	\key g \minor

	\mark "segunda"

	g' g g g f g f g d bes    r    bes bes c d c c d c bes a g   r r
	\break

	g' g g g f g f g d bes    r    bes bes c cis d d d e fis g g   r r


}

letradois = \lyricmode { 

	Lá  -- no --  ba -- na -- nal --  mu -- lher --  de --  bran -- co -- 
	Deu --  pa -- ra --  ín -- dio --  co -- lar --  es -- qui -- si -- to -- 
	Ín -- dio --  viu --  pre -- sen -- te --  mais --  bo -- ni -- to -- 
	Eu --  não --  quer --  co -- lar --  ín -- dio --  quer --  a -- pi -- to

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
