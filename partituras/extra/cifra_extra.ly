\version "2.18.2"  % necessary for upgrading to future LilyPond versions
% \language english

acordesum = \chordmode {
  \time 3/4
  \partial 4 { s4}
  c2:m s4 | f:m | c:m | f:m|
  c:m | f:m | c:m |
  g:7  | 
}

acordesdois = \chordmode {
 c:m | g:m7 | c:9- | f:m7 |
bes:9| g:m7 | g:9 | aes:7maj |
aes:7maj | 
d:m5- | 
aes:7 | 
 g:7 |  g:7 |  g:7 |  g:7 |  
}

acordesrefrao = \chordmode {
c:m |f:m | c:m |f:m |
c:m |f:m |c:m |g:7 |
}

acordesc = \chordmode {
f  | c:5+ | f:9 | f:9
f:m9 | bes:13  | aes:7 | g:7 | c:m |
g:7 | c:m | g:7
}
acordetodo = \chordmode {
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
 	  \acordesrefrao
 	  \acordesc
        }
}