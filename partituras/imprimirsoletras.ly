\version "2.18.2"

\layout {
         #(layout-set-staff-size 6)
         indent = #25
         short-indent = #25
        \set majorSevenSymbol = \markup { 7+ }
        \override NoteHead #'transparent = ##t
         \override KeySignature #'transparent = ##t
         \override TupletBracket #'transparent = ##t
         \override TupletNumber #'transparent = ##t
         \override Stem #'transparent = ##t
         \override Dots #'transparent = ##t
         \override Accidental #'transparent = ##t
         \override NoteHead #'no-ledgers = ##t 
         \override Staff.StaffSymbol #'transparent = ##t
          \override Score.NonMusicalPaperColumn.padding = #2
          \hide Staff.Clef           % trocado omit Staff.Clef por hide
         \hide Staff.BarLine
         \hide Staff.Rest
        \context { 
                 \Score
                 \remove "Bar_number_engraver" 
                  \remove "Volta_engraver" 
                  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/128)
                  \override LyricText.font-size = #14
                  \override LyricSpace.font-size = #14
                  \override LyricHyphen.font-size = #13
                  \override KeySignature #'transparent = ##t
         }
        \context { 
                  \Voice
                  \hide Tie
        
	}
%	\context {
%	  	  \chords
%	           \set majorSevenSymbol = \markup { 7+ }
%		}
   	\context {
                 \ChordNames
                 \override BarLine.bar-extent = #'(-2 . 2)             
                 \override ChordName #'font-size = #13
%                  \override ChordName #'font-series = #'bold
               \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
                                #'((basic-distance . 5)
                                   (stretchability . 10)/
                                   (minimum-distance . 5)
                                    (padding . 5))
            
        } 
}
