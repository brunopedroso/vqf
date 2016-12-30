\version "2.18.2"

intrometais = \relative c' {
  \repeat volta 4 { a8. c16 r4 d8. e16 r4}
  \alternative {
    {a,8. c16~c4 e,2}
    {a8. c16~c4 e,4 r8 c'16 a16}
  }
}
introsopros = \relative c'' {
  \repeat volta 2 { r1 r1}
  \repeat volta 3 {e8 a8 g16 e16 a8 g16 e16 d16 e16 c8 a8 } 
  e'8 a8 g16 e16 a8 g16 e16 d16 e16 c8 c'16 a16
  }

melodiaAA = \relative c'' {
   c16 a8 a8 a8 g16 a4.. c16 | c16 a8 a16 \tuplet 3/2 {a8 a8 g8 } e8 r4 c'16 a16 |
   c16 a8 a8 a8 a16 e8 g8 r4 | 
   \tuplet 3/2 {c8 a8 a8} a8 a8 \tuplet 3/2 {g8 g8 g8} g8 g16 c16 |
   c16 a8 e16~e8 c'16 c16 c16 a8 a8 a8 g16 |
%    a2 r2 
   }

melodiaAB = \relative c'' {
  R1*5
}

meiucaB = \relative c' {
  a8. c16 r4 d8. e16 r4 |a,8. c16 r4 e,2
}

meiucaA = \relative c' {
  r1 | r2..  c'16 a16
}
    
melodiaBA = \relative c'' {
  c16 a8 a8 a8 g16 a4. d16 d16 | \tuplet 5/4 {e8 a,8 a8 a8 g8} a8 g16 a8 a16 a16 a16 |
   c16 a8 a16 c16 a8 g16 e8 d'16 d16 d16 d8 d16 | 
   e8 a,16 a8 g16 a16 r16 r16 c16 a16 a16 c16 r8. |

%    a2 r2 
   }
melodiaBB = \relative c'' {
  R1*4
}
coro = \relative c'' {
  c16 a8 a16 c8 a8 r4. d8 | e16 a,8 a8 a8 a8 g16 a8 r4 |
  c16 a8 a16 c8 a8 r4 r16 d8 d16 | e16 a,8 a16 a16 a8 g16 a8 r8 r16 d8 d16 |
  e16 a,8 a16 a16 a8 g16 a8 r8 r8  a8 | c8 a16 a8 a16 a16 e16 g16 g16 g8 a4 |
}

reintroA = \relative c'' {
  \repeat volta 7 {e8 a8 g16 e16 a8 g16 e16 d16 e16 c8 a8 } 
  e'8 a8 g16 e16 a8 g16 e16 d16 e16 c8 c'16 a16
  }

reintroV = \relative c'' {
  R1*25
  \repeat volta 2 {r1 r1}
  r16 e8 e16 a16 e16 g8 r16 e8 e16 a16 e16 g8 |
  r16 e8 e16 a16 e16 g8 r16 e8 e16 a8 e8 |
  r16 e8 e16 a8 e8 r16 e8 e16 a8 e8 
}
letra = \lyricmode { 
	- - - - - - - - - -
	No ca mi nho é que se vê, 
	a prai a me lhor pra fi car
	Tem a ho ra cer ta pra be ber
	U ma cer ve ja an tes do-al mo ço é mui to bom pra fi car pen san do me lhor!
% 	- - - - - - - - -
	- - - -
	E eu pi so on de qui ser, vo cê-es tá gi ran do me lhor, ga ro ta
	Na a rei a on de-o mar che gou, a ci ran da-a ca bou de co me çar, e e la é!
	E é prai ei ra! Se gu ra bem for te a mão
	E é prai ei ra! Vou lem bran do a re vo lu ção, vou lem bran do a re vo lu ção
	Mas há fron tei ras nos jar dins da ra zão
	- - - - - - - - - -
	E na prai a é que se vê, a-a rei a me lhor pra dei tar
	Vou dan çar uma ci ran da pra be ber
	U ma cer ve ja an tes do al mo ço é mui to bom pra fi car pen san do me lhor!
	- - - -
	Vo cê pi sa on de quer
	Que vo cê se sen te me lhor, ga ro ta
	Na a rei a on de-o mar chegou
	A ci ran da-a ca bou de co me çar, e e la é!
	E é prai ei ra! Se gu ra bem for te a mão
	E é prai ei ra! Vou lem bran do a re vo lu ção, vou lem bran do a re vo lu ção
	Mas há fron tei ras nos jar dins da ra zão
	- - - - - - - - - -
	No ca mi nho é que se vê, 
	a prai a me lhor pra fi car
	Tem a ho ra cer ta pra be ber
	U ma cer ve ja an tes do-al mo ço é mui to bom pra fi car pen san do me lhor!
  
  }
  
cima = \drummode {
%  Shimbau e tomtom
  r1 | r | 
  \repeat volta 2 {r8 hh r8 hh r8 hh r8 hh }
  \repeat volta 56 {
    sn8 hh16 <hh sn> r8 <hh sn> r16 sn16 hh8 sn8 hh
  }
}
baixo = \drummode {
%   Bumbo
  \repeat volta 2 {r1 | r1 }
  \repeat volta 56 {bd4 bd bd bd}
}
\book {
  \bookOutputSuffix "Trompete em Bb"
  \header {
   title = "Praieira"
   composer = "Chico Science"
   instrument = "Trompete em Bb"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ) - CC BY-SA 4.0" 
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
 }
 \score {
  <<
	\new Voice = "trompete" {
	  \set midiInstrument = #"trumpet"
	  \time 4/4
	  \clef G
	  \key d \minor
	  \transpose c f {
	  %\hide Stem
	  \intrometais
	  \melodiaAA
	  \meiucaB
	  \melodiaBA
	  \coro
	  \intrometais
	  \melodiaAA
	  \meiucaB
	  \melodiaBA
	  \coro
	  \intrometais
% 	  \intrometais
	  \melodiaAA
	  a'2 r2
	}
	}
	\new Lyrics \lyricsto "trompete" {
         \letra
     }
      >>
      \layout {}
    }
}
\book {
  \bookOutputSuffix "Sax Alto Eb"
  \header {
   title = "Praieira"
   composer = "Chico Science"
   instrument = "Sax Alto em Eb"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ) - CC BY-SA 4.0" 
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
 }
 \score {
  <<
	\new Voice = "saxalto" {
	  \set midiInstrument = #"alto sax"
	  \time 4/4
	  \clef G
	  \transpose c c' {
	  %\hide Stem
	  \intrometais
	  }
	  \melodiaAA
	  \meiucaB
	  \melodiaBA
	  \coro
	  \intrometais
	  \melodiaAA
	  \meiucaB
	  \melodiaBA
	  \coro
	  \intrometais
% 	  \intrometais
	  \melodiaAA
	  a'2 r2
	}
	\new Lyrics \lyricsto "saxalto" {
         \letra
     }
      >>
      \layout {}
    }
}
\book {
  \bookOutputSuffix "Trombone em C"
  \header {
    title = "Praieira"
    composer = "Chico Science"
    instrument = "Trombone em C"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
    <<
      \new Voice = "metaisb" {
	  \set midiInstrument = #"trombone"
	  \voiceTwo
	  \time 4/4
	  \clef G
	  \unfoldRepeats \transpose c ees \intrometais 
	  \transpose c ees \melodiaAB 
	  \transpose c ees \meiucaB
	  \transpose c ees \melodiaBB
	  \transpose c ees \coro
	  \unfoldRepeats \transpose c ees \intrometais
	  \transpose c ees \melodiaAB 
	  \transpose c ees \meiucaB
	  \transpose c ees \melodiaBB
	  \transpose c ees \coro
	  \unfoldRepeats \transpose c ees \intrometais
	  \unfoldRepeats \transpose c ees \intrometais
	  \transpose c ees \melodiaAB
      }
      >>
  }
}
\book {
  \bookOutputSuffix "Final do Refrão em Bb"
  \header {
    title = "Praieira"
    composer = "Chico Science"
    instrument = "Final Refrão"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
    <<
      \new Voice = "cantoreintro" {
	  \set midiInstrument = #"clarinet"
	  \voiceThree
	  \time 4/4
	  \clef G
	  \unfoldRepeats \transpose c f \reintroV
	  \unfoldRepeats \transpose c f \reintroV
	}
      >>
  }
}

\book {
  \bookOutputSuffix "Sopros Juntos"
  \header {
   title = "Praieira"
   composer = "Chico Science"
   instrument = "Sopros Juntos"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ) - CC BY-SA 4.0" 
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
 }
  \score {
	<<
	\new Voice = "sopros" {
	  \set midiInstrument = #"alto sax"
	  \voiceOne
	  \time 4/4
	  \clef G
	  \unfoldRepeats \transpose c ees \introsopros 
	  \transpose c ees \melodiaAA 
	  \transpose c ees \meiucaA
	  \transpose c ees \melodiaBA
	  \transpose c ees \coro
	  \unfoldRepeats \transpose c ees \reintroA
	  \transpose c ees \melodiaAA 
	  \transpose c ees \meiucaA
	  \transpose c ees \melodiaBA
	  \transpose c ees \coro
	  \unfoldRepeats \transpose c ees \reintroA
	  \unfoldRepeats \transpose c ees \reintroA
	  \transpose c ees \melodiaAA
	  \transpose c ees {a'2 r2}
	  
	}
	\new Voice = "metaisb" {
	  \set midiInstrument = #"trombone"
	  \voiceTwo
	  \time 4/4
	  \clef G
	  \unfoldRepeats \transpose c ees \intrometais 
	  \transpose c ees \melodiaAB 
	  \transpose c ees \meiucaB
	  \transpose c ees \melodiaBB
	  \transpose c ees \coro
	  \unfoldRepeats \transpose c ees \intrometais
	  \transpose c ees \melodiaAB 
	  \transpose c ees \meiucaB
	  \transpose c ees \melodiaBB
	  \transpose c ees \coro
	  \unfoldRepeats \transpose c ees \intrometais
	  \unfoldRepeats \transpose c ees \intrometais
	  \transpose c ees \melodiaAB
	}
	\new Voice = "cantoreintro" {
	  \set midiInstrument = #"clarinet"
	  \voiceThree
	  \time 4/4
	  \clef G
	  \unfoldRepeats \transpose c ees \reintroV
	  \unfoldRepeats \transpose c ees \reintroV
	}
	\new Lyrics \lyricsto "sopros" {
        \letra
    }
        \new DrumStaff \with {
%       drumStyleTable = #timbales-style
%       \override StaffSymbol.line-count = #2
%       \override BarLine.bar-extent = #'(-1 . 1)
    } <<
      \set Staff.instrumentName = #"drums"
      \new DrumVoice { \stemUp \unfoldRepeats \cima }
      \new DrumVoice { \stemDown \unfoldRepeats \baixo }
    >>
	>>
      	\midi {
	  \tempo 4 = 103
	    \context {
	    \Voice
	    \consists "Staff_performer"
	  }
	}
  }
}