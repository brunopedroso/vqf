\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
g1:m7 | g:m7 | c:m7.9 |
c:m7.9 |g2:m7   d:7 | g:m7 g:7 | 
d2:7 g:m7  | g2:m7 g:7 |  
c1:m7 | c:m7 |  g:m7 | g:m7 | c:m7 | g2:m7 d:7 | 
g:m7
}

acordesdois = \chordmode {
  c1:m7 | g:m7 | 
d:7 | g:m7 | g:7|

}


acordetodo = \chordmode {
          \set chordNameExceptions = #acordesbr
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}

