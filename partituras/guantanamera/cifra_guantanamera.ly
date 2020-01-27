\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
  \partial 2 s2
\repeat volta 2 {
g1:m | c:7 | f | c:7 |
 }
}

acordesdois = \chordmode {
bes | c:7 | f2 g:m | c:7 f |
c:7
}


acordetodo = \chordmode {
          \set chordNameExceptions = #acordesbr
         \unfoldRepeats {
	  \acordesum
 	  \acordesdois
         }
}

