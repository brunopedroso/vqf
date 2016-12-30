
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      \override BarLine #'transparent = ##t
    }
}


\header{
  title = "Circo (sem ritmo)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }

\transpose bes g {

\relative c'' {
	\clef G
	\key f \major
	
  	c d e f e d c a
	c d e f e f fis g

	\break

	d e f g f e d c 
	g' f e d e f d g



}

}


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
