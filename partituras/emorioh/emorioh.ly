\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

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
  
  Ê E mo ri ô
  Ê E mo ri ô
%   Ê E mo ri ô
%   Ê E mo ri ô
  
}


partedois = \relative c' {
   \repeat volta 2 { r2 r8. \bar "emorioh_letra" \break \mark \default d16 f g8 a16~ |
   a16 a8 g16 a4 r8. \bar "emorioh_letra" \break d,16 f a8 g16~|
   g16 g8 f16 g8 r4. \bar "emorioh_letra" \break d16 f a8 g16~|
   g16 g8 f16 g8 r4. \bar "emorioh_letra" \break f16 d c8 d16~ |
   }
   \alternative {
     {d2 r }
     {d4 d'8 d f f d  }
   }
  
}

letradois = \lyricmode { 
  
  E mo ri ô de ve ser
  U ma pa la vra na gô
  U ma pa la vra de_a mor
  Um pa la dar
  -ar É mo ri pa ô
  
}

letratoda = {
  \letraum
  \letradois
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
	      \skip 256 \bar "emorioh_letra" \break 
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
	    \skip 256 \bar "emorioh_letra" \break 
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
	      \parteum\skip 256 \bar "emorioh_letra" \break 
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
	      \skip 256 \bar "emorioh_letra" \break 
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
\version "2.18.2"  #(set-global-staff-size 20)

\book {
  \bookOutputName "emorioh_letra"
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
