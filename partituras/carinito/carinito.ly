\version "2.12.1"
date = #(strftime "%d %B %Y" (localtime (current-time)))


\header {
  title = "Cariñito"
  composer = "Los Hijos del Sol / arr. Bruno"
  source = ""
  style = ""
  copyright = \date
  lastupdated = ""
  tagline = ""
}

% music pieces
%part: melody
melody = {
  \set Staff.instrumentName = "Melody "
  \compressFullBarRests
  \key d \minor
  \relative c' {
    \repeat volta 2 {
      d8 r16 a d8 r r4 c8 d |
      f8 r16 c f8 r r2 |
      f8 r16 c f8 r r r16 f( a8) g16( f) |
      d8 r16 a d8 r r2 |
      d8 r16 a d8 r r4 c8 d |
      f8 r16 c f8 r r2 |
      f8 r16 c f8 r r r16 f( a8) g16( f) |
      d8 r16 a d8 r r2 |
      R1*8 |
      d8 r16 a d8 r r4 c8 d |
      f8 r16 c r4 r f,8 g |
      a4. c8 g4. a8 |
      f8. a'16[ a] r8 a16[ a] r g r f r e r |
      d8 r16 a r4 r c8 d |
      f8 r16 c r4 r f,8 g |
      a4. c8 g4. a8 |
      f8. d16 r4 r2 |
      d'2. c4 |
      c2 \grace e,16( f2) |
      d'2. c4 |
      c2 \grace e,16( f2) |
      a8 r16 e r4 r a8 g |
      a8 r16 f r4 r f8 g |
      a4. c8 g4. a8 |
      f8. d16 r4 r2 |
      a'8 r16 e r4 r a8 g |
      a8 r16 f r4 r f8 g |
      a4. c8 g4. a8 |
      f8. d16 r4 r2 |
    }

    R1*8^"drum break"
    \bar "||"

    d'8 r16 a d8 r r4 c8 d |
    f8 r16 c f8 r r2 |
    f8 r16 c f8 r r r16 f( a8) g16( f) |
    d8 r16 a d8 r r2 |
    d8 r16 a d8 r r4 c8 d |
    f8 r16 c f8 r r2 |
    f8 r16 c f8 r r r16 f( a8) g16( f) |
    d8 r16 a d8 r r2 |

    \xNotesOn
    c4^"hey!" c4^"hey!" c4^"hey!" c4^"hey!" |
    c4^"hey!" c4^"hey!" c4^"hey!" c4^"hey!" |
    c4^"hey!" c4^"hey!" c4^"hey!" c4^"hey!" |
    c1^"heeey!" |
    \xNotesOff

    R1*4^"¡eso! ¡asi! ¡ayayay!"

    r4 e2\p\< ~ e8\f r |
    f8-^ r16 f-^ f8-^ r r2 |

  }
}

%part: bass
bass = {
  \set Staff.instrumentName = "Bass "
  \compressFullBarRests
  \key d \minor
  \relative c {
    \repeat volta 2 {
      d8 r16 a d8 r r4 c8 d |
      f8 r16 c f8 r r2 |
      f8 r16 c f8 r r r16 f( a8) g16( f) |
      d8 r16 a d8 r r2 |
      d8 r16 a d8 r r4 c8 d |
      f8 r16 c f8 r r2 |
      f8 r16 c f8 r r r16 f( a8) g16( f) |
      d8 r16 a d8 r r16 c c8 d e |

      f4 c8 f f,4 c'8 f |
      f,8. r16 c'8 f f,8. r16 c'8 f |
      f,8. r16 c'8 f f,8. r16 c'8 f |
      d8. r16 a8 a d8. r16 c8 d |
      f8. r16 c8 f f,8. r16 c'8 f |
      f,8. r16 c'8 f f,8. r16 c'8 f |
      f,8. r16 c'8 f f,8. r16 f'8 e |
      d8. r16 a8 a d a bes c |
      d8. r16 a8 d f,8. r16 c'8 d |
      f8. r16 c8 f f,8. r16 c'8 f |
      f,8. r16 c'8 c a8. r16 d8 a' |
      d,8. r16 c8 d r16 f, f8 g a |
      d8. r16 a8 d f,8. r16 c'8 d |
      f8. r16 c8 f f,8. r16 c'8 f |
      f,8. r16 c'8 c a8. r16 d8 a' |
      d,8. r16 c8 d r16 f,16 f8 g a |

      d8. f a8 c,8. g' c8 |
      a8. f a8 r16 f f8 g a |
      d,8. f a8 c,8. g' c8 |
      a8. f a8 r16 f f8 g a |
      a,8. e' a8 a,8. e' a8 |
      d,8. f a8 d, c d e |
      f8. c bes8 a8. e' a8 |
      d,8. a d8 r16 a' a8 g a |
      a,8. e' a8 a,8. e' a8 |
      d,8. f a8 d, c d e |
      f8. c bes8 a8. e' a8 |
      d,8. a d8 r16 a a8 bes c |
    }

    R1*8^"drum break"
    \bar "||"

    d8 r16 a d8 r r4 c8 d |
    f8 r16 c f8 r r2 |
    f8 r16 c f8 r r r16 f( a8) g16( f) |
    d8 r16 a d8 r r2 |
    d8 r16 a d8 r r4 c8 d |
    f8 r16 c f8 r r2 |
    f8 r16 c f8 r r r16 f( a8) g16( f) |
    d8 r16 a d8 r r16 c c8 d e |

    f4 c8 f f,4 c'8 f |
    f,8. r16 c'8 f f,8. r16 c'8 f |
    f,8. r16 c'8 f f,8. r16 c'8 f |
    d8. r16 a8 a d8. r16 c8 d |
    f8. r16 c8 f f,8. r16 c'8 f |
    f,8. r16 c'8 f f,8. r16 c'8 f |
    f,8. r16 c'8 f f,8. r16 f'8 e |
    d8. r16 a8 a d a bes c |

    r4 e2\p\< ~ e8\f r |
    f8-^ r16 f-^ f8-^ r r2 |

  }
}

%layout

\book {
  \score {
    <<
      \tempo 4 = 90
      \unfoldRepeats \new Staff \melody
      \unfoldRepeats \new Staff \bass
    >>
    \midi { }
  }
}

#(set-default-paper-size "letter" 'portrait)
#(define output-suffix "C")
\book {
  \paper { }
  \header { poet = "C / Do" }
  \score {
    <<
      %\new Staff \melody
      \new Staff \transpose c c, { \clef bass \melody }
      \new Staff { \clef bass \bass }
    >>
  }
}

%#(define output-suffix "Bflat")
%\book {
%  \paper { }
%  \header { poet = "B flat / Si bémol" }
%  \score {
%    <<
%      \new Staff { \transpose bes c'  \melody }
%      \new Staff { \transpose bes c'' \bass }
%    >>
%  }
%}

#(define output-suffix "Eflat-melody")
\book {
  \paper { }
  \header { poet = "E flat / Mi bémol" }
  \score {
    <<
      \new Staff { \transpose ees c'  \melody }
    >>
  }
}

#(define output-suffix "Eflat-bass")
\book {
  \paper { }
  \header { poet = "E flat / Mi bémol" }
  \score {
    <<
      \new Staff { \transpose ees c'' \bass }
    >>
  }
}

#(define output-suffix "F-melody")
\book {
  \paper { }
  \header { poet = "F / Fa" }
  \score {
    <<
      \new Staff { \transpose f c'  \melody }
    >>
  }
}

#(define output-suffix "F-bass")
\book {
  \paper { }
  \header { poet = "F / Fa" }
  \score {
    <<
      \new Staff { \transpose f c'' \bass }
    >>
  }
}
