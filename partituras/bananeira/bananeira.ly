
\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\version "2.18.2"
% automatically converted by musicxml2ly from /home/GuigUse/Nextcloud/Musica/2018-vqf/bananeira/bananeira-p1.mxl

#(set-global-staff-size 15)

\header {
  title = "Bananeira"
  composer = "João Donato"
  encodingsoftware = "Audiveris 5.0.0"
  source = "Songbook emorio-joao-donato-p1.tif"
  encodingdate = "2018-01-15"
  copyright = "(copyleft) CC-BY-SA 4.0"
}

bananeiranaosei = \relative a' {
  c16 c a8 d \bar "" \break
    a16 a | 
    c c a d~d \bar "" \break 
    a c c | 
    a16 a16 d8 a8 \bar "" \break 
    c16 d16 | 
    e16 d16 c16 a16 ~ a8 \bar "" \break 
    d,16 d16  | 
    f f  d8 g8 \bar "" \break
    d16 d16  | 
    f16 f16 d16 g16 ~ g16 \bar "" \break
    d16 f16 f16  | 
    d16 d16 g8 d8 f16 g16  | 
}

nofundodoquintal = \relative a' {
  g2~ | g8 r16 \bar "" \break
  a16 c16 bes a g  | 
  a2 ~ | a8. \bar "" \break
  e'16 g16 f16 e16 d16 |
  e2 ~| e8. \bar "" \break
  e16 g16 f16 e16 d16  | 
  e2 ~ | e4 r8 a,16 a
}
parteum =  \relative a' {
  \time 2/4
  \key d \minor
  \partial 8 \marcaA a16 a16 \Segno \bar ".|"
  \repeat volta 2 {
    \bananeiranaosei      
  }
   \alternative {
     {a16 g16 f16 d16 ~ d8 a'16 a16}
     {a16 g16 f16 d16 ~ d8 \bar "" }
   }
}
partedois = \relative a' {
  \bar "" \break \marcaB a8 \bar "||"
   \nofundodoquintal
}

partetres =\relative a' {
  \DSCoda
  % a16 g16 f16 d16 ~ d8 e'16 e16
  r4. e'16 \marcaC e16  
  \repeat volta 2 {
    d d c8 b8. g16 |
    a8. a16 r8 e'16 e | d d c8 b8. g16 |
    a8. a16 r8 a16 a | g g f8 e8. c16 |
    d8. d16 r8 a'16 a | g g f8 e8. c16 |
  }
  \alternative {
    {d8. d16 r8 e'16 e }
    {d,8. d16 r8 <>^\markup { "Para a parte" \box "B"} a' }
}
  
}
letraum =  \lyricmode {
  ba -- na -- nei -- ra, não sei
  ba -- na -- nei -- ra, sei lá
  a ba -- na -- nei -- ra, sei não
  a ma -- nei -- ra de ver
  
  ba -- na -- nei -- ra, não sei
  ba -- na -- nei -- ra, sei lá
  a ba -- na -- nei -- ra, sei não
  is -- so é lá com vo-cê
  ba -- na
  é lá com vo-cê
}

letradois = \lyricmode {
  se -- rá
  no fun -- do do quin -- tal
  quin -- tal do seu o -- lhar
  o -- lhar do co -- ra -- ção
  Ba -- na
}


letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "bananeira_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose d b {
            \parteum
            \partedois
            \partetres
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "bananeira_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose d d {
            \parteum
            \partedois
            \partetres
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 130
    }
  }
}

\book {
  \bookOutputName "bananeira_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose d e {
            \parteum
            \partedois
            \partetres
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
  \bookOutputName "bananeira_Eb_notas"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose d b {
            \easyHeadsOn
            \teeny
            \parteum
            \partedois
            \partetres
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