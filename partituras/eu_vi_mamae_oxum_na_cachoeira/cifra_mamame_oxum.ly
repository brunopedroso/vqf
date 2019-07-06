\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
  \partial 4 d4:m7 |
\repeat volta 2 {
  d1:m7 | d:m7 | g:m  | 
}
\alternative {
  {d:m7 |}
  {d2:m7 d:7 | }
}
	}

acordesdois = \chordmode {
\repeat volta 2 {
g1:m | d:m7 | a:7 | 
}
\alternative {
  {d2:m7 d:7 |}
  { d1:m7 |}
}
}


acordetodo = \chordmode {
        \unfoldRepeats {
	\acordesum
 	\acordesdois
        }
}