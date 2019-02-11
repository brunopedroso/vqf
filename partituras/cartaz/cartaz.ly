
\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

\header {
  encodingsoftware = "Lilypond / recording midi from Walkband"
  encodingdate = "2018-07-08"
  composer = "Fagner"
  title = "Cartaz"
}

#(set-global-staff-size 16)


lalaia = \relative c'' {
  c1 ~ | c2 \tuplet 3/2 {d4 c bes} | \break
  \tuplet 3/2 { a bes a} \tuplet 3/2 {g a g} 
  \tuplet 3/2 {f g f} 
}
intro = \relative c''  {
  \time 4/4
  \key f \major
  \lalaia
  \tuplet 3/2 {e, f e} | c1  | r \break
  \lalaia
  \tuplet 3/2 {e4 f g} | f1 ~ | r |
  
}

queromedeitar = \relative c'' {
  r8 c c c c bes4 c8 ~ |c c c c c bes4 a8 ~ |  a f bes4 a g8~|
}
parteum = \relative c'' {
 \queromedeitar
  g8 g a a g4 r4 |
  \break
  \queromedeitar 
  g8 a4 g4.r4 |
  
}

partedois = \relative c'' {
  r4 g8 g g4 g8 g | g f4  d f a8 | \break
  r4 a8 a g f4 g8 ~ | g g g f a g4.  | \break
  r4 g8 g g4 g8 g | g f4  bes c a8 |
  r8 a a a g4 f8 g8 ~ | g f g f a4 g4 | f8 ( g f2.)
  
}
letraum = \lyricmode {
  La  -- aá ai ai ai ai ai ai ai ai
ai ai ai ai ai ai aai 
La -- aá ai ai ai ai ai ai ai ai
ai ai ai ai ai ai ai...

Eu so -- nhei com vo -- cê
Eu que -- ro me dei -- tar
Nu -- ma tar -- de as -- sim, na -- mo -- rar
En -- tre o azul do céu
E o ver -- de do mar
Tan -- ta coi -- sa ain -- da há...
}

letradois = \lyricmode {
  A -- ma -- nhã tu -- do po -- de acon -- te -- cer
Ho -- je_a nos -- sa vi -- da é pe -- que -- na
A -- ma -- nhã tu -- do po -- de anoi -- te -- cer
Se vo -- cê vem co -- mi -- go
Eu não cho -- ro mais...
}

letratoda = \lyricmode {
  \letraum
  \letradois
}

\book {
  \bookOutputName "cartaz_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose f g {
            \intro
            \pulalinha
            \marcaA
            \parteum
            \pulalinha
            \marcaB
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
  \bookOutputName "cartaz_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose f d' {
            \intro
            \pulalinha
            \marcaA
            \parteum
            \pulalinha
            \marcaB
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
  \bookOutputName "cartaz_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose f f {
            \intro
            \pulalinha
            \marcaA
            \parteum
            \pulalinha
            \marcaB
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 129
    }
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "cartaz_Eb_notas"
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
            \intro
            \pulalinha
            \marcaA
            \parteum
            \pulalinha
            \marcaB
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
}'#(set-global-staff-size 20)

\book {
  \bookOutputName "cartaz_letra"
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
}'
