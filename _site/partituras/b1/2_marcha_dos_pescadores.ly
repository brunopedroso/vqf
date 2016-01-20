
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


\header{
  title = "Marcha dos pescadores (ritmo simplificado)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key d \minor
	
	\mark "primeira"	

  	r4 d f g a g f e d2 a' g1
	r4 f a4. g8 f1
	r4 e g4. f8 e1 

	\break

  	r4 d f g a g f e d2 d' c1
	r4 bes d4. c8 bes1
	r4 a c4. bes8 a1 

	\break

  	r4 d, f g a g f e d2 a' g1
	r4 f a g f e g f e2 f d1

}

letraum = \lyricmode {
 	
	Mi -- nha -- jan -- ga -- da -- vai -- sa -- ir -- pro -- mar
	Vou -- tra -- ba -- lhar -- 
	Meu -- bem -- que -- rer

	Se -- Deus -- qui -- ser -- quan -- doeu --  vol -- tar --  do --  mar -- 
	Um --  pei -- xe --  bom --  eu --  vou --  tra -- zer -- 

	Meus --  com -- pa -- nhei -- ros --  tam -- bém --  vão --  vol -- tar -- 
	Ea --  Deus --  do --  céu --  va -- mos --  a -- gra -- de -- cer


}


partedois = \relative c' {
	\key d \minor

	\mark "segunda"

	r2 a'2 c1~ c2 bes e,1~ e2 g4 a bes2 a c bes4 g a1~ a2 r2

	\break

	r2 f4 g a2. g4 bes2 a g g4 f e e e f g2 a f e d

	\break

	r2 f4 g a2. g4 bes2 a g g4 f e e e f g2 a f e d


}

letradois = \lyricmode { 

	A -- deus -- A -- deus --  pes -- ca -- dor --  nàoes -- que -- ça --  de --  mim -- 
	Vou -- re -- zar --  pra --  ter --  bom --  tem -- po --  meu --  nê -- go --  pra --  não --  ter --  tem -- po  -- ru -- im -- 
	Vou --  fa -- zer --  su -- a  -- ca -- mi -- nha --  ma -- ci -- a --  per -- fu -- ma -- da --  dea -- le -- crim
	
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
