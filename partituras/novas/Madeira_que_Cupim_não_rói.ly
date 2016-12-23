\version "2.18.2" 
\markup { \vspace #2 }
Segno = {
  \mark \markup { \musicglyph #"scripts.segno" }
}

Coda = {
  \mark \markup { \musicglyph #"scripts.coda" }
}

marcaA = {
  \bar "||"
    \once \override Score.RehearsalMark.font-size = #3
    \mark \markup { "A"}
}

marcaB = {
  \bar "||"
    \once \override Score.RehearsalMark.font-size = #3
    \mark \markup { "B"}
}
DSCoda = {
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
   \break
        \mark \markup {\musicglyph #"scripts.coda"}
}
  

flauta = \relative c'' {
  \override Stem.direction = #DOWN
   r2 | e'2\fermata~ |e8 r8 r4 | r8 b-> e-> d-> |
      \Segno
   c4->~ c16 b8 a16 | c b8 a16 g a b8~ | b_[ e-> b-> g->] | e'16_[ b8 g16] e8 fis8~ | fis_[ c'-> a-> fis->] |
   c'16 a8 fis16 dis8 e~ | e8._[ fis16] g_[ a b8] | r8 b-> e-> d-> |c4->~ c16 b8 a16 | c b8 a16 g a b8~ |
   b_[ e-> b-> g->] |  e'16_[ b8 g16] e8 fis8~ | fis4 r16 a8 b16 | c b8 a16 g8 fis |
    \Coda
    e^[ r e'] r |
    r2 
    \marcaA
    \transpose e g {
      \relative g' {r8 gis (cis dis | e4 gis8 ais8~) | ais8_[ fisis (dis d!] | cis2) |
    bis8. dis16 gis g! fis8~ |fis2 | r8 e->~ e16_[ dis (e fis] | gis_[ a gis8)] r4 |
    r2 | r8 dis ais'( gis | ais gis dis b) | cis2~ | cis2 |
    r8 fis->~ fis16_[ e dis cis] | bis_[ dis gis8] r4
    \marcaB
    r8 gis, (cis dis | e4 gis8 ais8~) |
    ais_[ fisis (dis d!] | cis2) | bis8. dis16 gis_[ g! fis8~] | fis2 | r8 gis4-> cis8->~ |
    cis16_[ bis (cis d!] cis_[ b! a gis]) | dis'2~ | dis2 | r8 b16_[ (ais] b_[ cis ais b] | dis8) r8 r4 |
    r2 | r2 | r2 | r2 | r8 cis,4 fis8 |
    b4 a | gis16_[ (a fis gis)] e8 r8 | r2 | r8 bis4.->~ | bis2\( | cis8\) r8 r4 |
    r2 | r8 cis4.\( | dis4\)~ dis8_[ cis16 (dis] | e_[ fis gis8)] r4 |
    r2 | r8 bis4.->~ | bis2 | r4 cis8-> r8 | r8 gis-> cis-> b-> 
      }
    }
    \DSCoda
    e,8 r   e'4\ff\fermata \bar "|."
}

clarinete = \relative c'' {
  \override Stem.direction = #DOWN
   r2 | g'2\fermata~ |g8 r8 r4 | r8 b-> e-> d-> |
      \Segno
   c4->~ c16 b8 a16 | c b8 a16 g a b8~ | b_[ e-> b-> g->] | e'16_[ b8 g16] e8 fis8~ | fis_[ c'-> a-> fis->] |
   c'16 a8 fis16 dis8 e~ | e8._[ fis16] g_[ a b8] | r8 b-> e-> d-> |c4->~ c16 b8 a16 | c b8 a16 g a b8~ |
   b_[ e-> b-> g->] |  e'16_[ b8 g16] e8 fis8~ | fis4 r16 a8 b16 | c b8 a16 g8 fis |
    \Coda
    e^[ r g'] r |
    r2 
    \marcaA
    \transpose e g {
      \relative g'' {r8 gis (cis dis | e4 gis8 ais8~) | ais8_[ fisis (dis d!] | cis2) |
    bis8. dis16 gis g! fis8~ |fis2 | r8 e->~ e16_[ dis (e fis] | gis_[ a gis8)] r4 |
    r2 | r8 dis, ais'( gis | ais gis dis b) | dis2~ | dis2 |
    r8 fis->~ fis16_[ e dis cis] | bis_[ dis gis8] r4 
    \marcaB
    r8 gis (cis dis | e4 gis8 ais8~) |
    ais_[ fisis (dis d!] | cis2) | bis8. dis16 gis_[ g! fis8~] | fis2 | r8 gis,4-> cis8->~ |
    cis16_[ bis (cis d!] cis_[ b! a gis]) | dis'2~ | dis2 | r8 b16_[ (ais] b_[ cis ais b] | dis8) r8 r4 |
    r2 | r2 | r2 | r2 | r8 cis,4 fis8 |
    b4 a | gis16_[ (a fis gis)] e8 r8 | r2 | r8 fis4.->~ | fis2\( | e8\) r8 r4 |
    r2 | r8 cis4.\( | dis4\)~ dis8_[ cis16 (dis] | e_[ fis gis8)] r4 |
    r2 | r8 fis4.->~ | fis2 | r4 e'8-> r8 | r8 gis,-> cis-> b-> 
      }
    }
    \DSCoda
    e,8 r   g'4\ff\fermata \bar "|."
}

saxaltoetrombone = \relative c'' {
  \override Stem.direction = #DOWN
   r2 | gis'2\fermata~ |gis8 r8 r4 | r8 gis-> cis-> b-> |
      \Segno
   a16 fis cis fis a4 | cis16 b8 a16 gis fis e8~ | e_[ e'-> cis-> gis->] | e'16_[ cis8 gis16] e8 fis8~ | fis_[ dis'-> bis-> gis->] |
   dis'16 bis8 gis16 fis8 e~ | e8._[ bis'16] cis_[ dis e8] | r8 gis,-> cis-> b-> | a16 fis cis fis a4 | cis16 b8 a16 gis fis e8~ |
    e_[ e'-> cis-> gis->] | e'16_[ cis8 gis16] e8 fis8~ | fis16 gis fis e dis e dis cis | bis dis8 fis16 e8 dis |
      \Coda
    cis^[ r gis'] r |
    r2 \marcaA
    r8 gis, (cis dis | e4 gis8 ais8~) | ais8_[ fisis (dis d!] | cis2) |
    bis8. dis16 gis g! fis8~ |fis2 | r8 e->~ e16_[ dis (e fis] | gis_[ a gis8)] r4 |
    r2 | r2 | r2 | g!2~ | g!2 |
    r8 fis~ fis16_[ e dis cis] | bis_[ dis gis8] r4 
    \marcaB
    r8 gis, (cis dis | e4 gis8 ais8~) |
    ais_[ fisis (dis d!] | cis2) | bis8. dis16 gis_[ g! fis8~] | fis2 | r8 gis,4-> cis8->~ |
    cis16_[ bis (cis d!] cis_[ b! a gis]) | cis2~ | cis2 | r8 e16_[ (dis] e_[ fis dis e] | gis8) r8 r4 |
    r2 | r2 | r2 | r2 | r8 cis,,4 fis8 |
    b4 a | gis16_[ (a fis gis)] e8 r8 | r2 | r8 dis'4.->~ | dis2\( | gis8\) r8 r4 |
    r2 | r8 cis,4.\( | dis4\)~ dis8_[ cis16 (dis] | e_[ fis gis8)] r4 |
    r2 | r8 dis4.->~ | dis2 | r4 gis8-> r8 | r8 gis-> cis-> b-> 
    \DSCoda
    cis,8 r   gis'4\ff\fermata \bar "|."
}

trompete = \relative c' {
  \override Stem.direction = #DOWN
   r2 | b'2\fermata~ |b8 r8 r4 | r8 b-> e-> d-> |
      \Segno
   c4->~ c16 b8 a16 | c b8 a16 g a b8~ | b_[ e-> b-> g->] | e'16_[ b8 g16] e8 fis8~ | fis_[ c'-> a-> fis->] |
   c'16 a8 fis16 dis8 e~ | e8._[ fis16] g_[ a b8] | r8 b-> e-> d-> |c4->~ c16 b8 a16 | c b8 a16 g a b8~ |
   b_[ e-> b-> g->] |  e'16_[ b8 g16] e8 fis8~ | fis4 r16 a8 b16 | c b8 a16 g8 fis |
    \Coda
    e^[ r g'] r |
    r2 
    \marcaA
    \transpose e g {
      \relative g' {r8 gis (cis dis | e4 gis,8 ais8~) | ais8_[ fisis (dis d!] | cis2) |
    bis8. dis16 gis g! fis8~ |fis2 | r8 e->~ e16_[ dis (e fis] | gis_[ a gis8)] r4 |
    r2 | r8 dis ais'( gis | ais gis dis b) | dis2~ | dis2 |
    r8 fis->~ fis16_[ e dis cis] | bis_[ dis gis8] r4 
    \marcaB
    r8 gis (cis dis | e4 gis,8 ais8~) |
    ais_[ fisis (dis d!] | cis2) | bis8. dis16 gis_[ g! fis8~] | fis2 | r8 gis4-> cis8->~ |
    cis16_[ bis (cis d!] cis_[ b! a gis]) | a2~ | a2 | r8 e16_[ (dis] e_[ fis dis e] | gis8) r8 r4 |
    r2 | r2 | r2 | r2 | r8 cis,4 fis8 |
    b4 a | gis16_[ (a fis gis)] e8 r8 | r2 | r8 fis4.->~ | fis2\( | e8\) r8 r4 |
    r2 | r8 cis4.\( | dis4\)~ dis8_[ cis16 (dis] | e_[ fis gis8)] r4 |
    r2 | r8 fis4.->~ | fis2 | r4 e'8-> r8 | r8 gis,-> cis-> b-> 
      }
    }
    \DSCoda
    e,8 r   e4:32\ff\fermata \bar "|."
}



\book {
  \bookOutputSuffix "Sax Alto Eb"
  \header {
    title = "Madeira que Cupim não Rói"
    composer = "Capiba"
    instrument = "Sax Alto em Eb"
    arranger = "Bloco Vai Quem Fica (transcrito arranjo de Duda)"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "sax" {
	  \oneVoice
	  \time 2/4
	  \clef G
	  \key e \major
	  \saxaltoetrombone
	   
    }
  >>
   \layout {
     \context {
       \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/16)
    }
   }
 }
}

\book {
  \bookOutputSuffix "Trombone em C"
  \header {
    title = "Madeira que Cupim não rói"
    composer = "Capiba"
    instrument = "Trombone em C"
    arranger = "Bloco Vai Quem Fica (transcrito arranjo de Duda)"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
\score {
<<
	\new Voice = "trombone" {
	  \time 2/4
	  \oneVoice
	  \key g \major
	  \clef bass
	  \transpose e g,,{
	  \saxaltoetrombone
	}
	}   
	>>
      }
 }
\book {
  \bookOutputSuffix "Flauta em C"
  \header {
    title = "Madeira que Cupim não Rói"
    composer = "Capiba"
    instrument = "Flauta em C"
    arranger = "Bloco Vai Quem Fica (transcrito arranjo de Duda)"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "flauta" {
	  \oneVoice
	  \time 2/4
	  \clef G
	  \key g \major
	  \flauta	   
    }
  >>
 }
}
\book {
  \bookOutputSuffix "Clarinete em Bb"
  \header {
    title = "Madeira que Cupim não Rói"
    composer = "Capiba"
    instrument = "Clarinete em Bb"
    arranger = "Bloco Vai Quem Fica (transcrito arranjo de Duda)"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "clarinete" {
	  \oneVoice
	  \time 2/4
	  \clef G
	  \key a \major
	  \transpose g a, {
	    \clarinete	   
	  }
    }
  >>
 }
}

\book {
  \bookOutputSuffix "Trompete em Bb"
  \header {
    title = "Madeira que Cupim não rói"
    composer = "Capiba"
    instrument = "Trompete em Bb"
    arranger = "Bloco Vai Quem Fica (transcrito arranjo de Duda)"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "trompete" {
	  \oneVoice
	  \time 2/4
	  \clef G
	  \key a \major
	  \transpose g a {
	    \trompete
	  }
    }
  >>
 }
}

\score {
  <<
	\new Voice = "sax" {
	  \set midiInstrument = #"flute"
	  \voiceOne
	  \time 2/4
	  \clef G
	  \transpose e g {
	    \saxaltoetrombone
	  }
	   
    }
 
    \new Voice = "trombone" {
	  \set midiInstrument = #"trombone"
	  \voiceTwo
	  \time 2/4
	  \clef F
	  \transpose e g,,, {
	    \saxaltoetrombone
	}
      }
       \new Voice = "flauta" {
	  \set midiInstrument = #"flute"
	  \voiceThree
	  \time 2/4
	  \clef G
	    \flauta
      }
       \new Voice = "clarinete" {
	  \set midiInstrument = #"clarinet"
	  \voiceFour
	  \time 2/4
	  \clef G
	    \flauta
      }
         \new Voice = "trompete" {
	  \set midiInstrument = #"trumpet"
	  \voiceFour
	  \time 2/4
	  \clef G
	    \trompete
      }
    >>
    \layout {}
 \midi {
	  \tempo 4 = 118
	    \context {
	    \Voice
	    \consists "Staff_performer"
	  }
	}
      }
