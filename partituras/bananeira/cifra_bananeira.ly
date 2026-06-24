\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
s2 | d2:m7 | d:9 |
d:m7     | d:m7 |  
g:m7 | g:m7 |
g:m7 |g:m7 |
}

acordesdois = \chordmode {
c2:m7 | f:4.9 | bes:7+ |
e:m5-7 | a:9 | d:9
}


acordetodo = \chordmode {
          \set chordNameExceptions = #acordesbr
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}

