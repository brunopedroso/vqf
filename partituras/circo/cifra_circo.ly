\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
	\time 2/4
f2 | g:m | c:7| f |
f | g:m | c:7| f
f | f   | c:7| f
f | f   | c:7| f
	 }

acordesdois = \chordmode {
f
c:7
c:7
c:7
c:7
g:m
c:7
g:m
c:7
c:7| f	  
}


acordetodo = \chordmode {
	\acordesum
% 	\acordesdois
}