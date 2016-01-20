
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      \override BarLine #'transparent = ##t
    }
}


\header{
  title = "A turma do funil (sem ritmo)"
  subtitle = "Para instrumentos em Eb"
}

\markup { \vspace #2 }


% ATENÇÃO
% Tá escrita em Gm, mas eu transpnho pra Dm na hora de compilar (bes f)
%

parteum = \relative c' {
	\key g \minor
	
	\mark "primeira"	

  	d8 g bes a gis a c bes
	\break

	bes bes a g f f f f f d ees f g g    r r
	\break

	bes a g fis fis fis fis fis g a bes g   r2
	\break

	g8 bes g bes d d a d d c bes a a g

}

letraum = \lyricmode {
 	
	Che -- gou --  a --  tur -- ma --  do --  fu -- nil
	To -- do --  mun -- do --  be -- be --  mas --  nin -- guém --  dor -- me --  no --  pon -- to
	Ha --   ha --   ha --   ha --   mas --   nin --  guém --   dor --  me --   no --   pon --  to --  
	Nós --  é --  que --  be -- be -- mos --  e --  e -- les --  que --  fi -- cam  -- ton -- tos


}


partedois = \relative c' {
	\key g \minor

	\mark "segunda"

	bes' a fis fis g a bes a
	\break

	bes a g fis fis fis fis fis fis g a c b    r r r
	\break

	b c c c bes a a   r 
	\break

	bes g bes g bes d     r r
	\break

	d d ees d c bes c bes a g  



}

letradois = \lyricmode { 

	Eu --  be -- bo --  sem --  com -- pro -- mis -- so -- 
	Com --  meu --  di -- nhei -- ro --  nin -- guém --  tem --  na -- da --  com --  i -- sso -- 
	A -- on -- dehou -- ver --  gar -- ra -- fa -- 
	A -- on -- dehou -- ver --  bar -- ril -- 
	Pre -- sen -- tees -- tá --  a --  tur -- ma --  do --  fu -- nil

	
}

\score {
	<<
	\new Voice = "um" {
		\transpose bes d' {
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
		\transpose bes d' {
			\partedois
		}
	}
	\new Lyrics \lyricsto "dois" {
        \letradois
    }
	>>
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
