\header{
  title = "Índio quer apito"
  composer = "Haroldo Lobo e Milton de Oliveira"
}
\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

%#(set-global-staff-size 17)

parteum = \relative c'' {
	\key bes \major
	\time 2/4
	\repeat volta 2 {
	g2 \mark \default  | f8 g f g | d2  | 
	\break
	g8 g f f d c 
	\bar "indio_quer_apito_letra" \break
	c c d g, g g g2 |  r
	}

}

letraum = \lyricmode {
 	
	Ê ê ê ê ê ê 
	Ín dio quer a pi to se não der pau vai co mer

}


partedois = \relative c'' {
  g8 \mark \default g g g | f g f g | d4 bes |
  \bar "indio_quer_apito_letra" \break 
  r8 bes8 bes c | d4 d8 c8 | \tuplet 3/2 {d4 c bes} | a4 g4 | r2 
  \bar "indio_quer_apito_letra" \break
  g'8 g g g | f g f g | d4 bes4 |
  \bar "indio_quer_apito_letra" \break
  bes8 bes c cis | d4 r | d8 d e fis | g4 g4 | s8..... \bar "|."


}

letradois = \lyricmode { 

	Lá no ba na nal mu lher de bran co 
	Deu pa ra ín dio co lar es qui si to 
	Ín dio viu pre sen te mais bo ni to 
	Eu não quer co lar! Ín dio quer a pi to!

}

letratoda = {
  \letraum
  \letradois
}
\book {
  \bookOutputName "indio_quer_apito_Eb"
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
            \skip 256 \bar "indio_quer_apito_letra" \break
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
  \bookOutputName "indio_quer_apito_C"
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
            \skip 256 \bar "indio_quer_apito_letra" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 140
    }
  }
}

\book {
  \bookOutputName "indio_quer_apito_Bb"
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
            \skip 256 \bar "indio_quer_apito_letra" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

#(set-global-staff-size 33)
\book {
  \bookOutputName "indio_quer_apito_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose bes g' {
            \easyHeadsOn
            \teeny
            \parteum
            \skip 256 \bar "indio_quer_apito_letra" \break
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

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
#(set-global-staff-size 20)

\book {
  \bookOutputName "indio_quer_apito_letra"
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
