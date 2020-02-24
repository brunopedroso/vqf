\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
	\time 2/4
	\repeat volta 4 {
c2:9- | c:9- | c:9-  | c:9- | c:9- | c:9- | f:m6 f:m6
	}
	}

acordesdois = \chordmode {
\repeat volta 6 {f2:7 | f:7 | bes:7 | bes:7 | es:7 | es:7
aes:6 | g:9+ |}
}


acordetodo = \chordmode {
        \unfoldRepeats
	\acordesum
 	\acordesdois
 	\acordesum
}