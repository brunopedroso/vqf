
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


\header{
  title = "Cabeleira do Zezé (ritmo simplificado)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

	\repeat bla 1 { f' f f f   g g f ees   d2. ees4   f2 ees4 d   c2. d4    ees2 d4 ees   f1  }
}

letraum = \lyricmode {
 	
	O -- lhaa --  ca -- be -- lei -- ra --  do --  Ze -- zé -- 
	se -- rá --  quee -- le --  é  -- 
	se -- rá --  quee -- le --  é

}


partedois = \relative c' {
	\key bes \major

	\mark "segunda"

	r2. g''4     g2 ees4 d      c2 d4 ees   g2 f
	\break
	r2. ees4   ees2 c4 bes    a2 bes4 c   d2 r2
	\break
	r2. d4     c2 c4 d        ees2 d4 c   g'2 f
	\break
	r2. f4      e2 e4 e        e2 f4 g     a2 r2

	\break
	\repeat bla 1 {
	f4. f8 f4 g4
	r1
	ees4. ees8 ees4 f4
	r1 }
	

}

letradois = \lyricmode { 

	Se -- rá --  quee -- le --  é --  bos -- sa --  no -- va -- 
	Se -- rá --  quee -- le --  é --  Ma -- o -- mé -- 
	Pa -- re -- ce --  que --  é --  trans -- vi -- a -- do -- 
	Mas --  is -- soeu --  não  -- sei --  see -- le --  é -- 

	Cortao --  ca -- belo --  dele
	Cortao --  ca -- belo --  dele

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
'#(set-global-staff-size 20)

\book {
  \bookOutputName "cabeleira_do_zeze_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
               \intro
             \parteum
             \partedois
           }
      }
  %           \new ChordNames 
  %           \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}'
