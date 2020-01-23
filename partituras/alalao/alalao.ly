\include "../formatoversos.ly"
\include "../nomedasnotas.ly"
\include "../marcaspadronizadas.ly"

\header{
  title = "Allah-lá-ô"
  composer = "Haroldo Lobo e Nassara"
}

#(set-global-staff-size 17)


parteum = \relative c'' {
  \time 2/4
  \key bes \major
  r8 \mark \default d8  d d | f4 d8 bes | ees c4 a8 | bes2 |
  
  
  \break
  
  r8 d d d | f4 d8 bes | ees4 c8 a | bes2 |
  
  \break
  
  r8 d ees d | c8. c16 ees8 d | c c d ees | f f4 
  \bar "alalao_letra" \break
  
  d8 | d d ees d | c c ees d | c c d ees | f f4. |
  \break
  
  r8 d d d | f4 d8 bes | ees4  c8 a | bes2 |
  \break
}

letraum = \lyricmode {
  
  A -- llah -- lá -- ô   ô   ô   ô   ô   ô   ô 
  Mas  que  ca -- lor  ô   ô   ô  ô   ô   ô
  
  A -- tra -- ves -- sa -- mos  o  de -- ser -- to  do  Sa --ha -- ra
  O  sol  es -- ta -- va  quen -- te  e  quei -- mou  a  nos -- sa  ca -- ra
  
  A -- llah -- lá -- ô   ô   ô   ô   ô   ô   ô 
}


partedois = \relative c'' {
   r4  \mark \default d4 | f f | d bes | g4 g |   
  
  \bar "alalao_letra" \break
  
  r8 d' c bes | c8. d16 c8 bes | c d c bes | d4->
  
  \bar "alalao_letra" \break
  
  r8 f | f4 r8 f | f4 r8 f | f d c bes | d4 r | r2 
  \bar "alalao_letra" \break
  
  bes4 f8 bes8~ | bes f bes f | bes2 | r 
  
  \bar "alalao_letra" \break
  
  d4 bes8 d8~ | d bes d bes | d2 | r4 
  
  \bar "alalao_letra" \break
  
  d | f2 | r8 g f d | bes2 | 
  
  
}

letradois = \lyricmode { 
  
  Vi -- e -- mos  do  E -- gi -- to,
  E  mui -- tas  ve -- zes  nós  ti -- ve -- mos  que  re -- zar
  A -- llah   A -- llah   A -- llah,   meu  bom  A -- llah!
  Man -- de  á  -- gua  pra  Io -- iô
  Man -- de  á  -- gua  pra  Ia -- iá
  A -- llah,   meu  bom  A -- llah
  
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "alalao_Eb"
  \header {
    instrument = "Instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "saxalto" {
	    \transpose bes g {
	      \parteum
	      \skip 256 \bar "alalao_letra" \break 
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
  \bookOutputName "alalao_C"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "tromboneC" {
	    \parteum
	    \skip 256 \bar "alalao_letra" \break 
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
  \bookOutputName "alalao_Bb"
  \header {
    instrument = "Instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "saxalto" {
	    \transpose bes c' {
	      \parteum\skip 256 \bar "alalao_letra" \break 
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
  \bookOutputName "alalao_Eb_notas"
  \header {
    instrument = "Instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
       \accidentalStyle Score.dodecaphonic
	  \new Voice = "saxalto" {
	    \transpose bes g {
            \easyHeadsOn
            \teeny
	      \parteum
	      \skip 256 \bar "alalao_letra" \break 
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

  
\version "2.18.2"  

\include "cifra_alalao.ly"

#(set-global-staff-size 15)

\book {
  \bookOutputName "alalao_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
             \parteum
             \partedois
           }
      }
             \new ChordNames \with {
               \consists "Bar_engraver"
             }
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
