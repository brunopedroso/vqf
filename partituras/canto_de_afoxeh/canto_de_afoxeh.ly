\header {
  title = "Um canto de afoxé para o bloco do Ilê"
  composer =  "Caetano Veloso e Moreno Veloso"
}
#(set-global-staff-size 14)

\include "../formatoversos.ly"


parteum =  \relative c'   {
  \key e \major \repeat volta 2 {
      e2  | fis4 gis8  e  ~| e4 \tuplet 3/2 {r8 cis' bes} | \tuplet 3/2 {g e cis~} \tuplet 3/2 {cis b ais~} | ais4 cis |
      dis fis8 e~ | e2 | r | e | fis4 gis8 e ~| e4 \tuplet 3/2 {r8 cis' b} | \tuplet 3/2 {gis e cis~} \tuplet 3/2 {cis b ais~} ||
      ais4 cis | dis fis8 e ~ | e2 | 
  }
  \alternative {
        {r8 cis' gis b}
        {r cis gis16 b8 e,16 ~}
        }
   e4 e | fis gis8 e~ |
   e4 \tuplet 3/2 {r8 e cis} | \tuplet 3/2 {e cis e~} \tuplet 3/2 {e cis cis'~} | cis2 | b4 gis8 e~ | e2 | r8 cis' gis b ||
   
  }

letratoda = \lyricmode {
  Ilê aiê, co -- mo vo -- cê é bo -- ni -- to de se ver
Ilê aiê, que be -- le -- za mais bo -- ni -- ta de se ter
(Ilê aiê) ilê aiê co -- mo vo -- cê é bo -- ni -- to de se ver
Ilê aiê, que be -- le -- za mais bo -- ni -- ta de se ter
ilê aiê, sua be -- le -- za se trans -- for -- ma em vo -- cê
Ilê aiê, que ma -- nei -- ra mais fe -- liz de vi -- ver
(Ilê aiê) ilê aiê co -- mo vo -- cê é bo -- ni -- to de se ver
Ilê aiê, que be -- le -- za mais bo -- ni -- ta de se ter
ilê aiê co -- mo vo -- cê é bo -- ni -- to de se ver
Ilê aiê, que be -- le -- za mais bo -- ni -- ta de se ter
(Ilê aiê) ilê aiê sua be -- le -- za se trans -- for -- ma em vo -- cê
Ilê aiê, que ma -- nei -- ra mais fe -- liz de vi -- ver
ilê aiê co -- mo vo -- cê é bo -- ni -- to de se ver
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
