
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


\header{
  title = "Pastorinhas (ritmo simplificado)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key g \minor
	
	\mark "primeira"	

  	r4 d' bes' cis,    a'2. g4~   g1    r4 d g d    f2. ees4~  ees1
    r2 c4 d    ees2 g4 fis    a2 a2   r2 fis4 g   a2 d4 a   d1

	r4 d4 c bes   bes2. ees,4~   ees1  r2 a4 c   bes2 a4 fis   a2. g4~   g1
	r2 d'4 c   bes2 a4 g   e1  a1   r2 fis4 g   a2 fis4 a  g1

}

letraum = \lyricmode {
 	
	Aes -- tre -- la --  d'al -- va --  no  -- céu  -- des -- pon -- ta -- 	E --  a --  lu -- aan -- da  -- ton -- ta --  com --  ta -- ma -- nhoes -- plen -- dor -- 
	Eas --  pas -- to -- ri -- nhas --  pra --  con -- so -- lo --  da --  lu -- a -- 	Vão  -- can -- tan -- do --  na --  ru -- a  -- lin -- dos --  ver -- sos --  dea -- mor


}


partedois = \relative c' {
	\key g \major

	\mark "segunda"

	r2 b' d b'  a1    g2. b4   a2 g4 fis   a g e e    g1      fis1 

	r2 d e c'  b1    a2. c4   b1         r4 a4 g fis   a g fis g  b2 g  d 

	b2 d b'    a1    g1       r4 g fis g   d'2 b4 a   a1  g1

	r4 g g g   g2 a4 bes   b1   d1   b2 g4 b   a2 fis4 a  g1

}

letradois = \lyricmode { 

	Lin -- da  -- pas -- to -- ra --  mo -- re -- na --  da --  cor --  de --  ma -- da -- le -- na --  
	Tu --  não --  tens --  pe -- na --  de --  mim -- 	Que --  vi -- vo --  ton -- to --  com --  o --  teu --  o -- lhar -- 	Lin -- da --  cri -- an -- ça --  tu --  não --  me --  sais --  da --  lem -- bran -- ça --  Meu --  co -- ra -- ção --  não --  se --  can -- sa -- 	De --  sem -- pre --  sem -- pre --  tea -- mar

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
