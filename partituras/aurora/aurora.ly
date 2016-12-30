
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


\header{
  title = "Aurora (ritmo simplificado)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

  	r2 f'4 f   f g f e   g f2.  r4 d4 f bes   ges2. r4  ees2 d c2. r4

	\break

	r2 ees4 ees   ees f ees d   f ees2.  r4 c4 ees a   g2. r4  a2 c bes2.
	
}

letraum = \lyricmode {
 	
	Se -- vo -- cê  -- fos -- se  -- sin -- ce -- ra --  ô  -- ô --  ô --  ô --  Au -- ro -- ra -- 
	Ai --  meu --  Deus --  que --  bom --  que --  e -- ra --  ô --  ô  -- ô  -- ô  -- Au -- ro -- ra


}


partedois = \relative c' {
	\key bes \major

	\mark "segunda"

	r2. d'4 ees ees g g ees ees g g ees d c d ees2 r2
	\break
	r2. ees4 d d f f d d f f d c bes c d2 r2
	\break
	r2. ees4   d c d ees   g g r d   c bes c d    f f2.
	\break
	r4 d4 f bes   g2. r2  a c bes~ bes2 r2


}

letradois = \lyricmode { 

	Um -- lin -- doa -- par -- ta -- men -- to  -- com  -- por -- tei -- roee -- le -- va -- dor -- 
	E --  ar --  re -- fri -- ge -- ra -- do --  pa -- raos --  di -- as --  de --  ca -- lor -- 
	Mo -- re -- naan -- tes --  do --  no -- me --  vo -- cê --  te -- ri -- aa -- go -- ra -- 
	ô --  ô --  ô --  ô --  Au -- ro -- ra
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
