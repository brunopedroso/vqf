\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"

#(set-global-staff-size 17)

\header {
  encodingdate = "2018-02-05"
  title = "Pelo Telefone"
  subtitle = "Samba"
  composer = "Donga / Mauro de Almeida"
  encodingsoftware = "Audiveris/Musescore/Lilypond"
  genre = "Samba"
  source = "baseado em superpartituras.com.br"
}

parteum =  \relative f' {
  \repeat volta 2 {
    \key bes \major \time 2/4 | 
    r16 \marcaA bes16 bes bes bes c8 d16 | r16 c16 
    \bar "" \break bes16 a16 g16 f16 bes8 | 
    r16 a16 \bar "" \break
    g16 f16 a8. g16 | 
    es2 |
    r8 \bar "" \break
    c'16 c c d8 es16 | 
    r16 d16 c16 bes16 a16 g16 c8 | 
    r16 bes16 \bar "" \break
    a16 g16 f8. g16 | 
    f2 | \break
  }
}
partedois = \relative f' {
  \repeat volta 2 {
    \marcaB
    bes4 d4 | 
    bes4 ~ bes16 d8 c16 | 
    bes16 a8 g16 f8 a8 ~ | 
    a16 g8 f16 es4 | 
    a4 c4 | 
    a4 ~ a16 c8 bes16 | 
    a16 g8 f16 es8 g8 ~
    g16 f8 es16 d4
  }
}

partetres = \relative f' {
  \break
  r16 \marcaC d8 es16 f8 g8 | 
  r16 c,8 d16 es8 f8 | 
  r16 d8 es16 f8 g8 | 
  r16 c,8 d16 es8 f8 | 
  bes,8 r8 r16 \bar "" \break
}

partequatro = \relative f' {
  \marcaD
  
  bes8 bes16 ~|
  bes16 bes8 bes16 g16 bes16 f8 ~ | 
  f8 es8 r16 \bar "" \break
  a8 a16 ~ | 
  a16 a8 a16 d,16 f16 c8 ~ | 
  c16 bes8.  r16 \bar "" \break
  g'8 g16 ~| 
  g16 g8 g16 g8. f16 | 
  a8 a8 \bar "" \break
  a8 g8 | 
  f8 es8 d8 c8 | 
  bes4 r4 
}
partecinco = \relative c'' {
  r8 \bar "" \break
  \marcaE bes8 bes8 a8 
  \repeat volta 2 {
    | 
    g8. g16 c8. g16 | 
    c8 \bar "" \break
    bes8 ~ bes16 a8 g16 | 
    f8. f16 bes8. f16 | 
    bes8 \bar "" \break 
    a8 ~ a16 g8 f16 | 
    es8. es16 a8. es16 | 
    a8 \bar "" \break 
    g8 ~ g16 f8 es16 | 
    d8. d16 g8. d16 | 
    f8 \bar "" \break 
    bes8 a8 as8 | 
    g8. g16 c8. g16 | 
    c8 \bar "" \break
    es8 ~ es16 d8 c16 | 
    f,8. f16 bes8. f16 | 
    bes8 \bar "" \break
    d8 ~ d16 c8 bes16 | 
    es,8. es16 a8. es16 | 
    a8 \bar "" \break
    g8 ~ g16 f8 a16 | 
    bes8 d,8 g8 f8
  }
  \alternative {
    {bes,8 bes'8 a8 as8}
  {bes,2 \fermata \bar "|."}
  }
}

letraum =  \lyricmode {
  O Che -- fe da po -- lí -- cia
  Pe -- lo te -- le -- fo -- ne man -- da me avi -- sar
  Que na ca -- ri -- o -- ca tem u -- ma ro -- le -- ta pa -- ra se jo -- gar
}

letradois = \lyricmode {
  Ai, ai, ai
  Dei -- xe_as má -- go -- as pra trás, ó ra -- paz
  Ai, ai, ai
  Fi -- ca tris -- te se_és ca -- paz e ve -- rás
}

letratresmudainstrumental = \lyricmode {
  \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4 \skip 4 \skip 4 \skip 4
  \skip 4
}
letraquatro = \lyricmode {  
  To -- ma -- ra que tu a -- pa -- nhes
  Pra nun -- ca mais fa -- zer is -- so
  Rou -- bar a -- mo -- res dos ou -- tros
  E de -- pois fa -- zer fei -- tiço
  
}

letracinco = \lyricmode {
  Olha a ro -- linha, Si -- nhô, Si -- nhô
  Se_em -- ba -- ra -- çou, Si -- nhô, Si -- nhô
  Ca -- iu no lago, Si -- nhô, Si -- nhô
  Do nos -- so_a -- mor, Si -- nhô, Si -- nhô
  Por -- que_es -- te samba, Si -- nhô, Si -- nhô
  É de_ar -- re -- piar, Si -- nhô, Si -- nhô
  Põe per -- na bamba, Si -- nhô, Si -- nhô
  Mas faz go -- zar, Si -- nhô, Si -- nhô
  Olha a ro 
}

letratoda = {
  \letraum
  \letradois
  \letratresmudainstrumental
  \letraquatro
  \letracinco
}

\book {
  \bookOutputName "pelo_telefone_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes g' {
            \parteum
            \partedois
            \partetres
            \partequatro
            \partecinco
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "pelo_telefone_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose bes bes {
            \parteum
             \partedois
             \partetres
             \partequatro
             \partecinco

          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 120
    }
  }
}

\book {
  \bookOutputName "pelo_telefone_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
       \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose bes c' {
            \parteum
            \partedois
            \partetres
            \partequatro
            \partecinco
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}
