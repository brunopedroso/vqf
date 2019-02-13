\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

\header{
  title = "Cabelo de Fogo"
  composer = "José Nunes de Souza"
  source = "Ouvido e Arranjo de Duda"
}

#(set-global-staff-size 17)


parteumsaxalto = \relative c'' {
  \key a \minor
  \time 2/4
  r2 
\repeat volta 2 {
  r2 | f2~ | f
| e4 e8 c | a c e d ~ | d f d b |
} 
\alternative {
{gis b d c ~ | c a4 r8 |}
{gis f' e a, | r2}
}
}

partedoissaxalto = \relative c'' {
    r2 |
    r8 e d b | gis2 |
    r8 f' e c | a2 |
    r8 gis' e ees | d2 | a'4 r | 
    r2 | r8 f4 a8 ~ | a a4 r8 | 
    r8 e4 a8 ~ | a a4 a8 |
    \tuplet 3/2 {gis4 a ais } |
    \tuplet 3/2 {b gis e}
    
 }
 
 partetressaxalto = \relative c'' {
   a'8 e16 fis e8 r |
   \repeat volta 2 {
     r e16 fis e8 r |
     r e16 fis e8 r |
     r e16 fis e8 r |
     r e16 fis e8 a ~ |
     a fis d b |
     fis' e c a |
     e'16 d8 b16 gis8 a ~
   }
   \alternative {
     {a e'16 fis e8 r}
     {a, e'  r d}
   }
 }

parteumtrombone = \relative c'' {
  \time 2/4 \key es \major \partial  8 g8 |
  \repeat volta 2 {
      \mark \markup { \musicglyph #"scripts.segno" } |
      c4 b8 c8 ~ |
      c8 as4 f8 |
      c'4 b8 c8 ~ |
      c8 g4 r8 |
      \compressFullBarRests
      R2*3
      r4 r8 g8
      c4 b8 c8 ~ |
      c8 as4 f8 |
      c'4 d8 ees8 ~ |
      ees4. r8 |
      R2*2
      r2
  }
   \alternative {
        {  r8 c8 r8 g8 }
        {}
      }
       
}



partedoistrombone  = \relative c'' {
         r4 es8 d8 ||
         c8 es d c 
         \repeat volta 2 {
           b2 | 
      r4 g4 |
      c2 | 
      r4 g4 |
      d'2 | 
      r4 g,4 | 
      es'4 es8 d8 | 
      c8 es8 d8 c8 | 
      as8 f'4 f8 ~ | 
      f8 f4 r8 | 
      r8 g4 g8 ~ | % 26
      g8 g4 r8 | 
      R2*2
    }
    \alternative {
      {
        r4 es8 d8 |
         c8 es8 d8 c8
      }
      {
      }
         }
}

partetrestrombrone = \relative c'' {
  r4 r8 c8
  \repeat volta 2 {
   b8 r8 r8 d8 | 
    c8 r8 r8 es8 | 
    d8 r8 r8 f8 | 
    es8 r8 r4 |
    R2*3
  }
  \alternative {
    { r4 r8 c }
      { r8 c r g }
  }
}

codatrombone = \relative c'' {
  r4 ees ~ | ees2  \bar ".|"
}

\book {
  \bookOutputName "cabelo_de_fogo_Eb"
  \header {
    instrument = "Instrumentos em Eb"
  }
  \score {
    <<
	\new Staff {
	  \new Voice = "saxalto" {
	     \parteumsaxalto
	      \break
	      \partedoissaxalto
	      \break
	      \partetressaxalto
	  }
	}
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "cabelo_de_fogo_C"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
    <<
	\new Staff {
	  \new Voice = "tromboneC" {
	    \parteumtrombone
	    \break 
	    \partedoistrombone
	    \break
	    \partetrestrombrone
	    \codatrombone
	  }
	}
    >>
    \layout {}
    \midi {
    \tempo 4 = 170
    \context {
    \Voice \consists "Staff_performer"
    }
  }
  }
}

\book {
  \bookOutputName "cabelo_de_fogo_Bb"
  \header {
    instrument = "Instrumentos em Bb"
  }
  \score {
    <<
	\new Staff {
	  \new Voice = "saxalto" {
	    \transpose bes c' {
	          \parteumtrombone
	    \break 
	    \partedoistrombone
	    \break
	    \partetrestrombrone
	    \codatrombone
	    }
	  }
	}
    >>
    \layout {}
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "cabelo_de_fogo_Eb_notas"
  \header {
    instrument = "Eb"
  }
  \score {
    <<
	\new Staff {
	  \accidentalStyle Score.dodecaphonic
	  \new Voice = "saxalto" {
	    \easyHeadsOn
	    \teeny
	     \parteumsaxalto
	      \break
	      \partedoissaxalto
	      \break
	      \partetressaxalto
	  }
	}
    >>
    \layout {
    \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    }
  }
}

  
\version "2.18.2"  '#(set-global-staff-size 20)

\book {
  \bookOutputName "cabelo_de_fogo_letra"
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
