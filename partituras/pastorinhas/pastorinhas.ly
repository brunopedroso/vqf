\include "../formatoversos.ly"
#(set-global-staff-size 14)

\header{
  title = "As Pastorinhas"
  composer = "pastorinhas_letra"
}

parteum = \relative c' {
  \key g \minor
  \time 2/4

  r4  \mark \default d' | bes' fis | a2 | g |
  \break
  r4 d | g d  |  f2 | ees2  |
  \break
  \tuplet 3/2 {r4 c d} |    \tuplet 3/2 { ees g fis} | a2 | a 
  \break
  \tuplet 3/2 {r4 fis g} |  \tuplet 3/2 {a d a} |  d2~ | d |
  \break
  r4 d | c bes   | bes2 | ees,2 |
  \break
  \tuplet 3/2 { r4 a c } | \tuplet 3/2 { bes a fis }  | a2 | g2 |
  \break
  \tuplet 3/2 { r4 d' c } | \tuplet 3/2 { bes a g } |  e2 | a2 | 
  \break
  \tuplet 3/2  { r4 fis g} | \tuplet 3/2 {a fis a } | g4 r4 | r2 |
  \break

}

letraum = \lyricmode {

  A-es tre la d'al va 
  No céu des pon ta
  E a lu a-an da ton ta 
  Com ta ma nho-es plen dor
  E-as pas to ri nhas 
  Pra con so lo da lu a
  Vão can tan do na ru a 
  Lin dos ver sos de-a mor


}


partedois = \relative c' {
  \key g \major
  r4 \mark \default b' | d b' | a4. g8~ | g4 
  \bar "pastorinhas_letra" \break
  r8 b8 |  a g4 fis8 |  a g e e  | g4. fis8~ | fis2
  \break
  r4 d | e c' | b4. a8~ | a4
  \bar "pastorinhas_letra" \break
  r8 c8 |  b2 | r8 a8 g fis | a g fis g  | b4 g | d8\staccato
  \bar "pastorinhas_letra" \break
  r8 b4 d b' | a4. g8~ | g2 |  
  \break
  r8 g fis g | \tuplet 3/2 {d'4 b a} | a4. g8~ | g2 |
  \break
  r8 g g g | \tuplet 3/2 {g4 a bes} | b4. d8~ | d2 |
  \break
  \tuplet 3/2 { b4 g b } | \tuplet 3/2 { a fis a } g2 ~| g2\fermata \bar "|."

}

letradois = \lyricmode {

  Lin da pas to ra 
  Mo re na, da cor de ma da le na
  Tu não tens pe na de mim
  Que vi vo ton to com o teu o lhar
  Lin da cri an ça 
  tu não me sais da lem bran ça 
  Meu co ra ção não se can sa
  De sem pre, sem pre te-a mar

}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "pastorinhas_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes g {
            \parteum
            \pulalinha
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
  \bookOutputName "pastorinhas_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose bes c {
            \parteum
            \pulalinha
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
  \bookOutputName "pastorinhas_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \set midiInstrument = #"trombone"
          \transpose bes bes {
            \parteum
            \pulalinha
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
      \tempo 4 = 90
      \context {
        \Voice 
          \consists "Staff_performer"
      }
      }
  }
}




\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
#(set-global-staff-size 20)

\book {
  \bookOutputName "pastorinhas_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
               \intro
             \parteum
             \partedois
           }
      }
  %           \new ChordNames 
  %           \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
