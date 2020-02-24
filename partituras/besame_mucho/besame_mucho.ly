\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title = "Bésame mucho"
  composer = "Consuelo Velázquez Torres"
}


#(set-global-staff-size 17)

parteum = \relative c' {
    \key g \major \time 4/4 
    \repeat volta 2 {
    e4 e8 [ e8 ~ ] e2 ~ | 
    e4. b8 e fis g a 
    | 
    b4. a8 ~ a2 ~ | 
    a2. r4 | 
    \tuplet 3/2 {a4 a  a } \tuplet 3/2 {b4 b  b   }
    \tuplet 3/2  {c4 c c } \tuplet 3/2  {dis e fis }
    | 
    b,1 | 
    R1 | 
    e4 e8 [ e8 ~ ] e2 ~ | 
    e2 \tuplet 3/2 {
        e4 d4 c4 }
    | 
    b4. a8 ~ a2 ~ | 
    a2. r4 | 
    \tuplet 3/2 {e'4 b  g } \tuplet 3/2 { b4 g  e } | 
    \tuplet 3/2  {g4 fis e } \tuplet 3/2  {fis4 e dis } | 
    e2. r4 | R1
    }
}


letraum = \lyricmode {
  Bé -- sa -- me, _ bé -- é -- sa -- me mu -- cho
  Co -- mo si fue -- ra_es -- ta no -- che
  La úl -- ti -- ma vez
  
  Bé -- sa -- me, bé -- sa -- me mu -- cho
  Que ten -- go mie -- do_a per -- der -- te
  Per -- der -- te des -- pués
  
%   Bé -- sa -- me, bé -- sa -- me mu -- cho
%   Co -- mo si fue -- ra es -- ta no -- che
%   La úl -- ti -- ma vez
%   
%   Bé -- sa -- me, bé -- sa -- me mu -- cho
%   Que ten -- go mie -- do a per -- der -- te
%   Per -- der -- te des -- pués  
}


partedois =  \relative c'' { 
    a8 a ~ a a16  a16  a8 g8 ~ g8 fis16 a |
    g8 g ~ g g16  g16  g8 fis8 ~ fis8 e16 g |
    \tuplet 3/2  {
        fis4 fis4 fis4 }
    \tuplet 3/2  {
        fis4 g4 a4 }
    | 
    b2. r4 | 
    a8 a ~ a a16  a16  a8 g8 ~ g8 fis16 a |
    g8 g ~ g g16  g16  g8 fis8 ~ fis8 e16 g |
    \tuplet 3/2  {
        fis4 fis4 fis4 }
    \tuplet 3/2  {
        g4 g4 g4 }
    | 
    fis2. r4 \bar "|."
}


letradois = \lyricmode { 
  Quie -- ro te -- e -- ner -- te muy cer -- ca
  Mi -- i -- rar -- me en tus o -- jos
  Ver -- te jun -- to a mí
  Pien -- sa que ta -- al -- vez ma -- a -- ña -- na
  Yo ya es -- ta -- ré _ le -- jos
  Muy le -- jos de aquí
}


letratoda = \lyricmode {
  \letraum
  \letradois
}

\book {
  \bookOutputName "besame_mucho_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose f c' {
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
  \bookOutputName "besame_mucho_C"
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
  \bookOutputName "besame_mucho_Bb"
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
  \bookOutputName "besame_mucho_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose f c' {
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
\include "cifra_besame_mucho.ly"

#(set-global-staff-size 16)

\book {
  \bookOutputName "besame_mucho_letra"
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