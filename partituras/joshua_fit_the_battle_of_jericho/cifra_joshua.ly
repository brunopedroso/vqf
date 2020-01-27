\version "2.18.2"  % necessary for upgrading to future LilyPond versions
% \language english

acordesum = \chordmode {
  \partial 4 { s4}
  d2.:m | g:m | d:m | g:m|
  d:m | g:m | d:m |
  a:7  | 
}

acordesdois = \chordmode {
 d:m | a:m7 | d:9- | g:m7 |
bes:9| a:m7 | a:9 | aes:maj |
aes:maj | 
e:m5- | 
aes:7 | 
 a:7 |  a:7 |  a:7 |  a:7 |  
}


acordetodo = \chordmode {
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}