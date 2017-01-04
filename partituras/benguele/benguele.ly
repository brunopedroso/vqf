
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

	bes'

}

letradois = \lyricmode {


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

}


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
  \midi {
    \tempo 4 = 100
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}



\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
