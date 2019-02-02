% Lily was here -- automatically converted by /usr/bin/midi2ly from comportamento geral.mid
\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"


\header {
  title = "Comportamento Geral"
  composer = "Gonzaguinha"
}

parteum = \relative c'' {
  \tempo 2/4 \key a \minor
   \partial 8 a16 \marcaA a |
  \repeat volta 2 { \Segno
  a b b b ~ b8 \pulalinha
  c16 c | c d d d ~ d8 \pulalinha
  d16 c| \tuplet 3/2 {e8 d c} \tuplet 3/2 {e8 d c} |
  }
  \alternative {
    {a8. e16 ~ e4| r4. a16 a |}
    {a8 \pulalinha 
     \marcaB e8 c' b}
  }
}
partedois = \relative c'' {
  \repeat volta 2 {
    a8. e16 ~ e8. \pulalinha
    c'16 | c8 b16 c~ c8 a | \break
    c16 c b8 \tuplet 3/2 {a c c~ } | c16 b8 a16~ a8 \pulalinha 
    b8 | \tuplet 3/2 { c b d ~} d d16 c  | d8 e16 d r8 \pulalinha
    e16 e | e e e d \tuplet 3/2 { e8 d a ~}}
  \alternative {
    {a8 \pulalinha e8 c' b}
    {a4 r8 a16 a }
  }
  \DSFine 
  
  
}

letraum = \lyricmode {
  Vo -- cê de -- ve no -- tar que não tem mais tu -- tu
e di -- zer que não_es -- tá preo -- cu -- pa -- do
Vo -- cê 
% de -- ve lu -- tar pe -- la xe -- pa da fei -- ra
%{ e di -- zer que es -- tá re -- com -- pen -- sa -- do
Vo -- cê de -- ve es -- tam -- par sem -- pre um ar de ale -- gria
e di -- zer: tu -- do tem me -- lho -- ra -- do
Vo -- cê de -- ve re -- zar pe -- lo bem do pa -- trão
e es -- que -- cer que es -- tá de -- sem -- pre -- %} 
ga_-do

}

letradois = \lyricmode {
  Vo -- cê me -- re -- ce, vo -- cê me -- re -- ce
Tu -- do vai bem, tu -- do le -- gal
Cer -- ve -- ja, sam -- ba,_e_a -- ma -- nhã, seu Zé
Se aca -- ba -- rem com_o teu Car -- na -- val?

Vo -- cê me -- %{ re -- ce, vo -- cê me -- re -- ce
Tu -- do vai bem, tu -- do le -- gal
Cer -- ve -- ja, sam -- ba, e ama -- nhã, seu Zé
Se aca -- ba -- rem com o teu Car -- na --%}  val?

Vo -- cê % de -- ve apren -- der a bai -- xar a ca -- be -- ça
% E di -- zer sem -- pre: "Muito obrigado"
% São pa -- la -- vras que ain -- da te dei -- xam di -- zer
% Por ser ho -- mem bem dis -- ci -- pli -- na -- do
% De -- ve pois só fa -- zer pe -- lo bem da Na -- ção
% Tu -- do aqui -- lo que for or -- de -- na -- do
% Pra ga -- nhar um Fus -- cão no juí -- zo fi -- nal
% E di -- plo -- ma de bem com -- por -- ta -- do
% 
% Vo -- cê me -- re -- ce, vo -- cê me -- re -- ce
% Tu -- do vai bem, tu -- do le -- gal
% Cer -- ve -- ja, sam -- ba, e ama -- nhã, seu Zé
% Se aca -- ba -- rem com o teu Car -- na -- val?
% 
% Vo -- cê me -- re -- ce, vo -- cê me -- re -- ce
% Tu -- do vai bem, tu -- do le -- gal
% Cer -- ve -- ja, sam -- ba, e ama -- nhã, seu Zé
% Se aca -- ba -- rem com o teu Car -- na -- val?
% 
% Vo -- cê me -- re -- ce, vo -- cê me -- re -- ce
% Tu -- do vai bem, tu -- do le -- gal
% 
% E um Fus -- cão no juí -- zo fi -- nal
% Vo -- cê me -- re -- ce, vo -- cê me -- re -- ce
% 
% E di -- plo -- ma de bem com -- por -- ta -- do
% Vo -- cê me -- re -- ce, vo -- cê me -- re -- ce
% 
% Es -- que -- ça que es -- tá de -- sem -- pre -- ga -- do
% Vo -- cê me -- re -- ce, vo -- cê me -- re -- ce
% 
% Tu -- do vai bem, tu -- do le -- gal
}

letratoda = \lyricmode {
  \letraum
  \letradois
}

\book {
  \bookOutputName "comportamento_geral_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \tempo 4 = 83 {
            \transpose c g, {
            \parteum
%             \skip 256 \bar "" \break
             \partedois
            }
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
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
           \transpose c g, {
          \tempo 4 = 80 {
            \unfoldRepeats {
              \intro
              \parteum
%             \skip 256 \bar "" \break
              \partedois
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
  \bookOutputName "comportamento_geral_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \tempo 4 = 83 {
            \transpose c a, {
            \parteum
%             \skip 256 \bar "" \break
             \partedois
            }
          }
        }
        \addlyrics \letratoda
      }

    >>
    \layout{
    }
  }
}


#(set-global-staff-size 38)
\book {
  \bookOutputName "comportamento_geral_Eb_notas"
  \header {
     title = \markup {\fontsize #-3 "Comportamento Geral"}
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
           \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {

          \tempo 4 = 83 {
            \easyHeadsOn
            \teeny
            \transpose c e {
            \parteum
%             \skip 256 \bar "" \break
             \partedois
            }
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout{
             \apertacompasso
    \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    }
  }
}

\book {
  \bookOutputName "comportamento_geral_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \tempo 4 = 83 {
            \transpose c e {
            \parteum
%             \skip 256 \bar "" \break
             \partedois
            }
          }
        }
        \addlyrics \letratoda
      }

    >>
    \layout{
    }
  }
}