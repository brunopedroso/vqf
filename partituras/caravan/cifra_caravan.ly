\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
	\time 4/4
	\repeat volta 2 {
c1:9- | c1:9- | c:9-  | c:9- | c:9- | c:9- | f:m6 f:m6
	}
	}

acordesdois = \chordmode {
f1:7 | f:7 | bes:7 | bes:7 | es:7 | es:7
aes:6 | g:9+ |
}


acordetodo = \chordmode {
        \unfoldRepeats
	\acordesum
 	\acordesdois
}