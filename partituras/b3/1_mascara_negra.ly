
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


\header{
  title = "Máscara Negra (ritmo simplificado)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


parteum = \relative c' {
	\key bes \major
	
	\mark "primeira"	

  	r2 d'4 c   d2 f,   f4 ees' d c   d2 f,2  r1
	f4 d' c bes   fis d' c bes   d2 g,2 
	\break
	r2 c4 d   ees ees ees ees   f ees d c   d d ees e   f2 f4 d   f2 ees4 c   g2 a2 bes1

}

letraum = \lyricmode {
 	
	Quan -- to --  ri -- so -- oh --  quan -- taa -- le -- gri -- a --  
	Mais --  de --  mil --  pa -- lha -- ços --  no --  sa -- lã -- ão  -- 
	Ar -- le -- quim --  es -- tá  -- cho -- ran -- do --  pe -- loa -- mor --  da --  Co -- lom -- bi -- na -- 	No --  mei -- o --  da --  mul -- ti -- dão	


}


partedois = \relative c' {
	\key bes \major

	\mark "segunda"

	d2 ees4 f   bes,2 c4 d   ees2 f4 g   c,2 d4 ees   f2 g4 a   f2 g4 a  c2 bes4 a   bes1
	\break
	c2 bes4 a    g2 a4 bes    f1   r4 g g a   ees1   r4 f f g   d2 c4 bes   c1
	
	\break
	d2 ees4 f   bes,2 c4 d    ees2 f4 g   c,2 d4 ees   f2 g4 a  f2 g4 a  c2 bes4 a   aes2 g2
	\break

	r2 c4 d    ees2 f   d4 d4 bes4 c4   d2 ees   c a4 bes    c2 d  b1 r1
	\break
	r2 c4 d    ees2 f   d4 d4 bes4 c4   d2 ees   c a4 bes    c2 d  bes1


}

letradois = \lyricmode { 

	Foi -- bom --  te --  ver --  ou -- tra --  vez -- 
	Tá --  fa -- zen -- do --  um --  a -- no -- 	Foi --  no --  car -- na -- val --  que --  pas -- sou -- 
	
	Eu --  sou --  a -- que -- le --  Pier -- rô -- 	Que --  tea -- bra -- çou --  e --  te --  bei -- jou -- meu --  a -- mor -- 
	Na --  mes -- ma --  más -- ca -- ra --  ne -- gra  -- 
	Quees -- con -- deo --  teu --  ros -- to -- 
	Eu --  que -- ro --  ma -- tar --  a --  sau -- da -- de -- 
	
	Vou --  bei -- jar -- tea -- go -- ra -- 	Não --  me --  le -- vea --  mal  -- 
	Ho -- jeé --  car -- na -- val -- 	
	Vou --  bei -- jar -- tea -- go -- ra --  
	Não --  me --  le -- vea --  mal  -- 
	Ho -- jeé --  car -- na -- val	


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
