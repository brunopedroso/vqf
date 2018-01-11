\include "../formatoversos.ly"
\version "2.18.2"
\header {
  title = "Eu vi mamãe oxum na cachoeira"
  composer = "Umbanda"
  arranjadopor = "Felipe SilverWood Cope"
}
#(set-global-staff-size 18)

parteum = \relative b {
  \clef "treble" 
  \key d \minor
  \time 4/4 
  \tempo 4=100 \partial 4 a4 |
  \repeat volta 2 {
  d8 cis8 d8 e8 f8 e8 f8 g8 | 
  a4. a4. r8 
  \bar "" \break
  a | bes8 a8 g8 a8 bes4 c4 
  }
  \alternative {
    { a2 r4  \bar "" \break a,}
    { a'2 r8  
      \bar "" \break
  a bes a8 | }
  }

  \repeat volta 2 {
    g8. f16 e16 f16 g8~g 
    \bar "" \break
    g a g | f8. e16 d16 e16 f8~f8 
  \bar "" \break
  f8 g f | e8 d8 
  \bar "" \break
  cis d e4 f4 |
  }
  \alternative {
    {e4 d8 a'4 \bar "" \break a8 bes8 a8 }
    {e4 d8 d ~d2\fermata \bar "|." }
  }
}

letraum = \lyricmode {
  Eu vi ma -- mãe o -- xum na ca -- cho -- ei -- ra
  Sen -- ta -- da na bei -- ra do rio
  Eu vi ma -- mãe o -- xum na ca -- cho -- ei -- ra
  Sen -- ta -- da na bei -- ra do rio
  Co -- lhen -- do lí -- rio li -- ru -- lê
  Co -- lhen -- do lí -- rio li -- ru -- lá
  Co -- lhen -- do lí -- rio
  Pra~en -- fei -- tar o seu con -- gá
  Co -- lhen -- do lí -- rio li ru -- lê
  Co -- lhen -- do lí -- rio li -- ru -- lá
  Co -- lhen -- do lí -- rio
  Pra~en -- fei -- tar 
  o seu con -- gá
}

letradois = \lyricmode {
  Ê areia do mar que o céu serena
  Ê areia do mar que o céu serenou
  Na areia do mar mar é areia
  Maré cheia ê mar marejou
}

\book {
  \bookOutputSuffix "Eb"
  \header {
    instrument = "Instrumentos em Eb"
  }
  \score {
     <<
	\new Voice = "sax" {
	  \voiceOne
	  \time 4/4
	  \clef G
	  \transpose g e' {
	    \unfoldRepeats
	    \parteum
	}
	\addlyrics \letraum
	   
    }
  >>
 }
}


\book {
  \bookOutputSuffix "Bb"
  \header {
    instrument = "Instrumentos em Bb"
  }
  \score {
     <<
	\new Voice = "trompete" {
	  \voiceOne
	  \time 4/4
	  \clef G
	  \transpose g a {
	    \unfoldRepeats
	    \parteum
	}
    }
    	\addlyrics \letraum
  >>
 }
}

\book {
  \bookOutputSuffix "C"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
      <<
	\new Voice = "baixo" {
	  \time 4/4
	  \clef G
	  \transpose g g'{
	    \unfoldRepeats
	    \parteum
	}
	}
		\addlyrics \letraum
	>>
	\layout {}
	\midi {}
      }
 }
% \book {
%   \bookOutputSuffix "arranjo_midi"
%   \score {
%   <<
% 	\new Voice = "sax" {
% 	  \set midiInstrument = #"accordion"
% 	  \voiceOne
% 	  \unfoldRepeats
% 	  \parteum
%     }
%  
%     \new Voice = "trombone" {
% 	  \set midiInstrument = #"electric bass (pick)"
% 	  \voiceTwo
% 	  \time 4/4
% 	  \clef F
% 	  \transpose c c,, {
% 	    \unfoldRepeats
% 	    \parteum
% 	}
%       }
%     >>
%     \midi {
% 	  \tempo 4 = 106
% 	    \context {
% 	    \Voice
% 	    \consists "Staff_performer"
% 	  }
% 	}
%       }
