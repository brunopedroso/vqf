\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
  \partial 4 s4
  s2|
  bes2|bes2| g:m |g:m | 
  c:m | c:m | c:m | c:m|
  c:m | c:m | f:7 | f:7 |
  bes | bes

}

acordesdois = \chordmode {
 c:m | c:m | es | es | 
 bes | bes | bes | bes | 
 c:m | f:7 | bes | g:m |  
 c:m |f:7 | bes | bes
}


acordetodo = \chordmode {
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}