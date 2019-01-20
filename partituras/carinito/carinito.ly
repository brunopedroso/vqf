\version "2.18.2"

% Música adaptada a partir de https://chaoticinsurrectionensemble.org/en/songs/carinito
\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"


\header {
  title = "Cariñito"
  composer = "Los Hijos del Sol / arr. Bruno"
}

#(set-global-staff-size 16)


% partes da música
%parte: melodia
melodiaintro = {
		\time 4/4
  \compressFullBarRests
  \key d \minor
  \relative c' {
    \repeat volta 2 {
      d8. \marcaA a16 d8 r r4 c8 d |
      f8. c16 f8 r r2 |
      f8. c16 f8 r r r16 f( a8) g16( f) |
      d8. a16 d8 r r2 |
      d8. a16 d8 r r4 c8 d |
      f8. c16 f8 r r2 |
      f8. c16 f8 r r r16 f( a8) g16( f) |
      d8. a16 d8 r r2 |
      R1*8 |
    }
    }
}
melodiaum = {
  \relative c'{
      \compressFullBarRests
      d8. \marcaB a16 d8 r r4 c8 d |
      f8. c16 r4 r f,8 g |
      a4. c8 g4. a8 |
      f8. a'16 a r8 a16 a r g f e r8. |
      d8. a16 r4 r c8 d |
      f8. c16 r4 r f,8 g |
      a4. c8 g4. a8 |
      f8. d16 r4 r2 |
      d'2. c4 |
      c2 \grace e,16( f2) |
      d'2. c4 |
      c2 \grace e,16( f2) |
      }
}

melodiadois = {
  relative c'{
    a8 \marcaC r16 e r4 r a8 g |
      a8. f16 r4 r f8 g |
      a4. c8 g4. a8 |
      f8. d16 r4 r2 |
      a'8 r16 e r4 r a8 g |
      a8. f16 r4 r f8 g |
      a4. c8 g4. a8 |
      f8. d16 r4 r2 |
  }
}

%parte: baixo/tuba
baixo = {
	\time 4/4
  \compressFullBarRests
  \key d \minor
  \relative c {
    \repeat volta 2 {
      d8. a16 d8 r r4 c8 d |
      f8. c16 f8 r r2 |
      f8. c16 f8 r r r16 f( a8) g16( f) |
      d8. a16 d8 r r2 |
      d8. a16 d8 r r4 c8 d |
      f8. c16 f8 r r2 |
      f8. c16 f8 r r r16 f( a8) g16( f) |
      d8. a16 d8 r r16 c c8 d e |

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
      a8. f a8. f16 f8 g a |
      d,8. f a8 c,8. g' c8 |
      a8. f a8. f16 f8 g a |
      a,8. e' a8 a,8. e' a8 |
      d,8. f a8 d, c d e |
      f8. c bes8 a8. e' a8 |
      d,8. a d8 r16 a' a8 g a |
      a,8. e' a8 a,8. e' a8 |
      d,8. f a8 d, c d e |
      f8. c bes8 a8. e' a8 |
      d,8. a d8. a16 a8 bes c |
    }

    R1*8^"drum break"
    \bar "||"

    d8. a16 d8 r r4 c8 d |
    f8. c16 f8 r r2 |
    f8. c16 f8 r r r16 f( a8) g16( f) |
    d8. a16 d8 r r2 |
    d8. a16 d8 r r4 c8 d |
    f8. c16 f8 r r2 |
    f8. c16 f8 r r r16 f( a8) g16( f) |
    d8. a16 d8 r r16 c c8 d e |

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


% letra
letraintro = \lyricmode {
  - - - - - - - - - - - - - - - - 
  - - - - - - - - - - - - - - - - 
}
letra = \lyricmode {
Llo -- ro - por que -- rer -- te, por amar -- te y por de -- sear -- te.
- - - - - -
Llo -- ro por que -- rer -- te, por amar -- te y por de -- sear -- te.
¡Ay ca -- ri -- ño! ¡Ay mi vi -- da!
Nun -- ca, pe -- ro nun -- ca me aban -- do -- nes ca -- ri -- ñi -- to.
Nun -- ca, pe -- ro nun -- ca me aban -- do -- nes ca -- ri -- ñi -- to. 
}
%leiaute

letratoda = {
  \letraintro
  \letra
}

\book {
  \score {
    <<
      \tempo 4 = 90
      \unfoldRepeats \new Staff \melodiaintro \break \melodiaum \break \melodiadois
      \unfoldRepeats \new Staff \baixo
    >>
    \midi { }
  }
}



\book {
  \bookOutputName "carinito_C"
  \header { poet = "C / Dó (Gm)" }
  \score {
    <<
      %\new Staff \melodia
      \new Staff \transpose f bes' { \melodiaintro \break \melodiaum \break \melodiadois }
      \new Staff { \clef bass f bes \baixo }
    >>
  }
}

\book {
  \bookOutputName "carinito_Bb"
 \header { poet = "Bb / Si b (Gm->Am)" }
 \score {
   <<
     \new Staff { 
       \transpose f c'  {
         \melodiaintro  \melodiaum \break \melodiadois }
     }
   >>
 }
}

\book {
    \bookOutputName "carinito_Eb"
  \header { poet = "Eb/ Mi b (Gm->Em)" }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \transpose f g' { 
          \melodiaintro 
          \break
          \melodiaum 
          \break
          \melodiadois }
         \addlyrics \letratoda
      }
    >>
  }
}

\book {
  \bookOutputName "carinito_Eb_baixo"
  \header { poet = "Eb/Mi b (Gm)" }
  \score {
    <<
      \new Staff { \transpose f g' \baixo }
    >>
  }
}

\book {
  \bookOutputName "carinito_tromboneC"
  \header { poet = "C / Dó (Gm)" }
  \score {
    <<
      \new Staff { \transpose f bes'  \melodiaintro \break \melodiaum \break \melodiadois }
    >>
  }
}


\book {
  \bookOutputName "carinito_C_Tuba"
  \header { poet = "C / Dó (Gm)" }
  \score {
    <<
      \new Staff { \transpose f bes'' \baixo }
    >>
  }
}

#(set-global-staff-size 30)
\book {
    \bookOutputName "carinito_Eb_notas"
  \header { poet = "Eb/ Mi b (Gm->Em)" }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
         \accidentalStyle Score.dodecaphonic
        \transpose f g'' { 
            \easyHeadsOn
            \teeny
          \melodiaintro \break
          \melodiaum \break
          \melodiadois }
         \addlyrics \letratoda
      }
    >>
    \layout {
    \context {
      \Voice
      \consists \Gravador_nome_notas
    }
	    \context {
	      \Score 
	      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
			}
    }
  }
}