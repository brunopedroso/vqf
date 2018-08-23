
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


\header{
  title = "Jardineira (ritmo simpl.)"
  subtitle = "Para instrumentos em C"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

  	r4 f f f   f d bes d   f2 g2 ees2 c2
	\break
	r4 g' g g   g2 ees4 f   g2 a2 f1
	\break

	\repeat volta 2 {
		r4 bes, bes bes   bes bes bes d   f2 bes,2   a2 a4 d   f2 a,2 
		g4 g g bes  d2 bes f1
	}
	\break	

}

letraum = \lyricmode {
 	
	O -- Jar -- di -- nei -- ra --  por -- quees -- tás --  tão --  tris -- te -- 
	Mas --  o --  que --  foi --  que --  tea  -- con -- te -- ceu -- 
	Foi --  a --  ca -- mé -- lia --  que --  ca -- iu  -- do --  ga -- lho -- 
	Deu --  dois --  sus -- pi -- ros --  e --  de -- pois --  mor -- reu

}


partedois = \relative c' {
	\key bes \major

	\mark "segunda"

	bes'1 a2 g f2. ees4 c1 g'1 f2 d bes1
	\break

	\repeat volta 2 {
		r4 f' f f    ees d c bes   a g' g g   f2 d4 bes 
		bes bes d f  ees d c c     c d c bes  bes1
	}


}

letradois = \lyricmode { 

	Vem --  jar -- di -- ne -- ei -- ra  -- vem --  meu --  a -- mor -- 
	Não --  fi -- que --  tris -- te --  quees -- se --  mun -- doé --  to -- do --  seu -- 
	Tu --  és --  mui -- to --  mais --  bo -- ni -- ta --  quea  --  ca -- mé -- lia --  que --  mor -- reu
	
}

\score {
	<<
	\new Voice = "um" {
		\transpose bes bes' {
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
		\transpose bes bes' {
			\partedois
		}
	}
	\new Lyrics \lyricsto "dois" {
        \letradois
    }
	>>
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
