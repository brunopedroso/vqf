\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesintro = \chordmode {
  \time 4/4
  \repeat volta 4 { d2:m a:7 |}
}
acordesum = \chordmode {
d1:m | d2:m a:7 |d:m a:7 |d:m a:7 |
c1:7 |f2 a:7 |d1:m  |
a:7 |d2:m a:7 |d a:7  |
	}

acordesdois = \chordmode {
d1 | d2 a:7  |
e1:m | e:m | e2:m a:7 |d1:dim | d   | d |
b:7  | b:7 | e2:m gis:dim |d1 | d2 b:m | e:7 a:7 |d2:m a:7 |
}


acordetodo = \chordmode {
        \unfoldRepeats {
          \acordesintro
	  \acordesum
 	  \acordesdois
        }
}