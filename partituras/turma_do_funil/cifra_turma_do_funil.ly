\version "2.18.2"  % necessary for upgrading to future LilyPond versions


acordesum = \chordmode {
  \partial 8 s8 |
d2:m |a:7 |d:m |d:m | c  | c | 
d:m |d:m | g:m  | g:m | d:m | d:m |
bes |a:7 |d:m | d:m |
	}

acordesdois = \chordmode {
a:7 | a:7 |d:m | d:m 
|a:7 | a:7 | d:7 | d:7  |
g:m | g:m |d:m | d:m
bes |a:7 |d:m  |
}


acordetodo = \chordmode {
        \unfoldRepeats {

	  \acordesum
 	  \acordesdois
        }
}