\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"

#(set-global-staff-size 17)

\version "2.18.2"
% automatically converted by musicxml2ly from /home/GuigUse/Nextcloud/Musica/2018-vqf/a-ra/a-ra-trompetes.xml

\header {
  encodingdate = "2018-02-08"
  title = "A Rã"
  subtitle = "(melodia)"
  composer = "João Donato"
}
parteum =  \relative d'' {
  \clef "treble" \key f \major \time 2/4 |
  \tempo 4=120 
   r4 r16 d16 d16 d16 |
   \repeat volta 2 {
  d4 r16 d16 d16 d16 |
  d16 e16 e8 \bar "" \break
  r16 d16 d16 d16 |
  d4 r16 d16 d16 d16 |
  d16 e16 e8 \bar "" \break 
  r16 f16 f16 f16
  f4 r16 f16 f16 f16 |
  f16 g16 g8 \bar "" \break
  r16 e16 e16 e16
  e4 r16 e16 e16 e16 |
  e16 f16 f8 \bar "" \break
  r16 d16 d16 d16 |
  d4 r16 d16 d16 d16 |
  d16 e16 e8 \bar "" \break
  r16 d16 d16 d16 |
  d4 r16 d16 d16 d16 |
  d16 e16 e8 \bar "" \break
  r16 f16 f16 f16
  f4 r16 f16 f16 f16 |
  f16 g16 g8 \bar "" \break
  r16 e16 e16 e16
  e4 r16 e16 e16 e16 |
  e16 f16 f8 \bar "" \break
  r16 e16 e16 e16 |
  e4 r16 e16 e16 e16 |
  e16 f16 f8 \bar "" \break
  r16 e16 e16 e16 |
  e4 r16 e16 e16 e16 |
  e16 f16 f8 \bar "" \break
  r16 e16 e16 e16 |
  e4 r16 e16 e16 e16 |
  e16 f16 f8 \bar "" \break
  r16 e16 e16 e16 |
  e2 ~ |
  e4 r16 d d d 
}
 }

letraum = \lyricmode {
  Co -- ro de cor
  Som -- bra de som de cor
  De mal me quer
  De mal me quer de bem
  De bem me diz
  De me di -- zen -- do assim
  Se -- rei fe -- liz
  Se -- rei fe -- liz de flor
}

letradois = \lyricmode {
  De flor em flor
  De sam -- ba_em sam -- ba_em som
  De vai e vem
  De ver -- de ver -- de ver
  Pé de ca -- pim
  Bi -- co de pe -- na pio
  De bem te vi
  A -- ma -- nhe -- cen -- do sim
  Per -- to de mim
  Per -- to da cla -- ri -- dade
  Da ma -- nhã
  A gra -- ma a la -- ma tudo
  É mi -- nha_ir -- mã
  A ra -- ma_o sa -- po_o salto
  De u -- ma rã
}

letrapedaco = \lyricmode {
  De cor em
}
letratoda = {
  \letraum
  \letradois
  \letrapedaco
}

\book {
  \bookOutputName "a_ra-melodia_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes f' {
            \parteum
          }
        }
        \addlyrics \letratoda
      }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "a_ra-melodia_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose bes bes {
            \parteum
          }
        }
        \addlyrics \letratoda
      }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "a_ra-melodia_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c bes {
            \parteum
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