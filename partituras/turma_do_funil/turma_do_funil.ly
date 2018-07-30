\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title = "A turma do funil (sem ritmo)"
  composer = \markup {\right-column { 
    "Mirabeau,"
    "Milton Oliveira e" 
    "Urgel de Castro"
    " "
                      }
  }
}

#(set-global-staff-size 16)

% ATENÇÃO
% Tá escrita em Gm, mas eu transpnho pra Dm na hora de compilar (bes f)
%

parteum = \relative c' {
	\key g \minor
	\time 2/4
  	\partial 8 d8  \mark \default | g4. bes8 | a gis a c | bes2
	\break

	bes8 bes a g | f8. f16 f8 f | f f d ees | f4 g4 | r8 
	\bar "" \break

	bes a g | fis4 fis8 fis | fis fis g a | bes4 g  |
	\break

	g8 bes g bes | d d a8 d | d c bes a | a g r4 | r4 
	\bar "" \break

}

letraum = \lyricmode {
 	
	Che gou a tur ma do fu nil
	To do mun do be be mas nin guém dor me no pon to
	Ha ha ha ha mas nin guém dor me no pon to 
	Nós é que be be mos e e les que fi cam  ton tos


}


partedois = \relative c' {
  
   \mark \default bes'a fis | r8 fis g a | bes4 g | r8
	\bar "" \break

	bes a g | fis fis fis fis | fis fis g a | c2 | b4 r8
	\bar "" \break

	b c c c bes a a   r 
	\bar "" \break

	bes g bes g bes | d4-> r8
	\bar "" \break

	d | d ees d c | bes c bes a | g4\fermata s8..... \bar "|."



}

letradois = \lyricmode { 

	Eu be bo sem com pro mis so 
	Com meu di nhei ro nin guém tem na da com is so 
	A on de-hou ver gar ra fa 
	A on de-hou ver bar ril 
	Pre sen te-es tá a tur ma do fu nil

	
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "turma_do_funil_Eb"
  \header {
    instrument = "Instrumentos em Eb"
  }
  \score {
    <<
     \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "saxalto" {
	    \transpose bes d' {
	      \parteum
	      \skip 256 \bar "" \break
	      \partedois
	    }
	  }
	  \addlyrics {\letratoda }
	}
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "turma_do_funil_C"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
    <<
     \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "trombone" {
	    \transpose bes f {
	      \parteum
	      \skip 256 \bar "" \break
	      \partedois
	    }
	  }
	  \addlyrics {\letratoda }
	}
    >>
    \layout {}
    \midi {
      \tempo 4 = 145
      \context {
        \Voice 
        \consists "Staff_performer"
      }
    }
  }
}

\book {
  \bookOutputName "turma_do_funil_Bb"
  \header {
    instrument = "Instrumentos em Bb"
  }
  \score {
    <<
     \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "trompete" {
	    \transpose bes g {
	      \parteum
	      \skip 256 \bar "" \break
	      \partedois
	    }
	  }
	  \addlyrics {\letratoda }
	}
    >>
    \layout {}
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "turma_do_funil_Eb_notas"
  \header {
    instrument = "Eb"
  }
  \score {
    <<
     \new TimeSig \compassoseparado
	\new Staff {
	  \accidentalStyle Score.dodecaphonic
	  \new Voice = "saxalto" {
	    \transpose bes d' {
	      \easyHeadsOn
	      \teeny
	      \parteum
	      \skip 256 \bar "" \break
	      \partedois
	    }
	  }
	  \addlyrics {\letratoda }
	}
    >>
    \layout {
      \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    }
  }
}


\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
