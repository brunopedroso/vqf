\version "2.18.2"

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"


\header {
  title = "Não existe pecado ao sul do Equador"
  composer = "Chico Buarque"
}


parteum = \relative c {
   \key c \major
	\time 2/4
r4*5 c''16 d r16 c r8 dis4 r8 
  | % 3
  fis,4 r8 a16 r8 a16*5 r16 g16*5 r16 a8. r16 g16*5 r16 f4*3/2 
  r16 g8 r8 f16 r16 e f r16 g8 r8 c16 r16 d r16 c r16 dis16*5 r16 fis,16*5 
  r8 a r16 b a4 r16 g4 r8 a8. r8 b16 r16 a r16 g8 
  | % 9
  r16 f8 r16 e r8 d16 r16 c16*13 r16*7 e16 r16 f 
  | % 11
  r16 g r16 f r16 e r16 g4 r16 f r16 e r16 
  | % 12
  g8. r16 f r16 e r16 g8 r16 f r16 e r16 a8. r8 e16 f r16 d1 
  r8. f16 r8 f16 r16 g 
  | % 15
  r8 a16 r16 g r16 f r16 a8. r16 g f8 a8. r16 g8 r16 f r16 a8 
  r16 g8 f16 r16 b8. r16 f r16 g r16 e1 r16*5 c'16 r16 c r16 
  | % 19
  c r16 c a8 g16 r8 c8. a8 g16 r8 
  | % 20
  c8. r16 a g r8 c8. r16 a g r8 
  | % 21
  e'8. r8 b16 c r16 a1 r4 c16 r16 c r16 
  | % 23
  c r16 c b r16 a r16 g4 g8 r16 g r16 
  | % 24
  gis8. r16 gis r16 gis a4 a16 r8 a16 r16 
  | % 25
  c8. b16 r16 a a r16 c8 r16 e8 r16 b r16 
  | % 26
  d r16 c r8 e,16 a8 r16 g8. r16 d r16 a' 
  | % 27
  r16 g8 r16 d r16 a'8 r16 g r8 e'16 r16 b r16 
  | % 28
  d r16 c r16 e, r16 a r16 g8. r16 d r16 a' r16 
  | % 29
  g8 r16 d r8 a'16 r16 g8. f r8 
  | % 30
  e r8 d16 r8 cis r16 e8. r16 g r16 
  | % 31
  b8. ais16 r16 a8. r16 e'8 r16 d8 r16 a8. r8 e'16 r16 c r16 g8 
  r16 e' r8 g,16 r16 
  | % 33
  c8 r16 e8 r16 a, r16 d r16 c r16 e, r16 a r16 
  | % 34
  g8. r16 d r16 a'8 g4 d16 r16 a' r16 
  | % 35
  g8 r8 e'16 r16 a, r16 d r16 c r8 e,16 a r16 
  | % 36
  g8 r8 d16 r16 a' g4 r16 d r16 a' r16 
  | % 37
  g8. r16 f8 r16 e8 r8 d8. r16 cis8 r8 e16 r8 gis16 g r16 ais 
  r8 a8. r16 
  | % 39
  e'8 r8 d4 r8 a16 r16 e' r16 d r4 <a g >16 r8 e'16 r16 a, r16 c2 
}


letratoda = \lyricmode {
não existe pecado
}

\book {
  \bookOutputName "nao_existe_pecado_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
%				\trackB
        \new Voice = "saxalto" {
          \transpose c c {
            \parteum
%             \skip 256 \bar "" \break
%            \partedois
          }
        }
        \addlyrics \letratoda
      }

    >>
    \layout {}
		\midi {}
  }
}

\book {
  \bookOutputName "nao_existe_pecado_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c a {
            \parteum
%             \skip 256 \bar "" \break
%            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {}
  }
}


