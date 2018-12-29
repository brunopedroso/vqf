
\version "2.18.2"
% automatically converted by musicxml2ly from /home/GuigUse/Música/Bola-de-meia-bola-de-gude.mxl

\header {
  encodingsoftware = "MuseScore 3.0.0 / Audiveris / Frescobaldi"
  source = "/tmp/lg-1054680197.tmp.pdf"
  encodingdate = "2018-07-07"
  composer = "Milton Nascimento/Fernando Brandt"
  title = "Bola de meia, bola de gude"
  arranger = "Bloco Vai Quem Fica (adap. de Transc. de Luiz P. Faganha Jr.)"
}

#(set-global-staff-size 17)

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"

\layout {
  \context {
    \Score
    skipBars = ##t
  }
}


haummenino = {
   r16 d16 c a16 |
   g8. g16 r16  a g e d8. d16 r d' c a | g g8 g16 a g8 e16 d4 r16 d8 d16 | 
  g16 g8 g16 a16 a8 a16 d16 d8 d16 e16 e8 c16 |
  c8 d16 d ~ d4 r r16
}

elefala = {
  g,8 g16  |
  c16 c8 c16 c16 c8 c16 c16 c8 c16 c16 c8 c16 | 
  c16 c8 d16 e16 d8 c16 c16 b8 a16 b16 g8 g16 |
  c16 c8 c16 c16 c8 c16 c16 c8    c16 c16 c8 c16 | 
}

parteum =  \relative d'' {
  \clef "treble" \key g \major \time 4/4 \tempo 4=100 
  \partial 4
  r16 \marcaA d16 c a16 |
    g8. g16 r16  a g e d8. d16 \bar "" \break
    r d' c a | g g8 g16 a g8 e16 d4 \bar "" \break
    r16 d8 d16 | g16 g8 g16 a16 a8 a16 d16 d8 \bar "" \break 
    d16 e16 e8 c16 |
    c8( d16) d~ d4 r  - \markup {"2x"} \bar "" \break \pulalinha r16 \marcaB g,8 g16
}
partedois = \relative c'' {  
    c16 c8 c16 c16 c8 c16 c16 c8 c16 \bar "" \break
    c16 c8 c16 | c16 c8 d16 e16 d8 c16 c16 b8 a16 b16 \bar "" \break
    g8 g16 |  c16 c8 c16 c16 c8 c16 c16 c8 \bar "" \break
    c16 c16 c8 c16 | 
   c16 c8 c16 c16 c8 a16 d4 \bar "" \break \bar "" \break r16 g,8 g16 |
   c16 c8 c16 c16 c8 c16 c16 c8 c16 \bar "" \break
    c16 c8 c16 | c16 c8 d16 e16 d8 c16 c16 b8 a16 b16 \bar "" \break
    g8 g16 |  c16 c8 c16 c16 c8 c16 c16 c8 \bar "" \break
    c16 c16 c8 c16 | 
  
    c16  c8 c16 c16 c8 b16 d4 r16 \bar "" \break
    d16 c16 a16 |
  }

melodiamidi =  \relative d'' {
  \clef "treble" \key g \major \time 4/4 \tempo 4=100  
  \haummenino 
  \haummenino
  \elefala
  c16  c8 c16 c16 c8 a16 d4 r16
  \elefala
  c16  c8 c16 c16 c8 b16 d4  
  \haummenino r2 
}

%futuramente adicionar a um midi completo e partitura completa
acordes =  \relative d'' {
  \clef "treble" \key g \major \time 4/4 <d g b>8 <d g b>16 ~ <d g b>16
  c'64. <e, ais d>8 <e ais d>16 ~ <e ais d>16 <e g c>8 s128*45 | 
  <d g b>8 <d g b>16 ~ <d g b>16 c'8. <eis, ais d>8 <eis ais d>16 ~
  <eis ais d>16 <e g c>8. s8 \repeat volta 2 {
    | 
    <d g b>8 <d g b>16 ~ <d g b>16 c'8. <e, ais d>8 <e ais d>16 ~ <e
    ais d>16 <e g c>8. <d g b>8. <d g b>16 ~ <d g b>16 <e g
    c>8. <eis ais d>8 <eis ais d>16 ~ <eis ais d>16 <e g c>8. | 
    d8. g8. b8. g16 b16 ~ g16 b16 e,8. g8. c8. eis,4 ~ eis4 d8. g8.
    b8. g16 b16 ~ g16 b16 e,8. g8. c8. d2 | 
    d,8. \sf g16 b16 ~ g16 b16 e,8. g8. c8. eis,4 ~ eis4
  }
}

letraum = \lyricmode {
  Há um me -- ni -- no, há um mo -- le -- que
O -- ran -- do sem -- pre no meu co -- ra -- ção
To -- da vez que_o a -- dul -- to ba -- lan -- ça_E -- 
le vem pra me dar____a mão

% Há um pas -- sa -- do no meu pre -- sen -- te
% O sol bem quen -- te lá no meu quin -- tal
% To -- da vez que a bru -- xa me as -- som -- bra
% O me -- ni -- no me dá a mão

}


letradois = \lyricmode {
  E -- le fa -- la de coi -- sas bo -- ni -- tas que
Eu a -- cre -- di -- to que não dei -- xa -- rão de exis -- tir
A -- mi -- za -- de, pa -- la -- vra, res -- pei -- to
Ca -- rá -- ter, bon -- da -- de, ale -- gria e a -- mor
Pois não pos -- so, não de -- vo Não que -- ro 
vi -- ver co -- mo to -- da_es -- sa gen -- te in -- sis -- te_em vi -- ver
E Não pos -- so_a -- cei -- tar sos -- se -- ga -- do
Qual -- quer sa -- ca -- na -- gem ser coi -- sa nor -- mal
}

letratres = \lyricmode {
  Bo -- la de... meia, bo -- la de gu -- de
 O so -- li -- dá -- rio não quer so -- li -- dão
 To -- da vez que a tris -- te -- za me
 Al -- can -- ça o me -- ni -- no me dá a mão
}
letratoda = \lyricmode {
  \letraum
  \letradois
  \letratres
}

\book {
  \bookOutputName "bola_de_meia_Bb"
   \header{
  instrument = "Para instrumentos em Bb"
  }
  \score {
  <<
    \new TimeSig	\compassoseparado
    \new Staff {
      \set Staff.instrumentName = "Canto"
      \context Staff <<
        \context Voice = "melodia" { \transpose g a {\voiceOne \parteum \partedois }}
      \addlyrics { \letratoda}
      >>
      
    }

  >>
  
  \layout {}
  }
}

\book {
  \bookOutputName "bola_de_meia_Eb"
   \header{
  instrument = "Para instrumentos em Eb"
  }
  \score {
  <<
    \new TimeSig	\compassoseparado
    \new Staff {
      \set Staff.instrumentName = "Canto"
      \context Staff <<
        \context Voice = "melodia" { \transpose g e {\voiceOne \parteum \partedois }}
      \addlyrics { \letratoda}
      >>
      
    }

  >>
  
  \layout {}
  }
}

\book {
  \bookOutputName "bola_de_meia_C"
   \header{
  instrument = "Para instrumentos em C"
  }
  \score {
  <<
    \new TimeSig	\compassoseparado
    \new Staff {
      \set Staff.instrumentName = ""
      \context Staff <<
        \context Voice = "melodia" { \transpose g g {\voiceOne \parteum \partedois }}
      \addlyrics { \letratoda}
      >>
      
    }

  >>
  
  \layout {}
  }
}

\book {
  \bookOutputName "bola_de_meia"
  \score {
  <<
    \new Staff {
      \context Staff <<
        \context Voice = "melodia" { \transpose g g {\voiceOne \melodiamidi }}
      >>
      
    }

  >>
  \midi {
  \tempo 4 = 100
  \context {
	    \Voice
	    \consists "Staff_performer"
	    }
  }
  }
}
