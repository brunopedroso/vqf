\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
#(set-global-staff-size 24)

\header{
 title = "Siré de Exu"
 composer = "Candomblé"
}

repr = 12

rep = \repr + 3

timbais = \relative c''' {
  \time 4/4
  \clef "percussion^15"
  \repeat percent \rep {bes16 bes8 es es16 es8 bes bes es es}
  
}

timbaisinv = \relative c'' {
  \clef "percussion^15"
  \repeat percent \rep {es16\sostenutoOn es8 c c16 c8 es es c c}
}

tambores = \relative c'' {
  \clef "percussion^15"
  r1 r
  \repeat percent 2 {f,16 f8 bes'16 bes8 f, bes'8. bes16 bes8 f,}
  \repeat percent \repr {f16 f8 bes'16 bes8 f, bes'8. bes16 bes8 f,}
}

parteum = \relative c' {
  \time 4/4
  \clef "treble_8"
  \key f \major
  \repeat unfold 4 {r1} 
  \break
  \repeat volta 2 {
    r16 f,8 f16 f f8. r2 |
    \break
    r16 a8 a16 a a8. c8 c16 c8 f,8 a16 ~ |
    a8 c16 g8 a16 f8 ~f2 |
    \break
    a8 c8 g a8. ( f16 d8)  a'8 g16 f16 |
    }
    \alternative {
      {f4 d16\staccato d16 f8~ f2 \break }
      {f4 d16\staccato d16 f8~ f2\fermata \bar "|."}
    }
}

partedois = \relative c' {
  
}

letraum = \lyricmode { 
  E -- xu O -- nã
  E -- xu O -- nã Mo -- di -- lê Lo -- dê ê Leg -- ba -- ra
  Ba -- ra Ni ê Wo Bi (w)O -- nã Ke -- wa ô
  
  % Colocado pelo ritornello
  -- nã Ke -- wa ô
}

% letradois = \lyricmode { 
%   E -- xu Ba -- ra I -- lo -- ré
%   E -- xu Ba -- ra I -- lo -- ré
%   
%   
% }
% 
letratoda = {
 \letraum
 \letradois
}

\book {
  \bookOutputSuffix "Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "sax alto" {
          \transpose bes g' {
            \parteum
            %\pulalinha
            %\partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
  }
}

\book {
  \bookOutputSuffix "Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose bes c' {
            \parteum
            %\pulalinha
            %\partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
  }
}

\book {
  \bookOutputSuffix "C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose bes bes {
            \parteum
            %\pulalinha
            %\partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
%     \midi {
%       \tempo 4 = 85
%     }
  }
}

\book {
  \bookOutputSuffix "com_percussao"
  \score {
    <<
      \new Staff <<
        \new Voice="timbais" {
          \tempo 4 = 85
          \set midiInstrument= #"timpani"
          \set Voice.midiMinimumVolume = #0.6
          \set Voice.midiMaximumVolume = #0.8
          \voiceOne
          \unfoldRepeats \timbais
        }
        \new Voice="timbalseg" {
          \tempo 4 = 85
          \set midiInstrument= #"tinkle bell"
          \set Voice.midiMinimumVolume = #0.2
          \set Voice.midiMaximumVolume = #0.3
          \voiceTwo
          \unfoldRepeats \timbaisinv
        }
      >>
      \new Staff <<
         \new Voice="tambores" {
          \tempo 4 = 85
          \set midiInstrument= #"taiko drum"
          \set Voice.midiMinimumVolume = #0.4
          \set Voice.midiMaximumVolume = #0.6
          \voiceThree
          \unfoldRepeats \tambores
        }
      >>
      \new Staff <<
         \new Voice="voz" {
          \tempo 4 = 85
          \set midiInstrument= #"synth voice"
          \set Voice.midiMinimumVolume = #0.8
          \set Voice.midiMaximumVolume = #1.0
          \voiceFour
          \unfoldRepeats \parteum
         }
         >>
    >>
    % \layout {}
    \midi {
      \context {
        \Staff
        \remove "Staff_performer"
      }
      \context {
        \Voice
        \consists "Staff_performer"
      }
    }
  }
}

\version "2.18.2" % necessary for upgrading to future LilyPond versions.
