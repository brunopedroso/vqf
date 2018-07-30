\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 14)

\header{
  title = "Ângelus"
  composer =  "Milton Nascimento"
  copyright = "(copyleft) - CC BY-SA 4.0"
}

parte_um= \relative c'' {
  \time 2/4
  \clef G
  \key c \major

    \mark \default |

    c'4 c8 a8~ | a2 |
    c4 c8 a8~ | a2 |
    g4 g8 e8~ | e2~ | e2 | r2 | \break

    a4 a8 g8~ | g2 |
    a4 a8 g8~ | g2 |
    e4 e8 d8~ | d2~ | d2 | r2 | \break

    e4 e8 c8~ | c2 |
    g'4 g8 e8~ | e2 |
    a4 a8 g8~ | g2 | d'2~ | d4. r8 | \break

    e4 e8 c8~ | c2 |
    e4 e8 d8~ | d2 |
    c4 c8 c8  | a4 c4 | a2 | g2~ | \break
    g2 | r2 | \break

}

parte_dois = \relative c' {
  \time 2/4
	\clef G
	\key c \major

    \mark \default |

    c''4 c8 a8~ | a2 |
    c4 c8 a8~ | a2 |
    g4 g8 e8~ | e2~ | e2 | r2 | \break

    a4 a8 g8~ | g2 |
    a4 a8 g8~ | g2 |
    e4 e8 d8~ | d2~ | d2 | r2 | \break

    e4 e8 c8~ | c2 |
    g'4 g8 e8~ | e2 |
    a4 a8 g8~ | g2 | d'2~ | d4. r8 | \break

    e4 e8 c8~ | c2 |
    e4 e8 d8~ | d2 |
    c4 c8 c8  | a4 c4 | d2~ | d4. r8 | \break

    c4 c8 a8~ | a2 |
    c4 c8 aes8~ | aes2 |
    c4 c8 a8~ | a2 | e'2 | r2 | \break

    e4 e8 c8~ | c2 |
    e4 e8 d8~ | d2 |
    c4 c8 c8  | c4 d4 | c2~ | c2 | r2 | \break


}

\book {
  \bookOutputName "angelus_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new Staff {
        \new Voice = "um" {
          \transpose c c {
            \parte_um
          }
        }
        \new Voice = "dois" {
          \transpose c c {
            \parte_dois
          }
        }
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 160
    \context {
        \Voice
        \consists "Staff_performer"
        }
    }
  }
}

\book {
  \bookOutputName "angelus_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new Staff {
        \new Voice = "um" {
          \transpose bes c {
            \parte_um
          }
        }
        \new Voice = "dois" {
          \transpose bes c {
            \parte_dois
          }
        }
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "angelus_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new Staff {
        \new Voice = "um" {
          \transpose bes g {
            \parte_um
          }
        }
        \new Voice = "dois" {
          \transpose bes g {
            \parte_dois
          }
        }
      }
    >>
    \layout {}

  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "angelus_Eb_notas"
  \header {
    instrument = "Eb"
  }
  \score {
    <<
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "um" {
          \transpose bes g {
            \easyHeadsOn
            \teeny
            \parte_um
          }
        }
        \new Voice = "dois" {
          \transpose bes g {
            \parte_dois
          }
        }
      }
    >>
    \layout {
    \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    }

  }
}

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
