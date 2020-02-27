\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  source = "Joel Jr. https://www.cifraclub.com.br/tradicional/guantanamera/partituras/"
  title = "Guantanamera"
  composer = "José Martí"
}


#(set-global-staff-size 17)

parteum = \relative c' {
\key f \major \time 4/4  
    \partial 2 {r8 f8 g8 [ f8 ] }| 
    g4 g8 [ f8 ] g8 g4. | 
    r2 r8 g8 a8 [ bes8 ] | 
    a4 f8 [ d8 ] g8 g4. \break | 
    r2 r8 f8 g8 [ f8 ] | 
    g4 g8 [ f8 ] g8 g4. | 
    r2 r8  c8 c8 [ c8 ] | 
    c4. -> bes8 ~ bes8 a4 g8 ~ | 
    g8 e4. r8 c8 d8 [ e8 ] \break | 
    \tuplet 3/2 {f4 a  c } d4. c8 ~| 
    c2 r8 d8 bes8 [ g8 ] | 
    f4 f8  e8  d4. c8 ~  | 
    c2 r2 | 
}


letraum = \lyricmode {
  Yo soy un hom -- bre sin -- ce -- ro
  De don -- de cre -- cen las pal -- mas
  Yo soy un hom -- bre sin -- ce -- ro
  De don -- de cre -- cen las pal -- mas
  Y_an -- tes_de mo -- rir -- me qu -- ie -- ro
  E -- char mis ver -- sos del al -- ma
 

}


partedois =  \relative c'' { 
    d4 d8 [ d8 ] d8 d4. | 
    r2 r8 bes8 d8 
    bes8  | 
    c4 d8 a8 [ c8 ] c4. | 
    R1 | 
    a4 bes8 [ c8 ] d4. c8 ~ | 
    c2 r8 d8 bes8 [ g8 ] | 
    f4 f8 e d4.  c8 ~ | 
    c2 r2
}


letradois = \lyricmode { 
  Guan -- ta -- na -- me -- ra
  Gua -- ji -- ra Guan -- ta -- na -- me -- ra
  Guan -- ta -- na -- me -- ra
  Gua -- ji -- ra Guan -- ta -- na -- me -- ra
  
%   Mi ver -- so es de un ver -- de cla -- ro
%   Y de un car -- min en -- cen -- di -- do
%   Mi ver -- so es de un ver -- de cla -- ro
%   Y de un car -- min en -- cen -- di -- do
%   Mi ver -- so es un cier -- vo he -- ri -- do
%   Que bus -- ca en el mon -- te am -- pa -- ro
%   
%   Guan -- ta -- na -- me -- ra
%   Gua -- ji -- ra Guan -- ta -- na -- me -- ra
%   Guan -- ta -- na -- me -- ra
%   Gua -- ji -- ra Guan -- ta -- na -- me -- ra
%   
%   I am a truth -- ful man from this land of palm tre -- es
%   Be -- fo -- re dying I want to sha -- re the -- se po -- ems of my soul
%   My ver -- ses are light gre -- en
%   But th -- ey are al -- so fla -- ming red
%   
%   I cul -- ti -- va -- te a ro -- se in Ju -- ne and in Ja -- n -- uary
%   For the sin -- ce -- re fr -- iend who gi -- ves me his hand
%   And for the cr -- uel one who would te -- ar out this
%   he -- art with which I li -- ve
%   I do not cul -- ti -- va -- te thist -- les nor nett -- les
%   I cul -- ti -- va -- te a whi -- te ro -- se
%   
%   Cul -- ti -- vo la ro -- sa blan -- ca
%   En ju -- n -- io co -- mo en ene -- ro
%   Cul -- ti -- vo la ro -- sa blan -- ca
%   En ju -- n -- io co -- mo en ene -- ro
%   Pa -- ra el ami -- go sin -- ce -- ro
%   Que me da su ma -- no fran -- ca
%   
%   Guan -- ta -- na -- me -- ra
%   Gua -- ji -- ra Guan -- ta -- na -- me -- ra
%   Guan -- ta -- na -- me -- ra
%   Gua -- ji -- ra Guan -- ta -- na -- me -- ra
%   
%   Y pa -- ra el cr -- uel que me arran -- ca
%   El co -- ra -- zon con que vi -- vo
%   Y pa -- ra el cr -- uel que me arran -- ca
%   El co -- ra -- zon con que vi -- vo
%   Car -- do ni or -- ti -- ga cul -- ti -- vo
%   Cul -- ti -- vo la ro -- sa blan -- ca
%   
%   Guan -- ta -- na -- me -- ra
%   Gua -- ji -- ra Guan -- ta -- na -- me -- ra
%   Guan -- ta -- na -- me -- ra
%   Gua -- ji -- ra Guan -- ta -- na -- me -- ra
%   
%   Con los po -- bres de la tie -- rra
%   Qu -- ie -- ro yo mi suer -- te echar
%   Con los po -- bres de la tie -- rra
%   Qu -- ie -- ro yo mi suer -- te echar
%   El arr -- o -- yo de la sie -- rra
%   Me com -- pla -- ce mas que el mar
}


letratoda = \lyricmode {
  \letraum
  \letradois
}

\book {
  \bookOutputName "guantanamera_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c a {
            \parteum
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
  \bookOutputName "guantanamera_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose f f {
            \parteum
            \partedois
            
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
          \transpose f f {
          \tempo 4 = 170 {
            \unfoldRepeats {        
             \parteum
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
  \bookOutputName "guantanamera_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose f g {
            \parteum
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
  \bookOutputName "guantanamera_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose c a {
            \easyHeadsOn
            \teeny
            \parteum
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

\include "../cifra-formatos.ly"
\include "cifra_guantanamera.ly"

#(set-global-staff-size 14)

\book {
  \bookOutputName "guantanamera_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letraa" {
            \time 4/4
            \parteum
            \partedois
                         
           }
      }
             \new ChordNames \with {
               \consists "Bar_engraver"
                \override BarLine #'stencil = \barracifra
             }
             \acordetodo
             \new Lyrics
             \lyricsto "letraa" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}


