\version "2.18.2"  % necessary for upgrading to future LilyPond versions

\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 16)

\header{
  title = "O Caminho do bem"
  composer = "Tim Maia"
}

parteum = \relative c'' {
	\key bes \major
	\time 4/4
	\partial 2 { d8 c  a16 g f8}  d1 |\break
  r2 d'8 c a16 g f8| d1| \break
  r2 d'8 c  a16 g f8 | d1 | \break
}



letraum = \lyricmode {
  O ca -- mi -- nho do bem
  O ca -- mi -- nho do bem
  O ca -- mi -- nho do bem
  Já i -- ni -- ci -- ou
  Está a -- con -- te -- cen -- do
  Fa -- se ra -- cio -- nal
  Não es -- tou sa -- ben -- do
}

letraresto = \lyricmode {
  O ca -- mi -- nho do bem é um só ca -- mi -- nho
  O ca -- mi -- nho do bem é pa --a to -- dos
  O ca -- mi -- nho do bem éa -- ci -- o -- nal
  O ca -- mi -- nho do bem
  O ca -- mi -- nho do bem
  O ca -- mi -- nho do bem
  O ca -- mi -- nho do bem
  Po -- de aguar -- dar
  Que o mun -- do in -- tei --o
  Lo -- go sa -- be --á
  No Bra -- sil pri -- mei --o
  O ca -- mi -- nho do bem (leia lo -- go, sai -- ba lo -- go)
  O ca -- mi -- nho do bem (es -- tá na ho --a, é ago --a)
  O ca -- mi -- nho do bem (acre -- di -- te, não du -- vi -- de)
  O ca -- mi -- nho do bem
  Vi -- da mo -- des -- ta e fe -- cun -- da
  Amor de um do -- ce pa --aí -- so
  Rei -- no pre -- po -- ten -- ci -- ala -- ci -- o -- nal
  Aon -- de vi -- ver sem -- pre o bem, e não o mal
  Leia lo -- go, sai -- ba lo -- go
  Es -- tá na ho --a, é ago --a
  Acre -- di -- te, não du -- vi -- de
  Do que já acon -- te -- ceu
  Já acon -- te -- ceu
  Es -- tá acon -- te -- cen -- do
  Fa -- sea -- ci -- o -- nal
  Não es -- tou sa -- ben -- do
  O ca -- mi -- nho do bem (leia lo -- go, sai -- ba lo -- go)
  O ca -- mi -- nho do bem (es -- tá na ho --a, é ago --a)
  O ca -- mi -- nho do bem (acre -- di -- te, não du -- vi -- de)
  O ca -- mi -- nho do bem
  Nu -- ma na -- tu --e -- za on -- de não exis -- tee -- gu -- la -- gem, não po -- de exis -- tir o bem
  O bem só po -- de ser en -- con -- tra -- do na imu -- ni -- za -- çãoa -- ci -- o -- nal
  O ca -- mi -- nho do bem
  O ca -- mi -- nho do bem
  O ca -- mi -- nho do bem
  O ca -- mi -- nho do bem
  Po -- de aguar -- dar
  Que o mun -- do in -- tei --o
  Lo -- go sa -- be --á
  No Bra -- sil pri -- mei --o
  O ca -- mi -- nho do bem
  O ca -- mi -- nho do bem
}


partedois = \relative c'' {
  r2. a16 a c d |f1 | \break
  r2. a,16 a c d | f8 d ~  d2. |\break
  r2. a16 a c d |f1 | \break
   r2. a,16 a c d | f8 d ~ d2. | \break

}

parteumcontracanto = \relative c'' {
  r2 d8 c a16 g f8|
  \unfoldRepeats \repeat volta 2 { 
  d4 \bar "" \break 
  c16 d8 f16~ f d8.r4 |
  c16 d8 f16~ f d8. \bar "" \break d'8 c a16 g f8| d4 \bar "" \break
  c16 d8 f16~ f d8.r4 | 
  c16 d8 f16~ f d8. d'8 c a16 g f8 |
  }
   d1 \fermata \bar "|."
 
}
letradois = \lyricmode { 
  O ca -- mi -- nho do bem (lei -- a lo -- go, sai -- ba lo -- go)
  O ca -- mi -- nho do bem (está na ho -- ra, é a -- go -- ra)
  O ca -- mi -- nho do bem (a -- cre -- di -- te, não du -- vi -- de)
  O ca -- mi -- nho do bem (vai quem fi -- ca, tao bo -- ni -- ta!)
  No ca -- mi -- nho do bem!
}

letratoda = {
  \letraum
  \letradois
}

parteumsaxalto = {
  \transpose c c' {
  \parteum
  }
}


acordesum = \chordmode {
	\time 4/4
%	s2 s2
	\partial 2 { s2 } |
	d:m	
}

acordesdois = \chordmode {
	d:m
	 }

acordetodo = \chordmode {
	\acordesum
	\acordesdois
}

partedoisclarinete = {
  \transpose c c {\partedois}
}

\book {
  \bookOutputName "o_caminho_do_bem_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose c e {
            \parteum
            \unfoldRepeats
            \partedoisclarinete
		}
	}
	\addlyrics {\letratoda}
      }
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "o_caminho_do_bem_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c c {
            \parteum
            \unfoldRepeats
            \partedois
            \parteumcontracanto
		}
	}
	\addlyrics {\letratoda}
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 90
    }
  }
}
\book {
  \bookOutputName "o_caminho_do_bem_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose f d {
            \parteumsaxalto
            \unfoldRepeats
            \partedois
		}
	}
	\addlyrics {\letratoda}
      }
    >>
    \layout {}
  }
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "o_caminho_do_bem_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose f d {
            \easyHeadsOn
            \teeny
            \parteumsaxalto
%             \skip 256 \bar "o_caminho_do_bem_letra" \pulalinha
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
        \context {
      \Voice
      \consists \Gravador_nome_notas
      }
    \context {
      \Score 
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/4)
	}
  }
}
}


#(set-global-staff-size 15)

\book {
  \bookOutputName "o_caminho_do_bem_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
 %            \intro
             \parteum
             \unfoldRepeats
             \partedois
           }
      }
             \new ChordNames \with {               
               \consists "Bar_engraver"
               }
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
