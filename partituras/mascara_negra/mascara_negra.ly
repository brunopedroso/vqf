\version "2.18.2"  % necessary for upgrading to future LilyPond versions

\include "../formatoversos.ly"
\include "../nomedasnotas.ly"

#(set-global-staff-size 16)

\header{
  title = "Máscara Negra"
  composer = "Zé Keti"
}

parteum = \relative c' {
	\key bes \major
	\time 2/4
	\partial 4 { d'8 \mark \default c} | d8. f,  f8 ~| f ees' d c |  d8. f, r8 | r2 | 
	\break
	f8 d' c bes |   fis d' c bes |  d8. g, r8 | r4
	\bar "mascara_negra_letra" \break
	c8 d | ees ees ees ees |  f ees d c  | d d ees e |  f8 f r8 
	\bar "mascara_negra_letra" \break
	d | \tuplet 3/2 {f4 ees c } | g4 a | bes2 | r2 |
	\break
}

letraum = \lyricmode {
 	
	Quan -- to ri -- so, oh! Quan -- ta_a -- le -- gri -- a! 
	Mais de mil pa -- lha -- ços no sa -- lã -- ão! 
	Ar -- le -- quim es -- tá cho -- ran -- do 
	pe -- lo_a -- mor da Co -- lom -- bi -- na 
	No mei -- o da mul -- ti -- dão!	


}


partedois = \relative c'' {
   \mark \default
   \repeat volta 2 {
  \tuplet 3/2 {d4 ees f} |  \tuplet 3/2 {bes, c d } | \tuplet 3/2 {ees 
                                                                                  
%  \bar "mascara_negra_letra" \break  
  
  f g } | \tuplet 3/2 { c, d ees } |  \tuplet 3/2 { f g 
  \bar "mascara_negra_letra" \break 
  a } | \tuplet 3/2 { f g a }
  }
  \alternative {
    { \tuplet 3/2 { c bes a } |  bes2
  
  \bar "mascara_negra_letra" \break
  
  \tuplet 3/2 { c4 bes a } | \tuplet 3/2 { g a bes} | f2 | r8
  %\bar "mascara_negra_letra" \break
  g8 g a | ees2 | r8 f f g |  \tuplet 3/2 { d4 c bes} |   c2
  \bar "mascara_negra_letra" \break }
    {
      \tuplet 3/2 {c'4 bes a} |   aes4 g }
  }
  \bar "mascara_negra_letra" \break 
  \repeat volta 2 {
  r c8 d  |  ees4 f8 d~ | d c 
  %\bar "mascara_negra_letra" \break 
  bes c | d4 ees8 c8~ | 
  \bar "mascara_negra_letra" \break 
  c4 a8  bes | 
  }
  \alternative {
    {c4 d8 b8 ~ | b2 | r2
    \bar "mascara_negra_letra" \break 
    }
    {c4 d8 bes8~ | bes2 | r2 }
  }


}

letradois = \lyricmode { 

	Foi bom te ver ou tra -- vez, 
	Está fa -- zen -- do um a -- no, 
	Foi no car -- na -- val que pas -- sou! 
	
	Eu sou a -- que -- le Pier -- rô, 
	Que te_a -- bra -- çou e te bei -- jou meu a -- mor! 

	Na mes -- ma más -- ca -- ra ne -- gra  
	Que_es -- con -- de_o teu ros -- to, 
	Eu que -- ro ma -- tar a sau -- da -- de! 
	
	Vou bei -- jar te_a -- go -- ra, 
	Não me le -- ve_a mal,  
	Ho -- je_é car --  na -- val! 
	
	Vou bei -- jar te_a -- go -- ra,
	Não me le -- ve_a mal,  
	Ho -- je_é car -- na -- val!


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
	\time 2/4
%	s2 s2
	\partial 4 { f4 } |
	f2 | bes:m | c:7 | f |
	f   | f:7   | bes:maj | bes:maj |
	bes:maj | bes:m7 | a:m7 | d:7    |
	g:m7   | c:7  | f | f 
	
}

acordesdois = \chordmode {
	f2 | gis:dim | g:m7 | g:m7 |
	c:7 | c:7 | f | c:7 |
	f | gis:dim | g:m7 | g:m7 |
	c:7 | c:7   | f    | c:7   |
% parte final do refrão
	f  | gis:dim | g:m7 | g:m7 |
	c:7 | c:7 | c:m7  | f:7 | 
	bes:maj | b:m7 | a:m7 | d:7 |
	g:m7 | c:7 | f | f:7 |
	 bes:maj | b:m7 | a:m7 | d:7 |
	g:m7 | c:7 | f |
	 }

acordetodo = \chordmode {
	\acordesum
	\acordesdois
}

partedoisclarinete = {
  \transpose c c {\partedois}
}

\book {
  \bookOutputName "mascara_negra_Bb"
  \header {
    instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trompete" {
          \transpose bes g {
            \parteum
            \skip 256 \bar "mascara_negra_letra" \break
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
  \bookOutputName "mascara_negra_C"
  \header {
    instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose bes f {
            \parteum
            \skip 256 \bar "mascara_negra_letra" \break
            \unfoldRepeats
            \partedois
		}
	}
	\addlyrics {\letratoda}
      }
    >>
    \layout {}
    \midi {
    \tempo 4 = 120
    }
  }
}
\book {
  \bookOutputName "mascara_negra_Eb"
  \header {
    instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose bes d {
            \parteumsaxalto
            \skip 256 \bar "mascara_negra_letra" \break
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
  \bookOutputName "mascara_negra_Eb_notas"
  \header {
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \transpose bes d {
            \easyHeadsOn
            \teeny
            \parteumsaxalto
%             \skip 256 \bar "mascara_negra_letra" \pulalinha
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
  \bookOutputName "mascara_negra_letra"
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
