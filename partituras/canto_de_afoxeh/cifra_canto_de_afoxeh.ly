\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
  bes2 | c:m7 | cis2:dim |cis2:dim |
bes2:dim | bes2:dim | bes/d | bes:7 |
ees2:7+ | ees:m6 | bes2/d | bes2/d
bes:dim | bes:dim | c:m7 | 
g:m7 | c:7 | g:m7 | 
c:7 | g:m7 | c:7 | g:m7 | c:7 | 
g:m7 | c:7 | g:m7 | 
 c:7 | c:m7 | f:7 | ees | bes | 
}

acordesdois = \chordmode {
}


acordetodo = \chordmode {
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}