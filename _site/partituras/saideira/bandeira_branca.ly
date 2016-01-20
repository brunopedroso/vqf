
\layout{
	indent = 0
	ragged-right = ##t

    %\context {
    %  \Score
    %  \override BarLine #'transparent = ##t
    %}
}


\header{
  title = "Bandeira Branca"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }

parteum = \relative c' {
	\key d \minor
	
	\repeat volta 2 {

  	r4 d
	e f
	e d8 a8 
	(a2)

	r4 d4
	e f
	g1
	
	\break

	r4 g4
	f e
	bes' a
	f d
	a' g
	f e
	d1
	
	}

}

partedois = \relative c' {
	\key d \minor

  	r4 r8 f8 f f f g
	f8 e8 (e8) bes'8 (bes2)
 	
	r4 r8 e,8 e e e f 
	e8 d8 (d8) a'8 (a2) 
	
	\break

	r4 r8 d,8 e f (f) g
	(g4) r8 g f e (e) bes'
	(bes4) a f e
	d1

}

letraum = \lyricmode { 
	Ban -- dei -- ra --  bran -- caa  -- mor -- 
	Não --  pos -- so --  mais -- 
	Pe -- la --  sau -- da -- de --  
	que --  mein -- va -- deeu --  pe -- ço --  paz
}

letradois = \lyricmode { 
	Sau -- da -- de --  mau --  dea -- mor  -- dea -- mor -- 
	Sau -- da -- de --  dor --  que --  dói --  de -- mais -- 
	Vem  -- meu --  a -- mor -- 
	Ban -- dei -- ra --  bran -- caeu --  pe -- ço --  paz
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
