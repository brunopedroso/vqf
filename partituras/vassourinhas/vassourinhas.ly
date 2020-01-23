\version "2.18.2" 

base = \relative c''' {

  \partial 4 f8 e \bar "||" f e f g  |
  \mark \markup { \musicglyph #"scripts.segno" }
  \repeat volta 2 {
    f4 bes,8 bes | bes4 \grace { c16_( bes} a8) bes | c4 ees8 d |
    ees d ees f | ees4 c8 c | c4 \grace { d16_( c} bes8) c | d4 f8 e | f e f g |
    f ees d c | bes aes g f | ees4 g8 g | g ees' d c | c bes f bes |
    bes a g a \bar "||"
    \mark \markup { \musicglyph #"scripts.coda" }
  }
  \alternative {
    {bes f'~ f e | f e f g}
    {bes,4 g'~ | g f }
  }
  \repeat volta 2 {
    ees a, | d c | bes f | c' bes |
    a  c  | f e | f   d | ees d | g, c |
    d c | f, bes | c bes | a g'  | f a, | 
  }
  \alternative {
    {bes g'~ | g f}
    {bes,8 f'~ f e | f e f g}
  }
  \bar "||"
 \cadenzaOn
      \stopStaff
      \repeat unfold 1 {
          s1
          \bar ""
        }
    \once \override TextScript.extra-offset = #'( 0 . -3.0 )
        \once \override TextScript.word-space = #1.5
        <>^\markup { \center-column { "Ao " \musicglyph #"scripts.segno" "e " \line { \center-column {\musicglyph #"scripts.coda" }} } }
         \repeat unfold 3 {
          s1
          \bar ""
        }
        % Resume bar count and show staff lines again
     \startStaff
   \cadenzaOff
   %\break
        \mark \markup {\musicglyph #"scripts.coda"}
    bes,4 bes\fermata 
    \bar "|." 
}

floreioA = \relative c'' {
  f16 c b! c f c b! c | f c b! c f ees d c | d d cis d f d cis d | f d cis d g f d bes | \break
  a c b! c f c b! c | f c b! c f ees d c | d d g f d f c' bes | f f ees' d c b d c | \break
  fis, g a g fis g ees c | g c ees g c ees d c | ees d a bes c bes f g |\break 
  a g cis, d ees d c bes | g c ees g c ees d c | f e ees c a f ees c | bes4\staccato g'~ | g f\staccato |
  r4 c16 d c bes | a c ees g f ees d ees | f f, g a bes c d ees | f ees d c b d f aes | \break 
  g f ees g bes d c bes | a\staccato r ges'16 ees c a fis e | f
}


\book {
  \bookOutputSuffix "Sax Alto Eb"
  \header {
    title = "Frevo das Vassourinhas"
     composer =  \markup {
        \left-align \column {
        "Matias da Rocha e"
        "Joana Batista Ramos"
        " "
        }
     }
    instrument = "Sax Alto em Eb"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "sax" {
	  \oneVoice
	  \time 2/4
	  \clef G
	  \key g \major
	  \transpose bes g {
          \override Stem.direction = #DOWN
	   \base
           \break
            s2 
           \break
           \mark \markup {"Floreio n. 1"  }
           \floreioA
	}
	   
    }
  >>
 }
}

\book {
  \bookOutputSuffix "Clarinete e Sax Tenor em Bb"
  \header {
    title = "Frevo das Vassourinhas"
    composer =  \markup {
\left-align \column {
"Matias da Rocha e"
"Joana Batista Ramos"
" "
}
}
    instrument = "Clarinete e Sax Tenor em Bb"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "clarinete" {
	  \oneVoice
	  \time 2/4
	  \clef G
	  \key g \major
	  \transpose bes c {
          \override Stem.direction = #DOWN
	   \base
           \break
            s2 
           \break
           }
          \transpose bes c' {
           \mark \markup {"Floreio n. 1"  }
           \floreioA
	}
	   
    }
  >>
 }
}
\book {
  \bookOutputSuffix "Instrumentos em C"
  \header {
    title = "Frevo das Vassourinhas"
    composer =  \markup {
\left-align \column {
"Matias da Rocha e"
"Joana Batista Ramos"
" "
}
}
    instrument = "Flauta Transversal e Trombone em C"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "trombone" {
	  \oneVoice
	  \time 2/4
	  \clef G
	  \key f \major
	  \transpose c c, {
          \override Stem.direction = #DOWN
	   \base
           \break
            s2 
           \break
           }
           \mark \markup {"Floreio n. 1"  }
           \floreioA
	   
    }
  >>
 }
}
\book {
\score {
     <<
	\new Voice = "saxaltomidi" {
          \set midiInstrument = #"alto sax"
	  \oneVoice
          \voiceOne
	  \time 2/4
	  \clef G
	  \key g \major
          \unfoldRepeats
          \base
          \floreioA
	   
    }
  >>
  \midi {
    \tempo 4 = 140
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
 }
}
