
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


\header{
  title = "Quem Sabe Sabe (ritmo simplificado)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key g \minor
	
	\mark "primeira"	

  	r4 d4 g f ees c2. r4 ees g ees d1
	\break
	r4 d4 ees d c a2. r4 a bes c d1
	\break

  	r4 d4 g f ees c2. r4 ees g ees d1
	\break
	r4 d4 ees d c a2. r4 d ees fis g1
	\break

}

letraum = \lyricmode {
 	
	
	Quem -- sa -- be --  sa -- be -- 
	Co -- nhe -- ce --  bem -- 
	Co -- moé --  gos -- to -- so -- 
	Gos -- tar --  deal -- guém

	Quem -- sa -- be --  sa -- be -- 
	Co -- nhe -- ce --  bem -- 
	Co -- moé --  gos -- to -- so -- 
	Gos -- tar --  deal -- guém

}


partedois = \relative c' {
	\key g \minor

	\mark "segunda"

	\repeat volta 2 {

	bes''1 (bes2) a2 g d r r  
	\break
	bes' a4 g f2 ees4 d c1
	\break
	r2. d4   ees c2.  r4 g' f ees   d1
	\break
	r2. g4   g2 g4 g  g2 fis4 g   a1 

	}
}

letradois = \lyricmode { 

	Aí -- mo -- re -- na -- 
	Dei -- xaeu --  gos -- tar --  de --  vo -- cê -- 
	Bo -- ê -- mio --  sa -- be --  be -- ber -- 
	Bo -- ê -- mio --  tam -- bém --  tem --  que -- rer
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
