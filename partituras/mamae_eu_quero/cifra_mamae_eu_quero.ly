\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
s2 | bes1 | bes | bes | 
c:m7 | c:m7 | c:m7 | f:7 |
bes  | 
% bes | bes | bes |
% c:m7 | c:m7 | c:m7 |f:7 |
% |bes |

}

acordesdois = \chordmode {
bes | c:m7 | c2:m7 f:7 | bes1 |
g:7 | c:m7 | 
f:7 | bes 
}


acordetodo = \chordmode {
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}