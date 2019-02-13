\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title = "Moliendo Cafe"
  composer = "Jose Manzo Perroni"
}


#(set-global-staff-size 24)
\language "portugues" 

% Neste arquivo, as partes basicas foram escritas ja em Mib
% Nomes das notas, tons etc em portugues

parteum = \relative do' {
	\key do \major
	\time 4/4
	\set Timing.beamExceptions = #'()
	\set  Timing.baseMoment = #(ly:make-moment 1/4)
	\set Timing.beatStructure = #'(1 1 1 1)
	\partial 4  s16 \mark \default 
	mi la si |
	\repeat volta 2 {
	do do8 do16~ do do8 do16~ do16 do8 do16~ do16 do16 si la |  do la8. r2 r16 \pulalinha
	mi la si | do do8 do16~ do do8 do16~ do do8 do16~ do do16 si do | re4 r2 r8 \pulalinha
	fa,16 la | re re8 re16~re re8 re16~ re re8 re16~re mi re mi | 
	re dos8 do16 ~ do2 r16 \pulalinha
	mi, la si | do do8 do16~do do re do si si8 si16~ si si do si | 
	}
	\alternative {
		{la4 r16 la' la la la4 \pulalinha r16 mi la si |}
		{la4 \tuplet 3/2 {r8 sols8 la } las4 la \pulalinha}
	}
			
	}


letraum = \lyricmode { 
 }


partedois = \relative do''  { 
	\repeat volta 2 {
		\mark \default re8 mi16 re~re mi re8 fa4 \pulalinha 
		r16 mi re mi |
	}
	\alternative {
		{\tuplet 3/2 {re8 dos do~} do4 r2 |}
		{\tuplet 3/2 {re8 dos do~} do4 r4 r16 \pulalinha si si si }
	}
	\repeat unfold 13 {si16} do re do | si \pulalinha mi, sols si re mi sol fas fa8. mi16 
	r^"inicio" mi, la si |
	
} 

letradois = \lyricmode { 
}
letratres = \lyricmode {
}

letratoda = {
  \letraum
  \letradois
  \letradois
  \letratres
}

\book {
  \bookOutputName "moliendo_cafe_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose sol sol {
            \parteum
%             \skip 256 \bar "moliendo_cafe_letra" \break
            \partedois
          }
        }
%        \addlyrics \letratoda
      }
    >>
    \layout {
	\context {
		\Score
		\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
		}
	}
  }
}

\book {
  \bookOutputName "moliendo_cafe_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose mi sol' {
            \parteum
%             \skip 256 \bar "moliendo_cafe_letra" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
	\context {
		\Score 
		\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
		}
	}
    \midi {
    \tempo 4 = 170
    }
  }
}

\book {
  \bookOutputName "moliendo_cafe_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose sol do' {
            \parteum
%             \skip 256 \bar "moliendo_cafe_letra" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
	\context {
		\Score
		\override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
		}
	}
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "moliendo_cafe_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose sol sol {
            \easyHeadsOn
            \teeny
            \parteum
%             \skip 256 \bar "moliendo_cafe_letra" \pulalinha
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
    \context {
      \Score 
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
	}
    \context {
      \Voice
      \consists \Gravador_nome_notas
    }
  }
}
}
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
#(set-global-staff-size 20)

\book {
  \bookOutputName "moliendo_cafe_letra"
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
}
