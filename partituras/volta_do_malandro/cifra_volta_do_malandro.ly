\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
  ees4:6  ees:7 |  ees:6  ees:7 | 
  ees:6  ees:7  | ees:6   ees:7 |
  ees:6  ees:7  | ees:6  ees:7  | 
  ees:6  ees:7  | ees:6  ees:7  |
  aes:m6/b  aes:m7/b | aes:m6/b  aes:m7/b |
  aes:m6/b  aes:m7/b | aes:m6/b  aes:m7/b | 
  a:m7.5- | c:m/bes
a:m7.5- | c:m/bes | a:m7.5- | c:m/bes | ees:6 | ees:7 | ees:6 | ees:7
ees:6 | ees:7 | ees:6 | ees:7 | des:6 | des:6/ges | des:6 | des:6/ges
des:6 | des:6/ges | des:6 | des:6/ges | c:7 | bes:m6/des | c:7 | bes:m6/des
c:7 | bes:m6/des | c:7 | bes:m6/des | f:7/a | f:7/bes | f:7/b | f:7/c
d:m6 | d:m7 | d:m6 | d:m7 | ees:6 | ees:7 | ees:6 | ees:7
ees:6 | ees:7 | ees:6 | ees:7 | aes:m6/b | aes:m7/b | aes:m6/b | aes:m7/b
aes:m6/b | aes:m7/b | aes:m6/b | aes:m7/b | c:7 | bes:m6/des | c:7 | bes:m6/des
c:7 | bes:m6/des | c:7 | bes:m6/des | f:7/a | f:7/bes | f:7/b | f:7/c
d:m6 | d:m7 | d:m6 | d:m7 | ees:6 | ees:7 | 
% ees:6 | ees:7 | ees:6 | ees:7 | ees:6 | ees:7
% des:m6/e | e | ees:6 | ees:7 | ees:6 | ees:7 | ees:6 | ees:7 | ees:6 | ees:7 | ees:6 | ees:7 | ees:6 | ees:7 | ees:6 | ees:7 | ees:6 | ees:7
}

acordesdois = \chordmode {
}


acordetodo = \chordmode {
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}