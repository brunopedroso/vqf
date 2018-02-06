\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"

#(set-global-staff-size 17)

\header {
  encodingdate = "2018-02-05"
  title = "Meia-Lua Inteira"
  subtitle = "Capoeira Larará"
  composer = "Caetano Veloso"
  encodingsoftware = "Lilypond"
}

compassoclave = {\key f \major \time 2/4 }

parteum =  \relative a'' {
  s8 \marcaA d,16 d16 d d8 d16~ | 
  d4 \bar "" \break
  d8 f8 | 
  bes,8  d d16 d d d ~ | 
  d4 \bar "" \break 
  d8 f | 
  bes,8  d d16 d8 d16 ~ |
  d4 \bar "" \break
  d8 f | 
  bes,8  d d16 d8 d16 ~ |
  d8 -. d8 \bar "" \break
  d8 f |
  bes,8 d d16 d8 d16 ~ | 
  d2 | r2 | \break
}

partedois = \relative c'' { 
  \marcaB
  \repeat volta 2 {
  bes4 c8 bes| 
  bes4 c8 d ~ | 
  d4 r8 \bar "" \break
  f,16 f | 
  bes16 bes8 bes16 c8 c16 d16 ~ | 
  d4 r8 \bar "" \break
  f,8 |
  bes16 bes8 bes16 c8 c16 d ~ | 
 d4. c8 | 
  }
  \alternative {
   {bes2 | }
   {bes4. }
  }
}

partetresrefrao = \relative c'' {
  \bar "" \break
 \marcaC f,8 | 
  d'16 d8 d16 d8 c8 ~ | 
  c4. \bar "" \break
  f,8 | 
  d'16 d8 d16 d8 c8 ~ | 
  c4. \bar "" \break f,16 f | 
  d'8 d f d | 
  g f bes, c16 d16 ~ |
  d2 | r4.  \bar "" \break f,16 f | |
  d'8 d d d | |
  c bes g bes16 bes16 ~ |
  
}

partequatrointro = \relative c'' {
  \break
   \once \override Score.RehearsalMark.font-size = #3
    \mark \markup { \box "D"}
  \repeat volta 2 {
    bes4 \fermata c8 bes ~ |
    bes4 a8 bes ~ |
  }
  
}

letraum = \lyricmode {
  Mei -- a Lu -- a_In -- teira 
  so -- pa -- po Na ca -- ra do fraco
  Es -- tran -- gei -- ro go -- za -- dor
  Co -- car de co -- quei -- ro bai -- xo
  Quan -- do_en -- ga -- no se_en -- ga -- nou
}

letradois = \lyricmode {
  São dim, dão, dão
  São Bento
  Gran -- de ho -- mem de mo -- vi -- mento
  Mar -- te -- lo do tri -- bu -- na -- a -- al
  al
%   Su -- miu na ma -- ta adentro
%   Foi pe -- go sem do -- cu -- men -- to
%   No ter -- rei -- ro re -- gi -- o -- nal
}

letrarefrao = \lyricmode {
  U -- e -- ra rá rá rá
  U -- e -- ra rá rá rá
  Ter -- ça- Fei -- ra
  Ca -- po -- ei -- ra rá rá rá
  Tô no pé de on -- de der
  Rá rá rá rá
}
letratoda = {
  \letraum
  \letradois
  \letrarefrao
}

% The score definition
\book {
  \bookOutputName "meia_lua_inteira_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose f f {
            \compassoclave
             \parteum
             \partedois
             \partetresrefrao
             \partequatrointro
         }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 140
    }
  }
}


\book {
  \bookOutputName "meia_lua_inteira_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
     \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose f g, {
            \compassoclave
            \parteum
            \partedois
            \partetresrefrao
            \partequatrointro
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "meia_lua_inteira_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose f a {
            \compassoclave
            \parteum
            \partedois
            \partetresrefrao
            \partequatrointro
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}
