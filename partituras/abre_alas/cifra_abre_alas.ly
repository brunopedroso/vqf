\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
\repeat volta 2 {
 d2:m7 | d:m7 | a:7 |d:m |
}
d:7
	}

acordesdois = \chordmode {
| g:m |g:m | d:m7 | d:m7 |
 a:7 | a:7 | d:m |
}


acordetodo = \chordmode {
        \unfoldRepeats {
	\acordesum
 	\acordesdois
        }
}