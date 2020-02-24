\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
%#(set-global-staff-size 16)

\header {
  encodingsoftware = "MuseScore 2.0.3.1"
  encodingdate = "2017-01-04"
  title = Caravan
  composer = "Duke Ellington"
}

\layout {
  \context {
    \Score
    skipBars = ##t
  }
  \context {
  }
  \set Score.markFormatter = #format-mark-box-letters
}

parteum =  \relative c'' {
  \clef "treble" \key as \major \time 2/4 | 
  \tempo 4=120 
  \repeat volta 2 {
    \mark \default c2 ~ | 
    c2 ~ | 
    c8 des8 c8 g8 | bes8 c8 e8 g,8 | 
    bes2 ~ | bes2 ~ | bes8 c8 des8 c8 | 
    des8 c8 b8 g8 | bes2 ~ | bes2 ~ | 
    bes8 c8 b8 bes8 | a8 as8 g8 ges8 | 
    f2 ~ | f2 ~ | f2 | \Coda R2 | \break
  }
  \mark \default f'2 | 
  d4 c8. g16 ~ | g2 ~ | g8. f16 e8 f8 | c'2 | 
  g4 f8. c16 ~ | c2 | R2 | 
  es'2 | c4 bes8. f16 ~ | f2 ~ | f4 es8 f8 | as8. as16 ~ as4 ~ | 
  as4 bes8 as8 | g2 | des2 
  \DCapoCoda
  f'2 ~ \mark \default | 
  f8 ges8 f8 c8 | 
  es2 | 
  des2 | 
  f2 ~ | 
  f8 g8 f8 c8 | 
  es2 | 
  d2 | 
  es2 ~ | 
  es8 f8 es8 des8 | 
  bes2 | 
  f'4 e4 | 
  es4. f,8 ~ | 
  f8 g8 as8 bes8 | 
  c2 ~ | 
  c4 c4
}

letratoda = \lyricmode {
  Night and stars a -- bove that shine so bright
  The mys -- tery of their fad -- ing light
  That shines up -- on our ca -- ra -- van
  _ _ _ _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ _ _ _  _
  This is so ex -- cit -- ing
  You are so in -- vit -- ing
  Rest -- ing in my arms
  As I thrill to the ma -- gic charms
  Of you be -- side me here be -- neath the blue
  My dream of love is com -- ing true
  With -- in our desert cara -- van
}

letratodacorde = \lyricmode {
    Night and stars a -- bove that shine so bright
  The mys -- tery of their fad -- ing light
  That shines up -- on our ca -- ra -- van
   Sleep up -- on my shoul -- der as we creep
   A -- cross the sand so I may keep
   The me -- mory of our cara -- van
  This is so ex -- cit -- ing
  You are so in -- vit -- ing
  Rest -- ing in my arms
  As I thrill to the ma -- gic
  charms Of you
 %  be -- side me here be -- neath the blue
%   My dream of love is com -- ing true
%   With -- in our desert cara -- van
}


\book {
  \bookOutputName "caravan_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new Staff <<
      \new Voice = "saxalto" {
        \transpose bes g' {
        \parteum
        }
      }
      >>
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "caravan_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new Staff <<
      \new Voice = "trompete" {
        \transpose bes c' {
          \parteum
           \bar "|."
        }
      }
      >>
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "caravan_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new Staff <<
      \new Voice = "trombone" {
        \parteum
         \bar "|."
      }
              \addlyrics \letratoda
      >>
    >>
    \layout {}
    \midi {
      \tempo 4 = 130
    }
  }
}

#(set-global-staff-size 30)
\book {
  \bookOutputName "caravan_Eb_notas"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new Staff <<
        \accidentalStyle Score.dodecaphonic
      \new Voice = "saxalto" {
        \transpose bes g' {
          \easyHeadsOn
          \teeny
        \parteum
         \bar "|."
        }
      }
      >>
    >>
    \layout {
      \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    }
  }
}

\version "2.18.2"

\include "../cifra-formatos.ly"
\include "cifra_caravan.ly"


#(set-global-staff-size 15)

\book {
  \bookOutputName "caravan_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
            \unfoldRepeats
             \parteum
             \bar "|."
           }
      }
             \new ChordNames \with {
               \consists "Bar_engraver"
                \override BarLine #'stencil = \barracifra
             }
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratodacorde
    >>
           \include "../imprimirsoletras.ly"
  }
}
