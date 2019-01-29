\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"


\header {
  title = "Não existe pecado ao sul do Equador"
  composer = "Chico Buarque"
}

#(set-global-staff-size 26)

intro = \relative c'' {
   \key c \major
	\time 2/4
  s8 \marcaA c8 d c |
  \repeat volta 2 {
    ees2 | r4   b4 | a4. g8~ | g4 a8. g16~ |
  }
  \alternative {
    {g4. f8~ | f4 g4 | f8 e f g8 ~ | g8 c d c |}
    {g16 a8.~a4 ~ | a2 |c,8 r r c'~ }
  }
  c2 ~ |
}

parteum = \relative c'' {
  c8 r \pulalinha
  e,\marcaB f |  g f e g~| g f e g~ | g f e g~ | 
  g r r \pulalinha
  e | a e f d~ | d2 | r8  \pulalinha
  f f g  | a g f a ~ | a g f a~ | a g f a~ |
  a a r \pulalinha
  g | b g f g~ | g2 | r8 \pulalinha
  c c c | c a g c~ | c a g c~ | c a g c~ | 
  c \pulalinha
  a g e'~ | e d c a ~| a2~ | a2 | r8 \pulalinha
  c c c | c b a g~ | g  g g aes~ | aes aes aes a~ | 
  a4. \pulalinha
  a8 | b a g c8
}

partedois = \relative c'' {
  \break
  \repeat volta 2 {
    r8 \marcaC e b d | c e,8 a g~ | g d a' g ~ | g d a' g ~ | 
    \break
    g  e' b d | c e, a g~ | g d a' g ~ | g d a' g ~ |
    g8. \pulalinha
    f16~ f8. e16 ~| e8. d16 ~ d8. cis16~ | cis8 e g bes8 ~ |
    bes a a e'~ | e r d \pulalinha
    a | a e' a, g ~ |  g e' g, f ~ |
    f d' b c |
  }
}

letraintro = \lyricmode {
  La ra la rá 
  la rá rá
  la rá rá 
  la rá la rá iá
  La ra la  
  - rá lá láá!
}

letraum = \lyricmode {
Não e -- xis -- te pe -- ca -- do do la -- do de baixo 
do e -- qu -- a -- dor
Va -- mos fa -- zer um pe -- ca -- do ras -- ga -- do, su -- a -- do,
A to -- do va -- por
Me dei -- xa ser teu es -- cra -- cho, ca -- pa -- cho, teu cacho
Um ri -- a -- cho de amor
Quan -- do_é li -- ção de_es -- cu -- la -- cho,_o -- lha aí, sai de baixo
Que_eu sou pro -- fes -- sor
}

letradois = \lyricmode {
Dei -- xa_a tris -- te -- za pra lá, vem co -- mer, me jan -- tar
Sa -- ra -- pa -- tel, ca -- ru -- ru, tu -- cu -- pi, ta -- ca -- cá
Vê se me u -- sa, me_a -- bu -- sa, lam -- bu -- za
Que_a tu -- a ca -- fu -- za
Não po -- de_es -- pe -- rar
% Dei -- xa_a tris
%  -- te -- za pra lá, vem co -- mer, me jan -- tar
% Sa -- ra -- pa -- tel, ca -- ru -- ru, tu -- cu -- pi, ta -- ca -- cá
% Vê se me es -- go -- ta, me bo -- ta na me -- sa
% Que a tua ho -- lan -- de -- sa
% Não po -- de es -- pe -- rar
}
letratoda = \lyricmode {
  \letraintro
  \letraum
  \letradois
}

\book {
  \bookOutputName "nao_existe_pecado_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
%				\trackB
        \new Voice = "saxalto" {
          \tempo 4 = 125 {
            \intro
            \parteum
%             \skip 256 \bar "" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }

    >>
    \layout{
      \apertacompasso
    }
  }
    \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
%				\trackB
        \new Voice = "saxalto" {
          \tempo 4 = 125 {
            \unfoldRepeats {
              \intro
              \parteum
%             \skip 256 \bar "" \break
              \partedois
            }
          }
        }
       }
    >>
		\midi {}
  }
}

\book {
  \bookOutputName "nao_existe_pecado_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c a {
            \intro
            \parteum
%             \skip 256 \bar "" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
          \apertacompasso
    }
  }
}

\book {
  \bookOutputName "nao_existe_pecado_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c d {
            \intro
            \parteum
%             \skip 256 \bar "" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
          \apertacompasso
    }
  }
}

#(set-global-staff-size 40)
\book {
  \bookOutputName "nao_existe_pecado_Eb_notas"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \easyHeadsOn
          \teeny
          \transpose c a {
            \intro
            \parteum
%             \skip 256 \bar "" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
     \layout {
       \apertacompasso
    \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    }
  }
}
