\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 16)

\header{
  title = "Me dá um dinheiro aí"
  composer = \markup {
    \right-column {
      "Ivan Ferreira,"
      "Homero Ferreira e"
      "Glauco Ferreira"
      " "
    }
  }
}

%% ATENCAO - musica importada em Fá maior, transposicao realizada ao gerar partiruras %%
%% no Score %%

intro = \relative c' {
  \key f \major 
  \time 2/4
  
  r8 \mark "Intro" f8 a8 c8 \bar "||"
  f4 f8 f8 |
  f8 e8 g8 f8 |
  d4 r8 f8 |
  f8 f8 e8 d8 |
  c4 c8 c8 |
  d8 d8 e8 e8 |
  f4 e4 |
  d4 c4 |
  \break
}

parteum = \relative c' {
  \mark \default 
  \repeat volta 2 {
    f'2 |
    r8 d8 d8 c8 |
    e4 r8 
    \bar "me_da_um_dinheiro_aih_letra" \break
    bes8 |bes16 bes8 bes16 bes8 a8 |
    c4 r8 
    \bar "me_da_um_dinheiro_aih_letra" \break
    bes8 |
  }
  \alternative {
    {bes16 bes8 bes16 bes8 a8 | c2~ | c2}
    {\break c16 c8 c16 d8 e8 |f2 |\break}
  } 
}

letraintro = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _
}
letraum = \lyricmode {
  Ei, vo cê a í
  Me dá um di nhei ro-a í!
  Me dá um di nhei ro-a í!
  
  %Repetido para a segunda parte do ritornello
  dá um di nhei ro-a í!
}


partedois = \relative c'' {
  \mark \default r8 a4 c8 |
  d2 |
  r8 a8 a8 c8 |
  d2 |
  r8 g,8 g8 bes8 |  
  d4. g,8 |
  g8 bes8 bes8 d8 |
  d8 c4. |
  r8 f,8 a8 c8 |
  f4 r8 f8 |
  f8 e8 g8 f8 |   d4 
  \pulalinha
  r8 f8 |
  f8 f8 e8 d8 |
  c8 f8 
  \pulalinha
  r8 c8 |
  c16 c8 c16 d8 e | f2
}

letradois = \lyricmode { 
  Não vai dar?
  Não vai dar não?
  Vo cê vai ver a gran de con fu sã ão
  Que_eu vou fa zer be ben do_a -- té ca ir
  Me dá, me dá, me dá, oi!
  Me dá um di nhei ro -- a í!
}

letratoda = {
  \letraintro
  \letraum
  \letradois
}

\book {
  \bookOutputName "me_da_um_dinheiro_ai_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
      \new Voice = "saxalto" {
		\transpose f g {
		  \intro
		  \pulalinha
		  \parteum
		  \pulalinha
		  \partedois
		}
	}
	\addlyrics \letratoda
      }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "me_da_um_dinheiro_ai_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
      \new Voice = "trompete" {
		\transpose f c {
		  \intro
		  \pulalinha
		  \parteum
		  \pulalinha
		  \partedois
		}
	}
	\addlyrics \letratoda
      }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "me_da_um_dinheiro_ai_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
      \new Voice = "trombone" {
		\transpose f bes, {
		  \intro
		  \pulalinha
		  \parteum
		  \pulalinha
		  \partedois
		}
	}
	\addlyrics \letratoda
      }
	>>
	\layout {}
	\midi {
	  \tempo 4 = 150
	}
  }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

#(set-global-staff-size 38)
\book {
  \bookOutputName "me_da_um_dinheiro_ai_Eb_notas"
   \header{
  }
  \score {
  <<
    \new TimeSig	\compassoseparado
    \new Staff {
           \accidentalStyle Score.dodecaphonic
      \set Staff.instrumentName = "Canto"
      \context Staff <<
        \context Voice = "melodia" { 
            \easyHeadsOn
            \teeny
		\transpose f g {
		  \voiceOne 
		  \parteum 
		  \partedois 
		}
        }
      \addlyrics { \letratoda}
      >>
      
    }

  >>
  
  \layout {
             \apertacompasso
    \context {
      \Voice
      \consists \Gravador_nome_notas
    } 	
}
  }
}

letracantada = \lyricmode {
  \letraum
  \letradois
}
#(set-global-staff-size 20)

\book {
  \bookOutputName "me_da_um_dinheiro_ai_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
%                \intro
             \unfoldRepeats
             \parteum
             \partedois
           }
      }
  %           \new ChordNames 
  %           \acordetodo
             \new Lyrics
             \lyricsto "letra" \letracantada
    >>
           \include "../imprimirsoletras.ly"
  }
}
