\version "2.18.2"  % necessary for upgrading to future LilyPond versions
% bracordes = {
%   <c es ges bes>1-\markup { \concat { "m" "5" \smaller {\flat} "/7"} }
%   <c e g bes d'>1-\markup { \concat{"7/9"} }
% }
% 
% acordesbr = #(append
%                  (sequential-music-to-chord-exceptions bracordes #t)
%                  ignatzekExceptions) 

acordesum = \chordmode {
  s1 | 
bes | bes | f:7 |f:7 |
f:7 | f:7 | bes | bes |
bes | bes | f:7 | f:7 | ees | es | 
bes |

}

acordesdois = \chordmode {
ees |f:7 |bes | bes |
ees |f:7 |bes | bes | 
f:7 |f:7 | bes | bes
f:7 |f:7 | bes 

}


acordetodo = \chordmode {
%         \set chordNameExceptions = #acordesbr
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}