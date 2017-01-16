
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
}


 intro = \relative c' {
  \key f \major

  \mark "intro"

  r4 r16  f16 g16 a16

  bes16 bes8 bes16  d16 d8 d16   f16 d f d

     r16  f,8 f16   \break


  a16 a8 a16        c16 c8 c16   e16 d e d

     r16  a8 a16   \break


  g16 g8 g16    bes16 bes8 bes16   d8. c16   r16 g8 a16  f2

}

parteum = \relative c' {
  \key f \major

  \mark "primeira"

  \repeat volta 2 {

    r4 r16 c'8 c16   c16 a8 r16 r4   r4 r16 bes8 bes16   bes16 g8 r16 r4

    \break

    r4 r16 bes8 bes16   bes8.  a16~  a16  g8 g16   g8. g16  r16 a8 a16   a16 f8 r16

    \break

  }

}

letraum = \lyricmode {

  Ben gue lê ê   Ben gue lê ê   Ben gue lê ó ma mãe zim ba  Ben gue lê ê

}

partedois = \relative c' {
  \key f \major

  \mark "segunda"

  r4 r16 f8 f16   bes16 bes8 bes16    bes8 bes8   bes8. d16~  d16 d8 bes16~   bes16 bes8 d16~  d4

  \break

  r4 r16 c8 c16   c16 c8 c16    c8 c8   c8. c16~  c16 c8 c16  a16 g16 f8~  f4

  \break

  r4 r16 c'8 bes16   bes16 g8 g16   g16 e8 e16   e16 e8 e16   e16 d8 c16

  e16 r8 e16~   e16 d8 c16   e16 r8 e16   e16 d8 c16

  e16 g8 g16   g16 g8 f16  a2   r16 g8 g16   g16 g8 f16  f2

  \break

  r16 g8 g16     g16 g8 f16  a2   r16 g8 g16   g16 g8 f16

}

letradois = \lyricmode {

  Tra ca tra ca eu vi nã nã ta ta re co cou

  Tra ca tra ca eu vi nã nã ta ta re co co ou

  Ô Ki zom ba  ki zom ba  ki zom ba  va mo sa ra vá   quem tá no reino  va mo sa ra  vá

  Ô va mo sa ra vá   ô va mo sa ra vá

  Ô va mo sa ra vá   ô va mo sa ra


}

partetres = \relative c' {
	\key f \major

	\mark "terceira"

  f4

  r16 c'8 d16   ees16 ees8 ees16  ees16 ees8 d16

  c8 c8

  r16 c8 d16   ees16 ees8 ees16   ees16 ees8 d16

  \break

  c4

  r16 c8 d16   ees16 ees8 ees16   ees16 ees8 d16

  f16

  r8 c16   c16 c8 bes16   d16 r8 bes16   bes16 bes8 a16

  \break

  c16 r8 a16  a16 a8 g16   bes2~ bes2  f2~ f4. r8


}

letratres = \lyricmode {

  vá
  ma mãe zim ba che gou tá no ter reiro
  ca fi o to pe diu pra fa lar
  ma mãe zim ba man dou me cha mar
  va mu sa ra vá   va mu sa ra vá   va mu sa ra vá

  ê

}



\book {
  \bookOutputSuffix "C"
  \header {
   title = "Benguelê"
   composer = "Pixinguinha"
   instrument = "Melodia - Instrumentos em C"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ) - CC BY-SA 4.0"
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose g' g' {
        \intro
      }
    }
    >>
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose g' g' {
        \parteum
      }
    }
    \new Lyrics \lyricsto "um" {
      \letraum
    }
    >>
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose g' g' {
        \partedois
      }
    }
    \new Lyrics \lyricsto "um" {
      \letradois
    }
    >>
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose g' g' {
        \partetres
      }
    }
    \new Lyrics \lyricsto "um" {
      \letratres
    }
    >>
  }

}

\book {
  \bookOutputSuffix "Bb"
  \header {
   title = "Benguelê"
   composer = "Pixinguinha"
   instrument = "Melodia - Instrumentos em Bb"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ) - CC BY-SA 4.0"
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose bes c' {
        \intro
      }
    }
    >>
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose bes c' {
        \parteum
      }
    }
    \new Lyrics \lyricsto "um" {
      \letraum
    }
    >>
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose bes c' {
        \partedois
      }
    }
    \new Lyrics \lyricsto "um" {
      \letradois
    }
    >>
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose bes c' {
        \partetres
      }
    }
    \new Lyrics \lyricsto "um" {
      \letratres
    }
    >>
  }

}

\book {
  \bookOutputSuffix "Eb"
  \header {
   title = "Benguelê"
   composer = "Pixinguinha"
   instrument = "Melodia - Instrumentos em Eb"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ) - CC BY-SA 4.0"
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose bes g {
        \intro
      }
    }
    >>
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose bes g {
        \parteum
      }
    }
    \new Lyrics \lyricsto "um" {
      \letraum
    }
    >>
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose bes g {
        \partedois
      }
    }
    \new Lyrics \lyricsto "um" {
      \letradois
    }
    >>
  }

  \markup { \vspace #2 }

  \score {
    <<
    \new Voice = "um" {
      \time 2/4
      \transpose bes g {
        \partetres
      }
    }
    \new Lyrics \lyricsto "um" {
      \letratres
    }
    >>
  }

}


\score {
  <<
  \new Voice = "um" {
    \time 2/4
    \transpose g' g' {
      \intro
      \parteum
      \partedois
      \partetres
    }
  }
  >>
  \midi {
    \tempo 4 = 100
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}



\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
