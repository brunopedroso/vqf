\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
  \time 2/4
  s2 | 
g2:m7.9 | 
c:7.13 | 
g:m7.9 | 
c:7.13 | 
g:m7.9 | 
c:7.13 | 
g:m7.9 | 
c:7.13 | 
g:m7.9 | 
c:7.13 | 
g:m7.9 | 
c:7.13 | 
bes:m7.9 | 
ees:7.13 | 
a4:7.13  a:7.13- | 
a4:m7  d:7.9- | 
bes2:7maj | 
bes:m6 | 
a4:7.13  a:7.13- | 
a4:m7  d:7.9- | 
g:7.13 g:7.13- | 
g:m7 c:7.13 | 
d2:7maj | 
}

acordesdois = \chordmode {
}


acordetodo = \chordmode {
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}

