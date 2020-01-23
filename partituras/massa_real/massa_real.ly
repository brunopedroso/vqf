\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title = "Massa Real"
  composer = "Caetano Veloso/Gal Costa"
}


#(set-global-staff-size 22)

parteum = \relative c'' {
	\key f \major \time 2/4
	\repeat volta 2 { 
	c8 c c d ~| d c bes a ~ | a2 r | \break
	c8 c c d ~ | d c a g ~ | g2 r| \break
	bes8 bes bes c~| c bes g a ~ | a \bar "" \break
	a a  bes ~ | bes a  f g ~ | g \bar "" \break
	g4 a8 | g f e f ~ | f2 | r2 |
	}
}


letraum = \lyricmode {
  Ho -- je_eu só que -- ro vo -- cê
  Se -- ja do jei -- to que for
  Ho -- je_eu só que -- ro ale -- gri
  -- a_É meu di -- a,_é meu dia
  Ho -- je_eu só que -- ro_a -- mor
%  Ho -- je eu só que -- ro pra -- zer
%  Ho -- je vai ter que pin -- tar
%  Só que -- ro a mas -- sa re -- al
%  É o meu car -- na -- val
%  Ho -- je eu só que -- ro amar

}


partedois =  \relative c'' {
  \break
  f8 f f g ~| g f es d ~ | d4 \bar "" \break
  bes | d bes | c g | c g | a2~ | a4 r | \break
  f'8 f f g ~| g f es d ~ | d4 \bar "" \break
  bes | d bes | cis a | cis a | d2 | \break
 
}

refrao = \relative c'' {
  r4.. d16 | g8. d16 g8. d16 | g8. d16 b4 | 
  g'8. d16 g8. d16 | g8. d16 b4 | \break 
  c8 c c c ~ | c g gis a ~ | a2 | \break
  r4.. d16 | g8. d16 g8. d16 | g8. d16 b4 | 
  g'8. d16 g8. d16 | g8. d16 b4 | \break
  c8 c c c ~ | c g a g ~ | g2 |
}

letradois = \lyricmode { 
  Ho -- je_eu não que -- ro so -- frer
  Não que -- ro ver nin -- guém cho -- rar
  Ho -- je_eu não que -- ro sa -- ber
  De_ou -- vir di -- zer que não vai dar
}

letratres = \lyricmode {
  Vai ter que dar, vai ter que dar
  (ra la ra la ra la ro)
  Es -- se_é o meu car -- na -- val
  Vai ter que dar, vai ter que dar
  (ra la ra la ra la ro)
  Só que -- ro_a mas -- sa re -- al
}

letratoda = \lyricmode {
  \letraum
  \letradois
  \letratres
}

\book {
  \bookOutputName "massa_real_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose f c {
            \parteum
            \partedois
            \refrao
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "massa_real_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose f es {
            \parteum
            \partedois
            \refrao
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout{
    }
  }
    \score {
    <<
      \new Staff {
        \new Voice = "saxalto" {
          \transpose f es {
          \tempo 4 = 170 {
            \unfoldRepeats {        
             \parteum
                \partedois
                \refrao
            }
          }
        }
        }
       }
    >>
		\midi {}
  }

}

\book {
  \bookOutputName "massa_real_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose f f {
            \parteum
            \partedois
            \refrao
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "massa_real_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letraa" {
            \time 2/4
            \parteum
            \partedois
            \refrao             
           }
      }
  %           \new ChordNames 
  %           \acordetodo
             \new Lyrics
             \lyricsto "letraa" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "massa_real_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose f c {
            \easyHeadsOn
            \teeny
            \parteum
            \partedois
            \refrao
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

