\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
d1:m7 | d:m7 | g:m7.9 |
g:m7.9 |d2:m7   a:7 | d:m7 d:7 | 
a2:7 d:m7  | d2:m7 d:7 |  
g1:m7 | g:m7 |  d:m7 | d:m7 | g:m7 | d2:m7 a:7 | 
d:m7
}

acordesdois = \chordmode {
  g1:m7 | d:m7 | 
a:7 | d:m7 | d:7|

}


acordetodo = \chordmode {
          \set chordNameExceptions = #acordesbr
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
 	  \acordesdois
        }
}

