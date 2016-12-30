
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


\header{
  title = "Pierrot Apaixonado (ritmo simplificado)"
  subtitle = "Para instrumentos em C"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

  	f'4 f f f f2 e g1 f
	\break
	f4 f f f  f2 d a'1 g
	\break
	r2. g4   g g g a   bes2 a   g f4 g 
	\break
	a2 g   f ees4 f  g2 f   ees d

}

letraum = \lyricmode {
 	
	Um -- pie -- rrô --  a -- pai -- xo -- na -- do -- 
	Que --  vi -- vi -- a  -- só --  can -- tan -- do -- 
	Por --  cau -- sa --  deu -- ma --  co -- lom -- bi -- naA -- 
	ca -- bou --  cho -- ran -- doA  -- 
	ca -- bou --  cho -- ran -- do


}


partedois = \relative c' {
	\key bes \major

	\mark "segunda"

	r4 g'' f g      f g f g  f2 g  f1
	\break
	r4 aes g aes  g aes g aes   g2 aes2 g1
	\break

	r2. f4   g g g a   bes2 c2   d4 c bes a
	\break
	g2 f2   bes4 g bes g    bes2 c2   bes1

}

letradois = \lyricmode { 

	A  -- co -- lom -- bi -- naen -- trou --  no --  bo -- te -- quim -- 
	Be -- beu --  be -- beu --  sa -- iu --  as -- sim --  as -- sim -- 
	Di -- zen -- do --  pi -- er -- rô --  ca -- ce -- te --  vai --  to -- mar -- 
	Sor -- ve -- te --  com --  o --  ar -- le -- quim
}

\score {
	<<
	\new Voice = "um" {
		\transpose bes bes {
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
		\transpose bes bes {
			\partedois
		}
	}
	\new Lyrics \lyricsto "dois" {
        \letradois
    }
	>>
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
