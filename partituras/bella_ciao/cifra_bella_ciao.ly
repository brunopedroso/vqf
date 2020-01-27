\version "2.18.2"  % necessary for upgrading to future LilyPond versions

acordesum = \chordmode {
    s1 \repeat volta 2 {
        | 
        e8:m5 s8 s4 s8 s8 s8 s8 | 
        s8 s8 s4 s8 s8 s8 s8 | 
        s4 s8 s8 d4:5 s8 s8 | 
        c4:maj7 s4 b4:5 s8 s8 | 
        a8:m5 s8 s4 s8 s8 s8 s8 | 
        e8:m5 s8 s4 s4 s8 s8 | 
        b4:7 s4 s4 s4 }
    \alternative { {
            | 
            e2:m5 s8 s8 s8 s8 }
        {
            | 
            s2. s4 }
        } \bar "||"
    f2:m5 s8 s8 s8 s8 \repeat volta 2 {
        | 
        s8 s8 s4 s8 s8 s8 s8 | 
        s8 s8 s4 s8 s8 s8 s8 | 
        s4 s8 s8 es4:5 s8 s8 | 
        des4:maj7 s4 c4:5 s8 s8 | 
        bes8:m5 s8 s4 s8 s8 s8 s8 | 
        f8:m5 s8 s4 s4 s8 s8 | 
        c4:7 s4 s4 s4 }
    \alternative { {
            | 
            f2:m5 s8 s8 s8 s8 }
        {
            | 
            s2. s4 }
        } \bar "||"
    fis2:m5 s8 s8 s8 s8 \repeat volta 2 {
        | 
        s8 s8 s4 s8 s8 s8 s8 | 
        s8 s8 s4 s8 s8 s8 s8 | 
        s4 s8 s8 e4:5 s8 s8 | 
        d4:maj7 s4 cis4:5 s8 s8 | 
        b8:m5 s8 s4 s8 s8 s8 s8 | 
        fis8:m5 s8 s4 s4 s8 s8 | 
        cis4:7 s4 s4 s4 }
    \alternative { {
            | 
            fis2:m5 s8 s8 s8 s8 }
        {
            | 
            s2. s8 s8 }
        } | 
    b8:m5 s8 s4 s8 s8 s8 s8 | 
    fis8:m5 s8 s4 s4 s8 s8 | 
    cis4:7 s4 s4 s4 | 
    fis2.:m5 s8 s8 | 
    b8:m5 s8 s4 s8 s8 s8 s8 | 
    fis8:m5 s8 s4 s4 s8 s8 | 
    cis4:7 s4 s4 s4 | 
    fis2.:m5 s4 \bar "|."

}

acordesdois = \chordmode {
  e1:m5
}

acordesrefrao = \chordmode {
  e1:m5
}

acordesc = \chordmode {
  e1:m5
}
acordetodo = \chordmode {
        \unfoldRepeats {
	  \acordesum
 	  \acordesdois
 	  \acordesrefrao
 	  \acordesc
        }
}