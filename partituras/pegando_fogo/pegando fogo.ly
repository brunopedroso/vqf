
\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 17)

\header {
  title = "Pegando Fogo"
  composer = "Gal Costa"
  encodingsoftware = "Lilypond"
  encodingdate = "2018-02-05"
  copyright = "(copyleft) CC-BY-SA 4.0"
}

parteum =  \relative c' {
  \time 2/4 
  \clef "treble" \key f \major 
  s8 \marcaA c d e | 
  g8 f8 e8 f8 bes8 a8 gis8 a8 | \break
  c8. g16 ~ g4 |
  r2 | 
  c8. g16 ~ g4 | r2 | 
  
  d'8. a16 ~ -. a2 r4 | \break
  a8 bes8 b8 c8 d8 c8 bes8 fis8 | 
  a8 g8 fis8 g8 d'4. r8 | \break
  c8 d8 c8 bes8 a4 -. g4 -. | 
  f2 | r2 \break
}

partedois = \relative c' {
  \marcaB
  \times 2/3  {
    d'4 d4 d4
  }
  \times 2/3  {
    d4 d4 d4
  }
  | 
  d2 | cis2 | \break
  \times 2/3 { 
    c4 c d
  } 
  \times 2/3 {
    es4 d c
  } | 
  bes2 | r | \break
  \times 2/3 {bes4 bes bes}
  \times 2/3 {bes4 f g } |
  a4. c8 ~ |c2 | \break
  \times 2/3 {
    b4 b b
  }
  \times 2/3 {
    b c d
  }
  e2 \bar "|." 
}
letraum =  \lyricmode {
  Meu co -- ra -- ção a -- ma -- nhe -- ceu pe -- gan -- do fo -- go,
  fo -- go, fo -- go
  Foi u -- ma mo -- re -- na que pas -- sou per -- to de mim
  E que me dei -- xou as -- sim

}

letradois = \lyricmode {
  Mo -- re -- na bo -- a que pas -- sa
  Com sua gra -- ça in -- fer -- nal
  Me -- xen -- do com nos -- sa ra -- ça
  Dei -- xan -- do_a gen -- te até mal
}


letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "pegando_fogo_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose f d' {
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
  \bookOutputName "pegando_fogo_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose f f {
            \parteum
             \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 180
    }
  }
}

\book {
  \bookOutputName "pegando_fogo_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose f g {
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
  \bookOutputName "pegando_fogo_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose f d' {
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
        \context {
      \Score 
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
	}
    }
  }
}