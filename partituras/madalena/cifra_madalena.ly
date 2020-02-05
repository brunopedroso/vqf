\version "2.18.2"  % necessary for upgrading to future LilyPond versions
% \language english

acordesum = \chordmode {
  d1 | e:m7 | a | d 
  d1 | e:m7 | a | d 
  d1 | e:m7 | a | d 
  d1 | e:m7 | a | d 
}

acordesdois = \chordmode {
   e:m7 | d | a:7 | a:7 
}

acordesrefrao = \chordmode {
  d | d| a:7 | a:7
  d | d| a:7 | a:7
  d 
}


acordetodo = \chordmode {
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
 	  \acordesrefrao

        }
}