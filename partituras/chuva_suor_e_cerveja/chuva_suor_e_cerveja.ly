\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title = "Chuva, Suor e Cerveja"
  composer = "Caetano Veloso"
}


%#(set-global-staff-size 12)

parteum = \relative c'' {
	\key g \major
	\time 2/4
	\partial 4 d8 \mark \default d |
	d d c c | r b \bar "chuva_suor_e_cerveja_letra" \break 
	d d | d d c c | r b r \bar "chuva_suor_e_cerveja_letra" \break
	a | g fis g a | r c4. | r2 |
	r4 \bar "chuva_suor_e_cerveja_letra" \break
	e8 e | e e d d |
	r c \bar "chuva_suor_e_cerveja_letra" \break
	e e | e e d d | r c16 c \bar "chuva_suor_e_cerveja_letra" \break
	c8 c16 c |
	c8 b c d | r g4. | r2 | r4 \bar "chuva_suor_e_cerveja_letra" \break
	d8 d | d d c c | r \bar "chuva_suor_e_cerveja_letra" \break
	b16 b d8 d16 d | d8 d c c | r \bar "chuva_suor_e_cerveja_letra" \break
	b b a | g a b c | r e4 \bar "chuva_suor_e_cerveja_letra" \break
	cis8 | 
	r e4 d8 | r g4 e8 |
	r g4 e8 | fis e d b | r2 | r | \break
	c8 e4 cis8 |
	r e4 d8 | r g4 e8 | r g4 e8 | r g4 e8 | fis e d g |
	}


letraum = \lyricmode {
 	
	Não se per ca de mi im
	Não se_es que ça de mi im
	Não de sa pa re ça
	Que_a chu va tá ca in do_E 
	quan do_a chu va co me ça
	Eu aca bo per den do_a ca be ça
	Não sai a do meu lado
	Se gu re_o meu pier rot mo lha do
	E va mos la dei ra_a bai xo
	A cho que_a chu va_a ju da_a gen te_a se ver
	Ve nha ve ja dei xa bei ja se ja
	O que Deus qui ser
}


partedois = \relative c'' {
    r8. \bar "chuva_suor_e_cerveja_letra" \break
    \mark \default g'16 b b8 fis16 |
    a a8 e16 g g8 d 16 | fis fis8 \bar "chuva_suor_e_cerveja_letra" \break
    c16 e e8 b16 |
    d8 c a d | r8. \bar "chuva_suor_e_cerveja_letra" \break
    g16 b b8 fis16 | a a8 e16 g g8 d 16 | fis fis8 \bar "chuva_suor_e_cerveja_letra" \break
    c16 e e8 b16 |
    d8 c a g | r8. \bar "chuva_suor_e_cerveja_letra" \break
    g'16 b b8 fis16 |
    a a8 e16 g g8 d 16 | fis fis8 \bar "chuva_suor_e_cerveja_letra" \break
    c16 e e8 b16 |
    d8 c a d | r8. \bar "chuva_suor_e_cerveja_letra" \break
    g16 b b8 fis16 |
    a a8 e16 g g8 d 16 | fis fis8 \bar "chuva_suor_e_cerveja_letra" \break
    c16 e e8 b16 |
    d8 e fis g |\break
  r4. b8 | d g, b d, | g4 d8 d \bar "|." 
}

letradois = \lyricmode { 
  A gen te se_em ba la se_em bo ra se_em bo la
  Só pára na por ta da_i gre ja
  A gen te se o lha se bei ja se mo lha
  De chu va su or e cer veja

}

letratres = \lyricmode {
  la rá lo ré lo rá
}

letratoda = {
  \letraum
  \letradois
  \letradois
  \letratres
}

\book {
  \bookOutputName "chuva_suor_e_cerveja_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose g a {
            \parteum
%             \skip 256 \bar "chuva_suor_e_cerveja_letra" \break
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
  \bookOutputName "chuva_suor_e_cerveja_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose g c {
            \parteum
%             \skip 256 \bar "chuva_suor_e_cerveja_letra" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 170
    }
  }
}

\book {
  \bookOutputName "chuva_suor_e_cerveja_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose g d {
            \parteum
%             \skip 256 \bar "chuva_suor_e_cerveja_letra" \break
            \partedois
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
  \bookOutputName "chuva_suor_e_cerveja_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose g a {
            \easyHeadsOn
            \teeny
            \parteum
%             \skip 256 \bar "chuva_suor_e_cerveja_letra" \break
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
    \context {
      \Score 
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
	}
}
  }
}
\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
'#(set-global-staff-size 20)

\book {
  \bookOutputName "chuva_suor_e_cerveja_letra"
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
