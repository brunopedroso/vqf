\version "2.18.2"

\header {
  title = "Frevo e Ciranda"
  composer = "Capiba (arr. de Duda - 2004)"
  poet = "Frevo-Canção"
}

\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 13)

\layout {
  \context {
    \Score
    skipBars = ##t
  }
}


pretudo = {  \clef "treble^8" \key bes \major \time 2/4}

introgeral = \relative e''''{
  \partial 4. g4 -"Intro" d8 ~
  \bar "||"
  d8 bes4 a8 ~ \bar "||" \mark \markup { \musicglyph #"scripts.segno" }
  a8 r16 c16 es16 d8 c16 | 
  a8 fis8 d8 g8 ~ | 
  g8 r16 bes16 d16 c8 bes16 | 
  d8 c8 bes8 a8 ~ | 
  a8 r16 c16 es16 d8 c16 | 
  es8 d8 c8 bes8 ~ | 
  bes8 g'4 d8 ~ | 
  d8 bes4 a8 ~ | \barNumberCheck #10
  a8 r16 c16 es16 d8 c16 | 
  a8 fis8 d8 g8 ~ | 
  g8 r16 bes16 d16 c8 bes16 | 
  d8 c8 bes8 a8 ~ \bar "||"
  a8 r16 d,16 fis16 -\markup{ \bold\italic {To Coda} } fis8 fis16 | 
  a8 a8 c8 bes8 ~ | 
  bes8 a8 g8 f8 ~ \bar ".|" \break
  f4 %r4 retirado para juntar
}

intromelodia = {
   \partial 4. r8 -"frevo_e_ciranda_letra" r4
  R2 |
   \mark \markup { \musicglyph #"scripts.segno" } | 
  R2*12 | 
  R2 -\markup{ \bold\italic {To Coda} } \bar "||"
  R2 | R2 |
}

melodia =  \relative d''' {
  %\partial 4 retirado para juntar
  d4 | 
  \repeat volta 2 {
    bes'4 g8 bes8 ~ | 
    bes8 a8 g8 bes8 ~ | 
    bes8 g8 \bar "frevo_e_ciranda_letra" \break
    r8 bes8 | 
    bes8 a8 g8 d8 ~ |
    d8 d8 \bar "frevo_e_ciranda_letra" \break
    r8 d8 |
    a'8 g8 f8 g8 ~ 
    g8. d16 bes'8 g8 ~ |
    \bar "||" \break
  }
  \alternative {
    {  g8 r d4 }
    { g8 g8 a8 bes8}
    }
   \repeat volta 2 {
    | 
    c8. a16 c8 c8 | \break
    r16 c8 c16 bes8 a8 |
    g8 r16 d16 bes'8 g8 ~ | \break
    g8. bes16 bes16 a8 g16 |
    d16 d8 d16 fis8 d8 ~ | \break
    d8. d16 a'16 g8 fis16
    \bar "||"
  }
  \alternative {
    {g8. d16 bes'8 g8 ~ | \break
     g8 g8 a8 bes8}
    {g8 r8 r4| R2 %-\markup { \italic {D.S. al Coda}}
     \bar "|."}
    }
    
}


letraintro = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
}

letra = \lyricmode {
  Eu fui à prai a do Jan ga
  Pra ver a ci ran da
  No meu ci ran dar Ci ran da
  
  O mar es ta va tão be lo
  E-um pei xe-a ma re lo
  Eu vi na ve gar Na ve gar
  
  Não e ra pei xe não era
  E ra Ie man já
  Ra i nha
  Dan çan do-a ci ran da
  Ci ran da
  No mei o do mar
  Ci ran da.
  
  Não e ra pei xe não era
  E ra Ie man já
  Ra i nha
  Dan çan do-a ci ran da
  Ci ran da
  No mei o do mar
}

\book {
  \bookOutputSuffix "melodia_C"
  \header {     instrument = "Para Instrumentos em C" }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "Melodia/Voz" {
          \transpose bes g {
          \pretudo
          \introgeral
          \unfoldRepeats
          \melodia 
          }
        }
        \addlyrics  {\letraintro \letra}
    }
    >>
  \layout {}
  \midi {
    \tempo 4 = 160
    \context {
      \Voice
      \consists "Staff_performer"
	    }
  }
}
}

\book {
  \bookOutputSuffix "melodia_Bb"
  \header {     instrument = "Para Instrumentos em Bb" }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose bes a, {
          \pretudo
          \introgeral
          \unfoldRepeats
          \melodia 
          }
        }
        \addlyrics  {\letraintro \letra}
    }
    >>
  \layout {}
%   \midi {
%     \tempo 4 = 160
%     \context {
%       \Voice
%       \consists "Staff_performer"
% 	    }
%   }
}
}
\book {
  \bookOutputSuffix "melodia_Eb"
  \header {     instrument = "Para Instrumentos em Eb" }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes e {
          \pretudo
          \introgeral
          \unfoldRepeats
          \melodia 
          }
        }
        \addlyrics  {\letraintro \letra}
    }
    >>
  \layout {}
%   \midi {
%     \tempo 4 = 160
%     \context {
%       \Voice
%       \consists "Staff_performer"
% 	    }
%   }
}
}

#(set-global-staff-size 20)

\book {
  \bookOutputSuffix "melodia_Eb_notas"
  \header {     instrument = "Eb" }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic        
        \new Voice = "saxalto" {
          \transpose bes e {
            \easyHeadsOn
            \teeny
          \pretudo
          \introgeral
          \unfoldRepeats
          \melodia 
          }
        }
        \addlyrics  {\letraintro \letra}
    }
    >>
  \layout {
  \context {
    \Voice
    \consists \Gravador_nome_notas
  }
  }
%   \midi {
%     \tempo 4 = 160
%     \context {
%       \Voice
%       \consists "Staff_performer"
% 	    }
%   }
}
}#(set-global-staff-size 20)

\book {
  \bookOutputName "frevo_e_ciranda_letra"
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
