\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
    \partial 2 {s2} \repeat volta 2 {
        e8:m5 s8 s4 s8 s8 s8 s8 | 
        s8 s8 s4 s8 s8 s8 s8 | 
        s4 s8 s8 d4:5 s8 s8 | 
        c4:maj7 s4 b4:5 s8 s8 | 
        a8:m5 s8 s4 s8 s8 s8 s8 | 
        e8:m5 s8 s4 s4 s8 s8 | 
        b4:7 s4 s4 s4 }
    \alternative { 
      {e1:m5 }
      {e1:m5 }
    } 
    
}

acordesdois = \chordmode {
    e1:m5
}


acordetodo = \chordmode {
	  \acordesum
 	  \acordesdois
}
