
\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

\header {
  encodingdate = "2018-02-05"
  title = "Trenzinho do Caipira"
  source = "Edson"
  composer = "Villa-Lobos"
  encodingsoftware = "Audiveris 5.0.0"
}

parteum =  \relative e'' {
    \time 2/4 
    \key c \major
    \times 2/3  { e8 \marcaA e8 e8 }
    \times 2/3  { e8 d8 c8  } |
    e4 e4 | \break
    \times 2/3 { g8 g8 g8 }
    \times 2/3 { g f e} | 
    f4  r | \break
    \times 2/3  {f8   f8 f8 }
    \times 2/3  {f8 e8 d8  } | 
    f4  f | \break
    \times 2/3 {a8   a8 a8}
    \times 2/3 {a8 g8 f8  } | 
    g4 c,4 | \break
}

partedois = \relative e'' {
  \marcaB
  \times 2/3  {
      c'8   c8 c8
    }
    \times 2/3  {
      c8 b8 a8
    }
    | 
    b4   e,4 | \break
    \times 2/3  {
      a8 a8 a8
    }
    \times 2/3  {
      a8 g8 f8
    }
    | 
    g2 | \break
    \times 2/3 {f8   f8  f8}
    \times 2/3 {f8 e8 d8}
    | 
    \times 2/3  {
      e8   e8 \bar "" \break e8
    }
    \times 2/3  {
      e8 d8 c8
    }
    | 
    \times 2/3  {
      d8   d8 \bar "" \break d8
    }
    \times 2/3  {
      d8 c8 b8
    }
    | 
    a4.  \bar "" \break  a8| 
    d16 d d d d d c b  | 
    a4. \bar "" \break a8 | 
    d16 d d d d d  c b | 
    a2   \fermata \fermata
  \bar "|."
}

letraum = \lyricmode {
  Lá vai o trem com_o me -- ni -- no
  Lá vai a vi -- da_a ro -- dar
  Lá vai ci -- ran -- da_e des -- ti -- no
  Ci -- da -- de_e noi -- te_a gi -- rar
}

letradois = \lyricmode {
  (E) Lá vai o trem sem des -- ti -- no
  Pro di -- a no -- vo_en -- con -- trar
  Cor -- ren -- do vai pe -- la ter -- ra
  (E) Vai pe -- la ser -- ra
  (E) Vai pe -- lo mar
  Can -- tan -- do pe -- la ser -- ra do lu -- ar
  Cor -- ren -- do_en -- tre_as es -- tre -- las a vo -- ar
  No ar no ar no ar no ar no ar
}

letratoda = {
  \letraum
  \letradois
}

% The score definition
\book {
  \bookOutputName "trenzinho_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
        \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c c {
            \parteum
             \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 60
    }
  }
}


\book {
  \bookOutputName "trenzinho_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose f g, {
            \parteum
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "trenzinho_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c a, {
            \parteum
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "trenzinho_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose c a, {
            \easyHeadsOn
            \teeny
            \parteum
            \partedois
          }
        }
        \addlyrics \letratoda
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