\include "../formatoversos.ly"
\include "../nomedasnotas.ly"
#(set-global-staff-size 19)

\header{
 title = "Saca-rolhas"
 composer = "Zé da Zilda"
 
}


parteum = \relative c'' {
	\key bes \major
	\time 2/4
	\repeat volta 2 {
	\tuplet 3/2 {g4 \mark \default bes a } | \tuplet 3/2 {g f ees } | d
 	\bar "saca_rolhas_letra" \break
 	r8 d g ges f e ees2 |
 	\break
 	r8 c c ees | g fis g fis | g fis g ees | d2
	\break
	r8 bes bes d | g fis g fis | g fis g gis | a8. fis16~ fis4 |
	\break
	r8 d a' g | fis4 r | 
	\break
	r8  d bes'a | } 
	\tuplet 3/2 {g4 } 
	\bar "saca_rolhas_letra" \break
	}

letraum = \lyricmode {
 
	(gar/garra) Dei xa-as á guas ro lar
	As á guas vão ro lar
	Gar ra fa chei a eu não que ro ver so brar
	Eu pas so-a mão no sa ca sa ca sa ca ro lhas
	E be bo-a té me a fo (gar)
}


partedois = \relative c' {
	
	\mark \default \tuplet 3/2 { g' a } | \tuplet 3/2 {bes4 a g } | f8 ees4 c16 d16 | ees2 ~|
	\break

	\tuplet 3/2 { ees4 g a } | \tuplet 3/2 { bes a g } | g8 d4 bes16 c16 | d4. 
	\bar "saca_rolhas_letra" \break

	d8 g fis g fis g fis g gis a fis4. | r8
	\bar "saca_rolhas_letra" \break

	d a' g | g8. fis16 ~ fis4 | r8  
	\bar "saca_rolhas_letra" \break
	d bes' a |  \tuplet 3/2 {<a g> (g) bes4 a}

}

letradois = \lyricmode { 

	Se-a po lí cia por is so me pren der
	Mas na úl ti ma ho ra me sol tar
	Eu pe go-o sa ca sa ca sa ca ro lhas
	Nin guém me-a gar ra
	Nin guém me-a gar-ra
	(Dei xa-as...)
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "saca_rolhas_Eb"
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
  \bookOutputName "saca_rolhas_Bb"
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
	\layout {}
  }
}

\book {
  \bookOutputName "saca_rolhas_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose bes bes' {
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
	  \tempo 4 = 120
	}
  }
}

#(set-global-staff-size 30)
\book {
  \bookOutputName "saca_rolhas_Eb_notas"
  \header {
    instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes g' {
            \easyHeadsOn
            \teeny
            \parteum
            \pulalinha
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
	}}
  }
}
\version "2.18.2" % necessary for upgrading to future LilyPond versions.
#(set-global-staff-size 20)

\book {
  \bookOutputName "saca_rolhas_letra"
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
