
\layout{
	indent = 0
	ragged-right = ##t

    \context {
      \Score
      %\override BarLine #'transparent = ##t
    }
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

  r4 r16 c'8 bes16   bes16 g8 g16   g16 e8 e16   e16 e8 e16   e16 d8 c16   e16 r8 e16~   e16 d8 c16   e16 r8 e16   e16 d8 c16

  \break

  e16 g8 g16   g16 g8 f16  a2   r16 g8 g16   g16 g8 f16  f2

  \break

  r16 g8 g16     g16 g8 f16  a2   r16 g8 g16   g16 g8 f16

  \break

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

  f4 r16 c'8 d16  ees16 ees8 ees16  ees16 ees8 d16  c4



}

letratres = \lyricmode {

  vá ma mãe zim ba che gou tá no rei no

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


\score {
  <<
  \new Voice = "um" {
    \time 2/4
    \transpose g' g' {
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
