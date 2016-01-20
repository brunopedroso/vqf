
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


\header{
  title = "Cachaça (ritmo simplificado)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

	\repeat volta 2 {

  	r2 d4 ees  f f f f  f2 e g1 f2.
	f4  f d f d  f2 e ees1
	\break
	r2. ees4 ees ees ees ees ees2 d f1 ees2.
	f4  f f f g f2 ees d1
	\break

	}

	f4 f f f f g f ees g2 f2
	r2. d4 f2. d4 f2. e4 ees1
	\break
	ees4 ees ees ees ees2 d f1 ees1
	r4 f f f f2 f4 g f2 ees d1
	\break

	f4 f f f f2 ees g1 f1
	bes2 bes4 bes bes2 a aes1 g
	\break
	r2 g4 g  g2 a bes a g f a f g f ees c g'1 f
	\break
	r2 g4 g  g2 a bes a g f a f g f ees d bes bes
	\break
	
	
}

letraum = \lyricmode {
 	
	Vo -- cê --  pen -- sa --  que --  ca -- cha -- çaé --  á -- gua -- 
	Ca -- cha -- ça --  não --  é --  á -- gua --  não -- 
	Ca -- cha -- ça --  vem --  do --  a -- lam -- bi -- que -- 
	E --  á -- gua --  vem --  do --  ri -- bei -- rão -- 

	Po -- de --  me --  fal -- tar --  tu -- do  -- na --  vi -- da -- 
	Ar -- roz -- fei -- jão --  e  -- pão -- 
	Po -- de --  me --  fal -- tar --  man -- tei -- ga -- 
	E --  tu -- do --  mais --  não --  faz --  fal -- ta --  não -- 

	Po -- de --  me --  fal -- tar --  oa -- mo -- or  --  
	Dis -- soa -- té  -- a -- cho --  gra -- ça -- 
	Só --  não --  que -- roé --  que --  me --  fal -- te -- 
	A --  da -- na -- da --  da --  ca -- cha -- ça 
	Só --  não --  que -- roé --  que --  me --  fal -- te -- 
	A --  da -- na -- da --  da --  ca -- cha -- ça 


}


partedois = \relative c' {
	\key bes \major

	\mark "segunda"

	bes'

}

letradois = \lyricmode { 

	
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


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
