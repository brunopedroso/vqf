\header {
  arranger = "Bloco Vai Quem Fica"
  copyright = "(ɔ) - CC BY-SA 4.0" 
  tagline = "Criado com Software Livre - Lilypond"
}

Segno = {
  \mark \markup { \musicglyph #"scripts.segno" }
}

Coda = {
  \mark \markup { \musicglyph #"scripts.coda" }
}

marcaA = {
  \bar "||"
    \once \override Score.RehearsalMark.font-size = #3
    \mark \markup { \box "A"}
}

marcaB = {
  \bar "||"
    \once \override Score.RehearsalMark.font-size = #3
    \mark \markup { \box "B"}
}
DSCoda = {
  \bar "||"
    \cadenzaOn
      \stopStaff
      \repeat unfold 1 {
          s1
          \bar ""
        }
    \once \override TextScript.extra-offset = #'( 0 . -3.0 )
        \once \override TextScript.word-space = #1.5
        <>^\markup { \center-column { "Ao " \musicglyph #"scripts.segno" "e " \line { \center-column {\musicglyph #"scripts.coda" }} } }
         \repeat unfold 2 {
          s1
          \bar ""
        }
        % Resume bar count and show staff lines again
     \startStaff
   \cadenzaOff
   \break
        \mark \markup {\musicglyph #"scripts.coda"}
}

DCapoCoda = {
  \bar "||"
    \cadenzaOn
      \stopStaff
      \repeat unfold 1 {s2 \bar ""}
      \once \override TextScript.extra-offset = #'( 0 . -4.0 )
        \once \override TextScript.word-space = #1.25
        <>^\markup { \center-column { 
          \italic "D.C." 
          " e " 
          \line { \center-column {\musicglyph #"scripts.coda" }} } }
          \repeat unfold 1 { s2 \bar ""  }
   \startStaff     
   \cadenzaOff
   \break
        \mark \markup {\musicglyph #"scripts.coda"}
}

\layout {
  \context {
    \Score {
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/128)
  }}
}
\paper {
        markup-system-spacing #'basic-distance = #20
    }



\version "2.18.2"