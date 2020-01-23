\version "2.18.2"  % necessary for upgrading to future LilyPond versions
bracordes = {
  <c es ges bes>1-\markup { \concat { "m" "5" \smaller {\flat} "/7"} }
  <c e g bes d'>1-\markup { \concat{"7/9"} }
}

acordesbr = #(append
                 (sequential-music-to-chord-exceptions bracordes #t)
                 ignatzekExceptions) 

acordesum = \chordmode {
  \repeat volta 2 {
bes1:7maj |bes1:7maj | d2:m7 g:7.9 |c1:m7  |
e2:m7.5- a:7 |d:m7 g:7.9 |c:m7 f:7.9 |bes1:7maj  |
f:7.9 |bes:7maj  |
g:7.9 |c:m7  |
ees2 e:dim | bes:7maj  g:7.9 |c:7 f:7.9 |
bes1:7maj  |
  }
	}

acordesdois = \chordmode {
a:7 | a:7 |d:m | d:m 
|a:7 | a:7 | d:7 | d:7  |
g:m | g:m |d:m | d:m
bes |a:7 |d:m  |
}


acordetodo = \chordmode {
        \set chordNameExceptions = #acordesbr
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
        }
}