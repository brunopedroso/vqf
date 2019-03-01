\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
d1:m7 | g:m7.9 |
c     | d2:m7   a:7.9+ | 
a1:7  | 
}

acordesdois = \chordmode {
  d1:m7 | g:m7.9 | 
e:m7.5- | 
d:m7 | 
d:m7 | 
g:m7.9 | 
e:m7.5- | 
d:m7 | a:7.9+ | 
}


acordetodo = \chordmode {
          \set chordNameExceptions = #acordesbr
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}

