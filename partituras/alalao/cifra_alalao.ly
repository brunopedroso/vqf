\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
bes2| c:m7 | f:7 | bes |
bes | c:m7 | f:7 | bes |
bes | c:m7 | f:7 | bes |
bes | c:m7 | f:7 | bes |
bes | c:m7 | f:7 | bes |
}

acordesdois = \chordmode {
bes | bes |bes:7 |es |
es | e:dim | e:dim | bes |
f:7 |f:7 | f:7 | bes |
bes |bes |bes | bes | bes | 
es | es | es | es | 
f:7 | f:7 | bes |
}


acordetodo = \chordmode {
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}