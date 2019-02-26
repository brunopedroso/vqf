\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
	\time 2/4
%	s2 s2
	\partial 4 { f4 } |
	f2 | bes:m | c:7 | f |
	f   | f:7   | bes:maj | bes:maj |
	bes:maj | bes:m7 | a:m7 | d:7    |
	g:m7   | c:7  | f | f 
	
}

acordesdois = \chordmode {
	f2 | gis:dim | g:m7 | g:m7 |
	c:7 | c:7 | f | c:7 |
	f | gis:dim | g:m7 | g:m7 |
	c:7 | c:7   | f    | c:7   |
% parte final do refrão
	f  | gis:dim | g:m7 | g:m7 |
	c:7 | c:7 | c:m7  | f:7 | 
	bes:maj | b:m7 | a:m7 | d:7 |
	g:m7 | c:7 | f | f:7 |
	 bes:maj | b:m7 | a:m7 | d:7 |
	g:m7 | c:7 | f |
	 }

acordetodo = \chordmode {
	\acordesum
	\acordesdois
}