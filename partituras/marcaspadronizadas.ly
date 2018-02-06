\header {
  arranger = "Bloco Vai Quem Fica"
  copyright = "(copyleft) - CC BY-SA 4.0" 
  tagline = "Criado com Software Livre - Lilypond"
}

Segno = {
  \mark \markup { \musicglyph #"scripts.segno" }
}

Coda = {
  \mark \markup { \musicglyph #"scripts.coda" }
}

marcaA = {
 \mark { 
   \once \override Score.RehearsalMark.font-size = #3 
   \markup{
     \box "A"
   }
 }
}

marcaB = {
  \mark { \once \override Score.RehearsalMark.font-size = #3 \markup{\box "B"}
  }
}
marcaC = {
   \mark { 
     \once \override Score.RehearsalMark.font-size = #3 \markup{\box "C"}
   }
}

marcaD = {
   \mark { 
     \once \override Score.RehearsalMark.font-size = #3 \markup{\box "D"}
   }
}

marcaE = {
   \mark { 
     \once \override Score.RehearsalMark.font-size = #3 \markup{\box "E"}
   }
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
          s2
          \bar ""
        }
        % Resume bar count and show staff lines again
     \startStaff
   \cadenzaOff
   \break
        \mark \markup {\musicglyph #"scripts.coda"}
}

DSFine = {
  \bar "||"
    \cadenzaOn
      \stopStaff
      \repeat unfold 1 {
          s2
          \bar ""
        }
    \once \override TextScript.extra-offset = #'( 0 . -3.0 )
        \once \override TextScript.word-space = #1.5
        <>^\markup { \center-column { "Ao " \musicglyph #"scripts.segno" "e " \line { \center-column {\italic "Fine" }} } }
         \repeat unfold 2 {
          s2
          \bar ""
        }
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

% pulalinha = {
%   \cadenzaOn
%   \stopStaff
%   \markup {""}
%   \bar "" \break
%   \startStaff
%   \cadenzaOff
% }

\layout {
  \context {
    \Score {
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/128)
  }}
}
\paper {
        markup-system-spacing #'basic-distance = #17
    }



\version "2.18.2"
