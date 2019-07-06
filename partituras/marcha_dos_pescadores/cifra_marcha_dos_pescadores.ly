\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
	\partial 2 
	s2 | d1:m |
d1:m | g:m7 |
d:m | a:7 |
d:m | c:7 |
bes | a:7 |
d:m | g:m7 |
d2:m a:7 | d1:m |

	}

acordesdois = \chordmode {
d1:7 | g:m7 |
c:7 | f:7+ |
d:m | g:m7 |
a:7 | d:m |
d:m | g:m7 |
a:7 | d:m |
}


acordetodo = \chordmode {
        \unfoldRepeats
	\acordesum
 	\acordesdois
}