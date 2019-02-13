\version "2.18.2"
% Música em tom relativamente simples para Eb / Bb
saxoAlto =   \relative c'' {
  \key d \major
  \repeat volta 2 {a8 a16 a16 g16 g8 a16~a16 a8 a16 g8 g8 | a8 a16 a16 g16 g8 a16~}
    \alternative {
      {a2} 
      {a4 e'8 e8}
    }
   e4. dis8 | fis2~ | fis2 | r4  fis8 e8 | fis8 e16 fis8 e8 d16~ | 
   d16 cis8. d8 cis8 | d8 cis16 d8 cis8 b16~ | b16 a8. a8 a8 |
   a8 b16 a8 gis8 b16~ |  b2 | r2 |

   r4 fis'8 fis8 | fis4. f8 |
   gis2~ | gis2 | r4 gis8 fis8 |  gis8 fis16 gis8 fis8 e16~ |
   e16 d8. d8 d8 | d8 d16 e8 d8 cis16~ | cis16 b8. b8 b8 |
   b8 cis16 b8 a8 cis16 |  
%    ~cis2 | r2 |
   
   e8 fis8 cis8. e16~ |e16 cis8 b16 a16 fis16 a8 | 
   
   R2*23 |
   
%    Solo de Sax versão instrumental
    r4. fis'8 | g16 e8. fis8. dis16 |e16 d16 cis16 b16 ais16 g'16 fis16 e16 |
    d16 fis16 e32 f32 e32 d32 cis16 e16 d32 e32 d32 cis16| 
    \tuplet 3/2 {b8 cis8 d8 e8 d8 e8}
    f4 dis16 e16 d16 b16 a16 gis16 f'16 e16 d16 cis16 e16 
    b16 gis16 a16 cis16 e32 f32 fis32 g32 gis16 e4
   
   
  }

trompete = \relative a'' {
    \key d \major
    \repeat volta 2 {r2 r2 r2}
    \alternative {
      {r16 a8 g16 a4}
      {r2}
    }
    r2 | r4 fis8 e8 | fis8 e16 cis8 d8 e16~ | e4 r4 | r2 | r2 | r2 | r2 | r2 |
    e4 fis8. gis16~|
    gis16 fis8 e16 dis16 d16~ d8 | R2*10 |r2 | r2 |
    
    r4 g8 g8 | g4. fis8 |
    a2 g2 | r4 a8 g8 |  a8 g16 a8 g8 fis16~ |
    fis16 e8. fis8 e8 | fis8 e16 fis8 e8 d16~ |
    d16 cis8. cis8 d8 | e8 fis16 e8 d8 fis16~ | fis2 | r2
    
    r4 gis8 a8 | gis4. fis8 | e8 e8~ e4 |r2 |
    r4  fis8 e8 | fis8 e16 fis8 e8 d16~ | 
    d16 cis8. d8 cis8 | d8 cis16 d8 cis8 b16~ | b16 a8. a8 gis8 |
    fis8. a8 cis8. | e2 |
    
    R2*8|
    r4. cis8 | e4. cis8 | e8 cis16 e8 fis8 gis16~ |gis2| fis4 r8 fis8 |
    a4 fis8 d8 | cis4. e8 | b8 a8 ~ a4~|a2 |
    
    
}
letraSx = \lyricmode { 
% 	- - - - - - - - - - - - - - -
	Ba te que vá ba ten do-A 
	ca dên cia bo a que-o sam ba tem

	- Que bo ni to é
	Ver um sam ba no ter rei ro
	As sis tir a-um ba tu quei ro
	Nu ma ro da-im pro vi sar
	Que bo ni to é
	A mu la ta re que bran do
	Os tam bo res re pi can do
	U ma-es co la des fi lar

% 	Que bo ni to é é
% 	Pe la noi te-en lua ra da
% 	Nu ma tro va-a pai xo na da
% 	Um can tor de sa ba far
% 
% 	Que bonito é é
% 	Gafieira salão nobre
% 	Seja rico, seja pobre
% 	Todo mundo a sambar
% 
% 	O sam ba é ro man ce
% 	O sam ba é fan ta sia
% 	O sam ba é sen ti men to
% 	O sam ba é a le gria
% 
% 	Ba te que vá ba ten do
% 	A ca dên cia boa que o sam ba tem
% 	Ba te que re pi can do
% 	Pan dei ro vai, tam bo rim tam bém
  
  }
  
letraTr = \lyricmode { 
	- - - - - - - - - - - - - - - - -
% 	Ba te que vá ba ten do-A 
% 	ca dên cia bo a que-o sam ba tem
% 
% 	- Que bo ni to é
% 	Ver um sam ba no ter rei ro
% 	As sis tir a-um ba tu quei ro
% 	Nu ma ro da-im pro vi sar
% 	Que bo ni to é
% 	A mu la ta re que bran do
% 	Os tam bo res re pi can do
% 	U ma-es co la des fi lar
% 
	Que bo ni to é é
	Pe la noi te-en lu a ra da
	Nu ma tro va-a pai xo na da
	Um can tor de sa ba far

	Que bo ni to é é
	Ga fi ei ra sa lão no bre
	Se ja ri co, se ja po bre
	To do mun do-a sam bar

% 	O sam ba é ro man ce
% 	O sam ba é fan ta sia
% 	O sam ba é sen ti men to
% 	O sam ba é a le gria
% 
% 	Ba te que vá ba ten do
% 	A ca dên cia boa que o sam ba tem
% 	Ba te que re pi can do
% 	Pan dei ro vai, tam bo rim tam bém
%   
  }
  

\book {
  \bookOutputSuffix "Eb"
  \header {
   title = "Que bonito é"
   composer = "Luis Bandeira"
   instrument = "Sax Alto em Eb"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ)" 
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
 }
  \score {
  <<
    %  \chords { e1:7}
  \new Voice = "um" {
    \set midiInstrument = #"alto sax"
    \time 2/4
    \clef G
    \hide Stem
    \saxoAlto
  }
    \new Lyrics \lyricsto "um" {
        \letraSx
      }
    >>
  }
}

\book {
  \bookOutputSuffix "Bb"
  \header {
   title = "Que bonito é"
   composer = "Luis Bandeira"
   instrument = "Metais em Bb"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ)" 
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
 }
  \score {
    <<
  \new Voice = "metais" {
    \time 2/4
    \clef G
    \transpose b e {\hide Stem \trompete}

  }
  \new Lyrics \lyricsto "metais" {
    \letraTr
      } >>
%   \layout {}
 }
}

\book {
  \bookOutputSuffix "C"
  \header {
   title = "Que bonito é"
   composer = "Luis Bandeira"
   instrument = "Instrumentos em C"
   arranger = "Bloco Vai Quem Fica"
   copyright = "(ɔ)" 
   tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
 }
  \score {
    <<
  \new Voice = "metais" {
    \time 2/4
    \clef G
    \transpose c ees, {\hide Stem \trompete}

  }
  \new Lyrics \lyricsto "metais" {
    \letraTr
      } >>
%   \layout {}
 }
}

% Seção para midi, com parte ainda por fazer de bateria
% drh = \drummode { cymc4.^"crash" hhc16^"h.h." hh hhc8 hho hhc8 hh16 hh hhc4 r4 r2 }
% drl = \drummode { bd4 sn8 bd bd4 << bd ss >>  bd8 tommh tommh bd toml toml bd tomfh16 tomfh }
% timb = \drummode { timh4 ssh timl8 ssh r timh r4 ssh8 timl r4 cb8 cb }
%    \score {
%     <<
%       \new Voice = "um" {
%         \set midiInstrument = #"alto sax"
%         \voiceOne
%  	\time 2/4
%  	\clef G
%  	\unfoldRepeats \saxoAlto
%  	}
%      \new Voice = "dois" {
%         \set midiInstrument = #"trumpet"
%         \voiceTwo
%         \unfoldRepeats \trompete
%       }	
%       \new DrumStaff \with {
%       drumStyleTable = #timbales-style
%       \override StaffSymbol.line-count = #2
%       \override BarLine.bar-extent = #'(-1 . 1)
%     } <<
%       \set Staff.instrumentName = #"timbales"
%       \timb
%     >>
%     \new DrumStaff <<
%       \set Staff.instrumentName = #"drums"
%       \new DrumVoice { \stemUp \drh }
%       \new DrumVoice { \stemDown \drl }
%     >>
%  >>
%    \midi {
% 	  \tempo 4 = 145
% 	  \context {
% 	    \Voice
% 	    \consists "Staff_performer"
% 	}
%       }
%     }
#(set-global-staff-size 20)

\book {
  \bookOutputName "que_bonito_eh_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
               \intro
             \parteum
             \partedois
           }
      }
  %           \new ChordNames 
  %           \acordetodo
             \new Lyrics
             \lyricsto "letra" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
