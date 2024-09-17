\version "2.18.2"  
\include "../formatoversos.ly"
\include "../nomedasnotas.ly"
\include "../marcaspadronizadas.ly"

\header{
  title = "Emoriô"
  composer = "João Donato"
  source = "Inspirado no Songbook Bossa Nova Volume 4 - Almir Chediak"
}

#(set-global-staff-size 17)


parteum = \relative c'' {
  \time 4/4
  \key d \minor
  \repeat volta 2 {
  d2~\mark \default d8 a8 c8. a16 | g2 r2 |
  g2~g8 f8 a8. f16 | g2 r|
  }
  
  \break
  
  
}

letraum = \lyricmode {
  
  Ê -- E -- mo -- ri -- ô
  Ê -- E -- mo -- ri -- ô
%   Ê E mo ri ô
%   Ê E mo ri ô
  
}


partedois = \relative c' {
   \repeat volta 2 { r2 r8. \bar "" \break \mark \default d16 f[ g8 a16~] \bar "|"
   a16 a8 g16 a4 r8. \bar "" \break d,16 f[ a8 g16~] \bar "|"
   g16 g8 f16 g4 r8. \bar "" \break d16 f[ a8 g16~] \bar "|"
   g16 g8 f16 g4 r8. \bar "" \break f16 d[ c8 d16~] \bar "|"
   }
   \alternative {
     {d2 r }
     {d4 d'8 d f f d4  }
   }
  
}

letradois = \lyricmode { 
  
  E -- mo -- ri -- ô de -- ve ser
  U -- ma pa -- la -- vra na -- gô
  U -- ma pa -- la -- vra de_a -- mor
  Um pa -- la -- dar
 
}

letrapontedois = \lyricmode {
    -ar É -- mo -- ri -- pa -- ô
}

letratres = \lyricmode {
  E -- mo -- riô de -- ve ser
  Al -- gu -- ma coi -- sa de lá
  O Sol, a Lua, o céu
  Pra Oxa -- lá       emo -- ri -- paô  
}

letratoda = {
  \letraum
  \letradois
  \letrapontedois
}

letratodacorde = {
  \letraum
  \letradois
  \letratres
}

\book {
  \bookOutputName "emorioh_Eb"
  \header {
    instrument = "Instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "saxalto" {
	    \transpose bes g' {
	      \parteum
	      \partedois
	    }
	  }
	  \addlyrics {\letratoda}
	}
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "emorioh_C"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "tromboneC" {
	    \parteum
	    \partedois
	  }
	\addlyrics {\letratoda}
	}
    >>
    \layout {}
    \midi {
    \tempo 4 = 140
    \context {
    \Voice \consists "Staff_performer"
    }
  }
  }
}

\book {
  \bookOutputName "emorioh_Bb"
  \header {
    instrument = "Instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "saxalto" {
	    \transpose bes c' {
	      \parteum
	      \partedois
	    }
	  }
	  \addlyrics {\letratoda}
	}
    >>
    \layout {}
  }
}

#(set-global-staff-size 33)

\book {
  \bookOutputName "emorioh_C_notas"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \accidentalStyle Score.dodecaphonic
	  \new Voice = "saxalto" {
	      \easyHeadsOn
	      \teeny
	      \parteum
	      \partedois
		  }
	  \addlyrics {\letratoda}
	}
    >>
    \layout {
    \context {
    \Voice
    \consists \Gravador_nome_notas
    }
    \context {
      \Score 
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
	}

    }
  }
}



\book {
  \bookOutputName "emorioh_Eb_notas"
  \header {
    instrument = "Instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \accidentalStyle Score.dodecaphonic
	  \new Voice = "saxalto" {
	    \transpose bes g' {
	      \easyHeadsOn
	      \teeny
	      \parteum
	      \partedois
	    }
	  }
	  \addlyrics {\letratoda}
	}
    >>
    \layout {
    \context {
    \Voice
    \consists \Gravador_nome_notas
    }
    \context {
      \Score 
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
	}

    }
  }
}


\include "../cifra-formatos.ly"
\include "cifra_emorioh.ly"

#(set-global-staff-size 15)

\book {
  \bookOutputName "emorioh_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
             \parteum
             \partedois
             \partedois
           }
      }
             \new ChordNames \with {
               \consists "Bar_engraver"
                \override BarLine #'stencil = \barracifra
             }
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratodacorde
    >>
           \include "../imprimirsoletras.ly"
  }
}
ew Voice = "saxalto" {
	    \transpose bes g' {
	      \easyHeadsOn
	      \teeny
	      \parteum
	      \partedois
	    }
	  }
	  \addlyrics {\letratoda}
	}
    >>
    \layout {
    \context {
    \Voice
    \consists \Gravador_nome_notas
    }
    \context {
      \Score 
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
	}

    }
  