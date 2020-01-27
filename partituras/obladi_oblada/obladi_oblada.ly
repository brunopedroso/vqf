\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title ="Obladi, Oblada"
  composer = "Beatles"
}

#(set-global-staff-size 22)


parteum = \relative c'' {
  \time 4/4 \key bes  \major
	\repeat volta 2 { 
	    d8 d d d d d c bes | 
    	 a c ~ c c ~ c2 | 
	    es8 es es es es es d c | bes2 r |
    	 f'8 f f f f f es d |
	    es f ~ f g r g f es |
	    }
	\alternative{
	    { d f es d c es d c |
	    bes2 r |}
	    {d8 f es d c es d c |}
	    }
}
 
partedois = \relative c'' {
    \repeat volta 2 {
	    bes2 r8 bes d f
    	 r8 bes, d f r bes, d f |
	    r4. bes r8 f ~ | 
	    f es d es d c ~ c bes ~|
	    } 
}


letratoda =\lyricmode {
	Desmond has a barrow in the marketplace Molly is the singer in a band Desmond says to Molly, girl, I like your face And Molly says this as she takes him by the hand Ob la di, ob-la-da, life goes on, bra La-la, how the life goes on Ob-la di, ob-la-da, life goes on, bra La-la, how the life goes on Desmond takes a trolley to the jeweller's store Buys a twenty carat golden ring Takes it back to Molly waiting at the door And as he gives it to her she begins to sing Ob la di, ob-la-da, life goes on, bra La-la, how the life goes on Ob-la di, ob-la-da, life goes on, bra La-la, how the life goes on In a couple of years they have built A home sweet home With a couple of kids running in the yard Of Desmond and Molly Jones Happy ever after in the market place Desmond lets the children lend a hand Molly stays at home and does her pretty face And in the evening she still sings it with the band Ob la di, ob-la-da, life goes on, bra La-la, how the life goes on Ob-la di, ob-la-da, life goes on, bra La-la, how the life goes on In a couple of years they have built A home sweet home With a couple of kids running in the yard Of Desmond and Molly Jones Happy ever after in the market place Molly lets the children lend a hand Desmond stays at home and does his pretty face And in the evening she's a singer with the band Ob la di, ob-la-da, life goes on, bra La-la, how the life goes on Ob-la di, ob-la-da, life goes on, bra La-la, how the life goes on And if you want some fun, sing ob-la-di, bla-da
}


acordesum = \chordmode {
	\time 4/4
%	s2 s2
	bes1 | f	| f | 
	bes1 | bes:7	| es | f
}

acordesdois = \chordmode {
   bes | bes | f f 
	 }

acordetodo = \chordmode {
	\acordesum
	\acordesdois
}

 
\book {
  \bookOutputName "obladi_oblada_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c  a,  {
            \parteum
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
  \bookOutputName "obladi_oblada_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c  c {
            \parteum
             
            \partedois 
          }
        }
 
      }
    >>
    \layout{
    }
  }
    \score {
    <<
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c  c {
          \tempo 4 = 130 {
            \unfoldRepeats {        
             \parteum
            \partedois     
                 
            }
          }
        }
        }
       }
    >>
		\midi {}
  }

}

\book {
  \bookOutputName "obladi_oblada_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose d e  {
            \parteum
            \partedois 
             
          }
        }
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "obladi_oblada_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letraa" {
            \time 4/4
%               \intro
				 \unfoldRepeats
            \parteum
            \break
            \partedois 
            \break
             
             
           }
      }
            \new ChordNames \with {               
               \consists "Bar_engraver"
               }
             \acordetodo
              \new Lyrics
             \lyricsto "letraa" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "obladi_oblada_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose c a,   {
            \easyHeadsOn
            \teeny
            \parteum
           \partedois
          }
        }
 
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



\version "2.18.2"  % necessary for upgrading to future LilyPond versions.