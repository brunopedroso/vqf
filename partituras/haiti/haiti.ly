\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"


\header {
  title = "Haiti"
  composer = "Caetano Veloso"
}

#(set-global-staff-size 16)

intro = \relative c' {
   \key f \minor
	\time 4/4
	\repeat volta 4 {
	\marcaA c16 c8. r8 c c4 r8 c | c16 c8. r8 f f  des des c }
}

parteum = \relative c'' {
  \break \marcaB
  \unfoldRepeats \repeat volta 4 {r16 aes g f f f f f f f f f f f f f | 
  \tuplet 3/2 { f8 f f  } f bes bes ges ges f 
  }
}

introtuba = \relative c {
   \key f \minor
	\time 4/4
	\repeat volta 4 {
	\marcaA c16 c8. r8 c c4 r8 c | c16 c8. r8 f f  des des c }
}

partedois = \relative c'' {
  \break \marcaC
  f8 f16 e \tuplet 3/2 {f8 e f~} f4 \tuplet 3/2 {f8 e es} |
  \repeat volta 2 {
    f8. g16 ~ g8 d ~ d2 | d8. e16~ e8 cis ~ cis2
  }
}

letraintro = \lyricmode {
_ _ _ _ _ _ _ _ _ _ _ _
}

letraum = \lyricmode {
  Quan -- do vo -- cê for con -- vi -- da -- do pra su -- bir no a -- dro
  Da fun -- da -- ção ca -- sa de Jor -- ge_A -- ma -- do
  Pra ver do al -- to a fi -- la de sol -- da -- dos, qua -- se to -- dos pre -- tos
  Dan -- do por -- ra -- da na nu -- ca de ma -- lan -- dros pre -- tos
  De la -- drões mu -- la -- tos e ou -- tros qua -- se bran -- cos
  Tra -- ta -- dos co -- mo pre -- tos
  Só pra mos -- trar aos ou -- tros qua -- se pre -- tos
  (e_são qua -- se to -- dos pre -- tos)
  % E aos qua -- se bran -- cos po -- bres co -- mo pre -- tos
%   Co -- mo é que pre -- tos, po -- bres e mu -- la -- tos
%   E qua -- se bran -- cos qua -- se pre -- tos de tão po -- bres são tra -- ta -- dos
%   E não im -- por -- ta se os olhos do mun -- do in -- tei -- ro
%   Pos -- sam es -- tar por um mo -- men -- to vol -- ta -- dos pa -- ra o lar -- go
%   On -- de os es -- cra -- vos eram cas -- ti -- ga -- dos
%   E ho -- je um ba -- tu -- que um ba -- tu -- que
%   Com a pu -- re -- za de me -- ni -- nos uni -- for -- mi -- za -- dos de es -- co -- la se -- cun -- dá -- ria
%   Em dia de pa -- ra -- da
%   E a gran -- de -- za épi -- ca de um po -- vo em for -- ma -- ção
%   Nos atrai, nos des -- lum -- bra e es -- ti -- mu -- la
%   Não im -- por -- ta na -- da:
%   Nem o tra -- ço do so -- bra -- do
%   Nem a len -- te do fan -- tás -- ti -- co,
%   Nem o dis -- co de Paul Si -- mon
%   Nin -- guém, nin -- guém é ci -- da -- dão
%   Se vo -- cê for a fes -- ta do pelô, e se vo -- cê não for
%   Pen -- se no Hai -- ti, re -- ze pe -- lo Hai -- ti 
%   O Hai -- ti  é  aqui 
%   O Hai -- ti não é  aqui 
%   E na TV se vo -- cê vir um de -- pu -- ta -- do em pâ -- ni -- co mal dis -- si -- mu -- la -- do
%   Di -- an -- te de qual -- quer, mas qual -- quer mes -- mo, qual -- quer, qual -- quer
%   Pla -- no de edu -- ca -- ção que pa -- re -- ça fá -- cil
  % Que pa -- re -- ça fá -- cil e rá -- pi -- do
%   E vá re -- pre -- sen -- tar uma ame -- a -- ça de de -- mo -- cra -- ti -- za -- ção
%   Do en -- si -- no do pri -- mei -- ro grau
%   E se es -- se mes -- mo de -- pu -- ta -- do de -- fen -- der a ado -- ção da pe -- na ca -- pi -- tal
%   E o ve -- ne -- rá -- vel car -- de -- al dis -- ser que vê tan -- to es -- pí -- ri -- to no fe -- to
%   E ne -- nhum no mar -- gi -- nal
%   E se, ao fu -- rar o si -- nal, o ve -- lho si -- nal ver -- me -- lho ha -- bi -- tu -- al
%   No -- tar um ho -- mem mi -- jan -- do na es -- qui -- na da rua so -- bre um sa -- co
%   Bri -- lhan -- te de li -- xo do Le -- blon
%   E quan -- do ou -- vir o si -- lên -- cio sor -- ri -- den -- te de São Pau -- lo
%   Di -- an -- te da cha -- ci -- na
%   cen -- to_e on -- ze pre -- sos in -- de -- fe -- sos, mas pre -- sos são qua -- se to -- dos pre -- tos
%   Ou qua -- se pre -- tos, ou qua -- se bran -- cos qua -- se pre -- tos de tão po -- bres
%   E po -- bres são co -- mo po -- dres e to -- dos sa -- bem co -- mo se tra -- tam os pre -- tos
%   E quan -- do vo -- cê for dar uma vol -- ta no Ca -- ri -- be
%   E quan -- do for tre -- par sem ca -- mi -- si -- nha
%   E apre -- sen -- tar sua par -- ti -- ci -- pa -- ção in -- te -- li -- gen -- te no blo -- queio a Cu -- ba
}

letradois = \lyricmode {
Pen -- se no Ha -- i -- ti, re -- ze pe -- % lo_Ha --i -- ti 
(lo)O_Ha -- i -- ti  é  a -- qui 
O_Ha -- i -- ti não é  a -- qui 

}
letratoda = \lyricmode {
  \letraintro
  \letraum
  \letradois
}

\book {
  \bookOutputName "haiti_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \tempo 4 = 80 {
            \transpose f g {
            \intro
            \parteum
%             \skip 256 \bar "haiti_letra" \break
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
%				\trackB
        \new Voice = "saxalto" {
          \tempo 4 = 80 {
            \unfoldRepeats {
              \transpose f g {
              \intro
              \parteum
%             \skip 256 \bar "haiti_letra" \break
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
  \bookOutputName "haiti_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose aes g {
            \intro
            \parteum
%             \skip 256 \bar "haiti_letra" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
    }
  }
}

\book {
  \bookOutputName "haiti_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose f a {
            \intro
            \parteum
%             \skip 256 \bar "haiti_letra" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
    }
  }
}

#(set-global-staff-size 40)
\book {
  \bookOutputName "haiti_Eb_notas"
  \header {
     title = \markup {\fontsize #-3 "Haiti"}
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \easyHeadsOn
          \teeny
          \transpose aes g {
            \intro
            \parteum
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
#(set-global-staff-size 20)

\book {
  \bookOutputName "haiti_letra"
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
