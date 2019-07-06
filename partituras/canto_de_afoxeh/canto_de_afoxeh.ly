
\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

\header {
  title = "Um canto de afoxé para o bloco do Ilê"
  composer =  "Caetano Veloso e Moreno Veloso"
}
#(set-global-staff-size 14)


parteum =  \relative c'   {
  \key e \major \repeat volta 2 {
      e2 \marcaA  | fis4 gis8  e  ~| e4 \bar "" \break
      \tuplet 3/2 {r8 cis' bes} | \tuplet 3/2 {g e cis~} \tuplet 3/2 {cis b ais~} | ais4 cis |
      dis fis8 e~ | e2 | r | \break
      e | fis4 gis8 e ~| e4 \bar "" \break
      \tuplet 3/2 {r8 cis' b} | \tuplet 3/2 {gis e cis~} \tuplet 3/2 {cis b ais~} ||
      ais4 cis | dis fis8 e ~ | e2 | 
  }
  \alternative {
        {r8 cis' gis b}
        {r cis gis16 b8 e,16 ~}
        }   
  }
partedois = \relative c' {
  e4 \pulalinha \pulalinha  \marcaC e | fis gis8 e~ |  e4 \bar "" \break
  \tuplet 3/2 {r8 e cis} | \tuplet 3/2 {e cis e~} \tuplet 3/2 {e cis gis'~} | gis2 | \bar "" \break
  fis4 e8 cis~ | cis2 | r8 cis' gis b \bar "|."
}

partetres = \relative c' {
   \pulalinha \pulalinha  \marcaB e2 | fis4 gis8 e~ |  e4 \bar "" \break
   \tuplet 3/2 {r8 e cis} | \tuplet 3/2 {e cis e~} \tuplet 3/2 {e cis cis'~} | cis2 | \bar "" \break
  b4 gis8 e~ | e2 |
}


letraum = \lyricmode {
  I -- lê ai -- ê, Co -- mo vo -- cê é bo -- ni -- to de se ver
  I -- lê a -- iê, Que be -- le -- za mais bo -- ni -- ta de se ter
(I -- lê aiê) 
 
}

letraumponte = \lyricmode {
  (I -- lê a -- iê)
}

letradois = \lyricmode {
% I -- lê aiê co -- mo vo -- cê é bo -- ni -- to de se ver
% Ilê aiê, que be -- le -- za mais bo -- ni -- ta de se ter
I -- lê a -- iê, sua be -- le -- za se trans -- forma em vo -- cê
(I -- lê aiê)

% que ma -- nei -- ra mais fe -- liz de vi -- ver
% (Ilê aiê) ilê aiê co -- mo vo -- cê é bo -- ni -- to de se ver
% Ilê aiê, que be -- le -- za mais bo -- ni -- ta de se ter
% ilê aiê co -- mo vo -- cê é bo -- ni -- to de se ver
% Ilê aiê, que be -- le -- za mais bo -- ni -- ta de se ter
% (Ilê aiê) ilê aiê sua be -- le -- za se trans -- for -- ma em vo -- cê
% Ilê aiê, que ma -- nei -- ra mais fe -- liz de vi -- ver
% ilê aiê co -- mo vo -- cê é bo -- ni -- to de se ver
}

letratres = \lyricmode {
  I -- lê ai -- ê, 
  que ma -- nei -- ra mais fe -- liz de vi -- ver!
}

letratoda = \lyricmode {
  \letraum
  \letraumponte
  \letradois
  \letratres
}

letratodacorde = \lyricmode {
  \letraum
  \letradois
  \letratres
}
\book {
  \bookOutputName "canto_de_afoxeh_Bb"
  \header{
  instrument = "Para instrumentos em Bb"
  }
  \score {
	<<
	  \new TimeSig	\compassoseparado
	  \new Staff {
	    \new Voice = "um" {
	      \voiceOne
	      \set midiInstrument = #"trombone"
	      \transpose e c' {
			\parteum
			\partedois
			\partetres
		}
	    }
 	    \addlyrics { \letratoda}
	  }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "canto_de_afoxeh_Eb"
  \header{
  instrument = "Para instrumentos em Eb"
  }
  \score {
	<<
	  \new TimeSig	\compassoseparado
	  \new Staff {
	    \new Voice = "um" {
	      \voiceOne
	      \set midiInstrument = #"trombone"
	      \transpose e g {
			\parteum
			\partedois
			\partetres
		}
	    }
 	    \addlyrics { \letratoda}
	  }
	>>
	\layout {}
  }
}

\book {
  \bookOutputName "canto_de_afoxeh_C"
  \header{
  instrument = "Para instrumentos em C"
  }
  \score {
	<<
	  \new TimeSig	\compassoseparado
	  \new Staff {
	    \new Voice = "um" {
	      \voiceOne
	      \set midiInstrument = #"alto sax"
	      \transpose e bes {
			\parteum
			\partedois
			\partetres
		}
	    }
 	    \addlyrics { \letratoda}
	  }
	>>
	\layout {}
    	\midi {
	  \tempo 4 = 70
	  \context {
	    \Voice
	    \consists "Staff_performer"
	    }
	}
	}
}

#(set-global-staff-size 30)

\book {
  \bookOutputName "canto_de_afoxeh_Eb_notas"
  \header{
  instrument = "Eb"
  }
  \score {
	<<
	  \new TimeSig	\compassoseparado
	  \new Staff {
        \accidentalStyle Score.dodecaphonic
	    \new Voice = "um" {
	      \voiceOne
	      \set midiInstrument = #"trombone"
	      \transpose e g {
	        \easyHeadsOn
	        \teeny
			\parteum
			\partedois
			\partetres
		}
	    }
 	    \addlyrics { \letratoda}
	  }
	>>
	 \layout {
    \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    }
  }
}

\include "cifra_canto_de_afoxeh.ly"
#(set-global-staff-size 15)

\book {
  \bookOutputName "canto_de_afoxeh_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
             \parteum
             \partedois
             \partetres
           }
      }
             \new ChordNames \with {
               \consists "Bar_engraver"
             }
             \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratodacorde
    >>
           \include "../imprimirsoletras.ly"
  }
}
