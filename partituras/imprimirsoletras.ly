\version "2.18.2"


\layout {
        indent = #30
        short-indent = #30
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
        \omit Staff.Clef
        \hide Staff.BarLine
        \hide Staff.Rest
        \context {
          \Staff
              #(layout-set-staff-size 6)
        }
        \context { 
                 \Score
                 \remove "Bar_number_engraver" 
                  \remove "Volta_engraver" 
                  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/128)
                  \override LyricText.font-size = #16
                  \override LyricSpace.font-size = #16 
                  \override LyricHyphen.font-size = #13
        }
        \context { 
                  \Voice
                  \hide Tie
                            }
        \context {
                 \ChordNames
                 \override ChordName #'font-size = #13
%                  \override ChordName #'font-series = #'bold
                  \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
                                #'((basic-distance . 5)
                                   (stretchability . 10)
                                   (minimum-distance . 5)
                                    (padding . 5))
            
        } 

}
