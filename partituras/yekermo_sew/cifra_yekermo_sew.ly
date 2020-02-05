\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
% \repeat volta 2 {
g1:dim | g1:dim | g1:dim | g1:dim | 
g1:dim | g1:dim | g1:dim | g1:dim | 
% }
}

acordesdois = \chordmode {
es1 | es:5- | es2 g:dim | es1 | es:5- |
es2 g:dim | es1 | es:5- | g1:dim
}


acordetodo = \chordmode {
          \set chordNameExceptions = #acordesbr
%         \unfoldRepeats {
	  \acordesum
 	  \acordesdois
%         }
}

