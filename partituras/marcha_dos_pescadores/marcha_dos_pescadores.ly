\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header {
  title = "Marcha dos pescadores"
  composer =  "Dorival Caymmi"
}
#(set-global-staff-size 18)



minhajangada = \relative c' {
  d'8 f g | a g f e d4 a' | g2 \bar "" \break
}

parteum = \relative c' {
	\key d \minor
	\huge
	
  	\partial 2
  	r8 \mark \default
  	\minhajangada
  	r8 f' a8. g16 | f2 r8 e g8. f16 | e2 \bar "" \break
  	r8 \minhajangada
  	r8 bes' d8. c16 | bes2 r8 a c8. bes16 | a2 \bar "" \break
  	r8 d, f g | a g f e d4 a' | g2 \bar "" \break
  	r8 f a g | f e g f e4 f | d2 r4 \bar "" \break
  	

}

letraum = \lyricmode {
 	
	Mi nha jan ga da vai sa ir pro mar
	Vou tra ba lhar 
	Meu bem que rer

	Se Deus qui ser quan do-eu  vol tar  do  mar 
	Um  pei xe  bom  eu  vou  tra zer 

	Meus  com pa nhei ros  tam bém  vão  vol tar 
	E-a  Deus  do  céu  va mos  a gra de cer


}


partedois = \relative c' {

	\mark \default 
	a''| c2. bes4 | e,2 r4 \bar "" \break
	g8 a | \tuplet 5/4 {bes4 a c bes g } | a2 r4 \bar "" \break
	f8 g | a4 g bes a | g4 g8 f e[ e] \bar "" \break
	e f | g4 a f e | d2 r4 \bar "" \break
	f8 g | a4 g bes a | g4 g8 f e[ e] \bar "" \break
	e f | g4 a f e | d2\fermata r \bar "|."


}

letradois = \lyricmode { 

	A deus A deus  
	Pes ca dor  não-es que ça  de  mim 
	Vou re zar  pra  ter  bom  tem po,  meu  nê go,  
	Pra  não  ter  tem po  ru im 
	Vou  fa zer  su a  ca mi nha  ma ci a
	Per fu ma da  dea le crim
	
}

letratoda = \lyricmode {
        \letraum
        \letradois
}

\book {
  \bookOutputName "marcha_dos_pescadores_Eb"
  \header{
  instrument = "Para instrumentos em Eb"
  }
  \score {
	<<
	  \new TimeSig	\compassoseparado
	  \new Staff {
	    \new Voice = "um" {
	      \voiceOne
	      \set midiInstrument = #"alto sax"
	      \transpose bes g {
			\parteum
			\skip 256 \bar "" \break 
			\partedois
		}
	    }
	    \addlyrics { \letratoda}
	  }
	>>
	\layout {}
	}
}

\book {
  \bookOutputName "marcha_dos_pescadores_C"
   \header{
  instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig	\compassoseparado
      \new Staff {
      \new Voice = "trombone" {
        \oneVoice
        \parteum
        \skip 256 \bar "" \break 
        \partedois
        }
	\addlyrics { \letratoda}  
    }
    >>
  }
}

\book {
  \bookOutputName "marcha_dos_pescadores_Bb"
   \header{
  instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new Staff  \with { \remove "Time_signature_engraver" } {
      \new Voice = "trompete" \with {
         \remove "Forbid_line_break_engraver"
      }{
        \oneVoice
        \transpose f g, {
        \parteum
        \skip 256 \bar "" \break 
        \partedois
        }
        \addlyrics {
          \letratoda
        }
      }
      }
    >>
  }
}

\book {
  \bookOutputName "marcha_dos_pescadores_Geral"
  \score {
    <<
      \new Voice = "melodia" {
        \oneVoice
        \parteum
        \skip 256 \bar "" \break 
        \partedois
      }
    >>
    \layout {}
    	\midi {
	  \tempo 4 = 70
	  \context {
	    \Voice
	    \consists "Staff_performer"
	    }
	}
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "marcha_dos_pescadores_Eb_notas"
  \header{
  instrument = "Eb"
  }
  \score {
	<<
	  \new TimeSig	\compassoseparado
	  \new Staff {
	    \accidentalStyle Score.dodecaphonic
	    \new Voice = "um" {
	      \voiceOne
	      \set midiInstrument = #"alto sax"
	      \transpose bes g {
	        \easyHeadsOn
	        \teeny
			\parteum
			\pulalinha
			\partedois
		}
	    }
	    \addlyrics { \letratoda}
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
