\include "../formatoversos.ly"

\header{
  title = "The Fool on the Hill"
  composer = "John Lennon & Paul McCartney"
  source = "http://musescore.com/user/1667071/scores/1018946"
}

#(set-global-staff-size 17)


parteum = \transpose g c {
  \relative b' {
  \clef "treble" \key g \major \numericTimeSignature\time 4/4 | % 1
  \tempo 4=68 R1 ||
    | % 5
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
      b8 \mf -. b8 ( -. b8 ) -.
    }
    b2 b4 | % 6
    c8 d8 ( e8 ) e2 c8 | % 7
    d8 e16 ( -. fis16 ) -. g8 g8 g8 g8 fis8 d8 | % 8
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
      e8 ( a8 ) a8
    }
    a2 d,4 | % 9
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
      e8 ( a8 ) a8
    }
    a8 g8 b8 a4 e16 d16 | \barNumberCheck #7
    e8 g8 g8 e8 g8 ( e4 ) d8 | % 11
    \once \override TupletBracket #'stencil = ##f
    \times 2/3  {
      e8 ( a8 ) g8
    }
    a8 g8 a8 ( b8 ) g8 ( e8 ) | % 12
}
}

letraum = \lyricmode {

Day after day, a lone-on a hill
The man with_the foo lish grin is sit ting perfec tly still
No body wants to know him
They can see that he's just a fool
But he_ne ver gi ves an_an swer_But_the   

}


partedois = \transpose g c {
  \relative g'' {
    \key bes \major g8 ( d8 ) es8 ( c8 ) d4 c8 ( d8 ) | % 13
    es4 d8 ( c8 ) c4 d8 ( es8 ) | % 14
    f4 es8 ( d8 ) es4 f8 ( g8 ) | % 15
    a4 bes8 ( a8 ) g2 | % 16
  \bar "|." 
  }
}

letradois = \lyricmode { 
 
Fool on_the hill
Sees_the sun going down
And_the eyes in_his head
See_the world spinning round
  
}

letraresto = \lyricmode {
  
His head in a cloud
The man with a foo lish grin is tal king per fec tly loud
But no bo dy wants to hear him
They can see that he's just a fool
But he never gives an answer
fool on the hill
Sees the sun going down
And the eyes in his head
See the world spinning round
But nobody wants to know him
They can see that he's just a fool
But he never gives an answer
But the fool on the hill
Sees the sun going down
And the eyes in his head
See the world spinning round
But the fool on the hill
Sees the sun going down
And the eyes in his head
See the world spinning round

}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "fool_on_the_hill_Eb"
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
 	      \skip 256 \bar "" \break 
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
  \bookOutputName "fool_on_the_hill_C"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "tromboneC" {
	    \parteum
 	    \skip 256 \bar "" \break 
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
  \bookOutputName "fool_on_the_hill_Bb"
  \header {
    instrument = "Instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "saxalto" {
	    \transpose bes c' {
 	      \parteum\skip 256 \bar "" \break 
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
