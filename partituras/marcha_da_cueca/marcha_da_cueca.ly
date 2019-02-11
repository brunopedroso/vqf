\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
%#(set-global-staff-size 21)

\header{
 title = "Marcha da Cueca"
 composer = "Livardo Alves"
}

parteum = \relative c'' {
	\key bes \major
	\partial 4 { d8. \mark \default c16~} 
	\Segno
	\repeat volta 2 {
	  c8 g4. | r4 c8. bes16~ | bes8 f 
	  \bar "marcha_da_cueca_letra" \break 
	  bes bes | bes bes bes g | a a a g \bar "||"
	}
	\alternative {
	  {f ees d  c | g' f4. | r4 d'8. c16}
	  {f,8 f g a | c bes4.}
	}
}

partedois = \relative c'' {
  \mark \default
  r8 d8 d c | \repeat volta 2 {
    ees c4. | 
  \bar "marcha_da_cueca_letra" \break
  r8 c c bes | d bes4. | 
  \bar "marcha_da_cueca_letra" \break
  r8 bes a g | f f
  \bar "marcha_da_cueca_letra" \break
  f f | g g a a | c bes4.^\markup{\italic{\large "Fine"}} \bar "||" \Coda
  }
  \alternative {
    { r8 d d c }
    { r4 d8. c16}
  }
  \DSFine
}

letraum = \lyricmode { 
  Eu ma -- to, eu ma -- to
  Quem rou -- bou mi -- nha cu -- e -- ca
  Pra fa -- zer pa -- no de pra -- to
  %Adicionado pelo ritornello
  Eu ma -- zer pa -- no de pra -- to
}

letradois = \lyricmode { 
  Mi -- nha cu -- e -- ca ta -- va la -- va -- da
  Foi um pre -- sen -- te que-eu ga -- nhei da na -- mo -- ra -- da
  
  %Adicionado pelo ritornello
  Mi -- nha cu
  Eu ma
  
  %Variação hipotética
  %Mi -- nha cu -- e -- ca ta -- va en -- car -- di -- da
  %Foi um pre -- sen -- te que ga -- nhei de minha que -- ri -- da
  
  
}

letratoda = {
 \letraum
 \letradois
}

\book {
  \bookOutputName "marcha_da_cueca_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "sax alto" {
          \transpose bes g' {
            \parteum
            \pulalinha
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
  }
}

\book {
  \bookOutputName "marcha_da_cueca_Bb"
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
            \pulalinha
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
  }
}

  \bookOutputName "marcha_da_cueca_C"
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
            \pulalinha
            \partedois
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

\version "2.18.2" % necessary for upgrading to future LilyPond versions.
#(set-global-staff-size 20)

\book {
  \bookOutputName "marcha_da_cueca_letra"
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
