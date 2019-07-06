\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 16)

\header{
  title = "Pierrot Apaixonado"
  composer = "Noel Rosa e Heitor dos Prazeres"
}

parteum = \relative c' {
	\key bes \major
  	f8 \mark \default f f f | f4 e8 g~ |g f4. | r2
	\break
	f8 f f f | f4 d8 a'~ |a g4. | r
	\bar "pierrot_apaixonado_letra" \break
	g8 |  g g g a |  bes4 a8 g~ |g f 
	\bar "pierrot_apaixonado_letra" \break
	f g | a4 g8 f~ | f ees 
	\bar "pierrot_apaixonado_letra" \break
	ees f | g4 f8   ees~ | ees d4. | r8
	\bar "pierrot_apaixonado_letra" \break
}

letraum = \lyricmode {
 	
    Um pier -- rô a -- pai -- xo -- na -- do
    Que vi -- vi -- a só can -- tan -- do
    Por cau -- sa de_u -- ma co -- lom -- bi -- na
    A -- ca -- bou cho -- ran -- do,
    a -- ca -- bou cho -- ran -- do
    
}


partedois = \relative c' {
	\repeat volta 2 {\mark \default g' f g | f g f g | f4 g8  f~ | f2 | r8
	\bar "pierrot_apaixonado_letra" \break
	aes g aes | g aes g aes | g4 aes8 g~ | g2 | r4.
	\bar "pierrot_apaixonado_letra" \break
	f8 | g g g a | bes4 c8 d~ | d c 
	\bar "pierrot_apaixonado_letra" \break
	bes a | g4. f8 | bes g bes g | bes4 c8 bes8~ | }
	\alternative {
	  { bes2\fermata | r8 \bar "pierrot_apaixonado_letra" \break  }
	  { bes4\fermata s8.... \bar "|."}
	}

}

letradois = \lyricmode { 

    A co -- lom -- bi -- na_en -- trou num bu -- ti -- quim
    Be -- beu, be -- beu, sa -- iu as -- sim, as -- sim
    
    Di -- zen -- do: Pi -- er -- rô, ca -- ce -- te!
    Vai to -- mar sor -- ve -- te com o ar -- le -- quim!
    
    Um gran -- de amor tem sem -- pre_um tris -- te fim
    Com o pier -- rô a -- con -- te -- ceu as -- sim
    Le -- van -- do es -- se gran -- de chu -- te
    Foi to -- mar ver -- mu -- te com a -- men -- do -- im
}

letratoda = {
  \letraum
  \letradois
}

\book {
  \bookOutputName "pierrot_apaixonado_Eb"
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
            \skip 256 \bar "pierrot_apaixonado_letra" \break 
            \unfoldRepeats \partedois
          }
        }
        \addlyrics \letratoda
      }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "pierrot_apaixonado_Bb"
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
            \skip 256 \bar "pierrot_apaixonado_letra" \break 
            \unfoldRepeats \partedois
          }
        }
        \addlyrics \letratoda
      }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "pierrot_apaixonado_C"
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
            \skip 256 \bar "pierrot_apaixonado_letra" \break 
            \unfoldRepeats \partedois
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
  \bookOutputName "pierrot_apaixonado_Eb_notas"
  \header {
    instrument = "Para instrumentos em Eb"
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
            \skip 256 \bar "pierrot_apaixonado_letra" \break 
            \unfoldRepeats \partedois
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

\include "cifra_pierrot_apaixonado.ly"
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
#(set-global-staff-size 15)

\book {
  \bookOutputName "pierrot_apaixonado_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
             \parteum
             \unfoldRepeats
             \partedois
           }
      }
             \new ChordNames \with {
               \consists "Bar_engraver"
             }
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
