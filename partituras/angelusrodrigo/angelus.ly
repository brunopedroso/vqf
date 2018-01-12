\include "../formatoversos.ly"

\header{
  title = "Ângelus"
  composer = "Milton Nascimento"
}

#(set-global-staff-size 17)


parteum = \relative c'' {
  \time 2/4
  \key c \major
  f8 \mark \default f16  d16~ d4 f8 f16 d16 ~ d4 |
  c8 c16  a~ a4 | r2 |
  d8 d16  c~ c4 | d8 d16 c ~ c4 |
  a8 a16  g~ g4 | r2 |
  a8 a16  g~ g4 | c8 c16 a ~ a4 |
  d8 d16  c~ c4 | f2 |
  a8 a16 f ~ f4 | a8 a16 f ~ f4 |
  f8 f16 d~ d4 | f8 f \grace e16 d8 c8~ | c2 |
  r4 \skip 4 \bar "" \break
  
  
  
}

letraum = \lyricmode {
  
  ne ne num 
}


partedois = \relative c'' {
  \mark \default f8 f16  d16~ d4 f8 f16 d16 ~ d4 |
  c8 c16  a~ a4 | r2 |
  d8 d16  c~ c4 | d8 d16 c ~ c4 |
  a8 a16  g~ g4 | r2 |
  a8 a16  g~ g4 | c8 c16 a ~ a4 |
  d8 d16  c~ c4 | g'2 | r2 |
  a8 a16 f~ f4 | a8 a16 f ~ f4 |
  f8 f16 f d8 f | g2 |r2
  f8 f16 d~ d4 | f8 f16 des ~ des4 |
  f8 f16 d~ d4 | a'2 |
  a8 a16 f~ f4 | a8 a16 g~ g4 |
  f8 f16 f f8 g | f2 \bar "|."
}

letradois = \lyricmode { 
  
  Na na na
  
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "angelus_Eb"
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
% 	      \skip 256 \bar "" \break 
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
  \bookOutputName "angelus_C"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "tromboneC" {
	    \parteum
% 	    \skip 256 \bar "" \break 
	    \partedois
	  }
	\addlyrics {\letratoda}
	}
    >>
    \layout {}
    \midi {
    \tempo 4 = 80
    \context {
    \Voice \consists "Staff_performer"
    }
  }
  }
}

\book {
  \bookOutputName "angelus_Bb"
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
% 	      \skip 256 \bar "" \break 
	      \partedois
	    }
	  }
	  \addlyrics {\letratoda}
	}
    >>
    \layout {}
  }
}
  
\version "2.18.2"  