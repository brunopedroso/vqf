\include "../marcaspadronizadas.ly"
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

melodiaprincipal =  \relative c'' {
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
  c4 c4 \bar "|."
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
        \melodiaprincipal
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
          \melodiaprincipal
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
        \melodiaprincipal
      }
      >>
    >>
    \layout {}
    \midi {
      \tempo 4 = 130
    }
  }
}

\version "2.18.2"