% \include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\version "2.18.2"
% automatically converted by musicxml2ly from /home/GuigUse/Nextcloud/Musica/2018-vqf/chan_chan/1955156-Chan_Chan_.mxl

\header {
  copyright = "(copyleft) - CC BY-SA 4.0"
  encodingdate = "2016-04-02"
  title = "Chan Chan"
  source = "http://musescore.com/score/1955156 / Arr. adapt. Shrayes Raman"
  composer = "Buena Vista Social Club"
  encodingsoftware = "MuseScore 2.0.3"
  
}

#(set-global-staff-size 16)

\layout {
  \context {
    \Score
    skipBars = ##t
  }
}
PartPOneVoiceOne =  \relative b' {
  \transposition es \clef "treble" \key d \major
  \numericTimeSignature\time 4/4 | % 1
  \tempo 4=168 R1*4 \repeat volta 2 {
    | % 5
    b2. -\markup{ \bold {} } d4 ~ | % 6
    d2 fis8 e8 a,8 b8 | % 7
    cis4. b4. fis4 ~ | % 8
    fis8 r8 r4 r2 | % 9
    b2. d4 ~ | \barNumberCheck #10
    d2 \times 2/3 {
      d4 fis4 d4
    }
    | % 11
    cis4. b4. fis4 ~ | % 12
    fis8 r8 r4 r2 | % 13
    R1*4 | % 17
    b2. d4 ~ | % 18
    d2 fis8 e8 a,8 b8 | % 19
    cis4. b4. fis4 ~ | \barNumberCheck #20
    fis8 r8 r4 r2 | % 21
    R1*4
  }
  \repeat volta 2 {
    | % 25
    R1*4
  }
  | % 29
  R1*4 \bar "|."
}

PartPTwoVoiceOne =  \relative e'' {
  \transposition bes, \clef "treble" \key g \major
  \numericTimeSignature\time 4/4 R1*4 \repeat volta 2 {
    | % 5
    R1*7 | % 12
    r4 r4 r4 r8 e8 ~ | % 13
    e8 e4 g4 e8. d8. | % 14
    d8 d8 d8 b8 d8 r8 r4 | % 15
    a8 a4 fis'4 e8. b8. | % 16
    b8 b8 g8 fis8 e8 r8 r4 | % 17
    R1*3 | \barNumberCheck #20
    r4 r4 r4 r8 e'8 ~ | % 21
    e8 e4 g4 e8. d8. | % 22
    d8 d8 d8 b8 d8 r8 r4 | % 23
    a8 a4 fis'4 e8. b8. | % 24
    b8 b8 g8 fis8 e8 r8 r4
  }
  \repeat volta 2 {
    | % 25
    R1*4
  }
  | % 29
  R1*4 \bar "|."
}

SoloTrompete = 
     \relative c {
     \transpose g c'' {
       r8 \mark "Solo Trompete" fis gis ais b cis' d' e' |
       fis'4. d'8 ~ d' cis' b8 fis'~ |
       fis'4. d'8 ~ d' cis' b8 g'~ |
       g'4. e'8 ~ e' b cis' ais ~ | ais2. r8 fis |
       \tuplet 3/2 { b4 b b } \grace cis'8 d'4 b8 a ~|
       a a4 cis'8~cis'4 a4 | g4. d'8 ~ d' cis' b ais~ |
       ais4. b8 \tuplet 3/2 { cis'8 b ais cis'8 b ais } |
       b cis' d' e' fis'4 r4 | r8 a d' e' \tuplet 3/2 { e'4 cis' d'~ } |
       d'4 ~ \tuplet 3/2 { d'4 cis' b } \tuplet 3/2 {cis'8 b ais~} |
       ais2 r8 fis gis ais | b4. fis'8 ~ fis' d'4 b8 |
       a4. e'8 ~ e' cis'4 a8 | g4. \grace cis'8 d'8 ~ d' cis' b4 |
       ais2. r4 \bar "|."
     }
   }
     

PartPThreeVoiceOne =  \relative e'' {
  \transposition bes \clef "treble" \key g \major
  \numericTimeSignature\time 4/4 R1*4 \repeat volta 2 {
    | % 5
    R1*7 | % 12
    r4 r4 r4 r8 e8 ~ | % 13
    e8 e4 g4 e8. d8.  | % 14
    d8 d8 d8 b8 d8 r8 r4 | % 15
    a8 a4 fis'4 e8. b8. | % 16
    b8 b8 b8 a8 b8 r8 r4 | % 17
    r2 r8 r8 r4 | % 18
    R1*2 | \barNumberCheck #20
    r4 r4 r4 r8 e8 ~ | % 21
    e8 e4 g4 e8. d8. | % 22
    d8 d8 d8 b8 d8 r8 r4 | % 23
    a8 a4 fis'4 e8. b8. | % 24
    b8 b8 b8 a8 b8 r8 r4
  }
  \repeat volta 2 {
    | % 25
    R1*3
  }
  \alternative {
    {R1}
    {\SoloTrompete}
  }
%   | % 29
%     R1*4
}

PartPFourVoiceOne =  \relative d' {
  \clef "treble_8" \key f \major \numericTimeSignature\time 4/4 <d f
  a>2. <f, a c>4 ~ ~ ~ | % 2
  <f a c>1 | % 3
  <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | % 4
  <g a cis e>1 \repeat volta 2 {
    | % 5
    <d' f a>2. <f, a c>4 ~ ~ ~ | % 6
    <f a c>1 | % 7
    <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | % 8
    <g a cis e>1 | % 9
    <d' f a>2. <f, a c>4 ~ ~ ~ | \barNumberCheck #10
    <f a c>1 | % 11
    <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | % 12
    <g a cis e>1 | % 13
    <d' f a>2. <f, a c>4 ~ ~ ~ | % 14
    <f a c>1 | % 15
    <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | % 16
    <g a cis e>1 | % 17
    <d' f a>2. <f, a c>4 ~ ~ ~ | % 18
    <f a c>1 | % 19
    <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | \barNumberCheck #20
    <g a cis e>1 | % 21
    <d' f a>2. <f, a c>4 ~ ~ ~ | % 22
    <f a c>1 | % 23
    <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | % 24
    <g a cis e>1
  }
  \repeat volta 2 {
    | % 25
    <d' f a>2. <f, a c>4 ~ ~ ~ | % 26
    <f a c>1 | % 27
    <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | % 28
  }
  \alternative {
    {<g a cis e>1}
    {<g a cis e>1}
  }
  | % 29
  \repeat volta 2 {
    <d' f a>2. <f, a c>4 ~ ~ ~ | % 26
    <f a c>1 | % 27
    <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | % 28
    <g a cis e>1
    <d' f a>2. <f, a c>4 ~ ~ ~ | % 26
    <f a c>1 | % 27
    <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | % 28
    <g a cis e>1
  }
  \repeat volta 2 {
    <d' f a>2. <f, a c>4 ~ ~ ~ | % 26
    <f a c>1 | % 27
    <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | % 28
    <g a cis e>1
    <d' f a>2. <f, a c>4 ~ ~ ~ | % 26
    <f a c>1 | % 27
    <g bes d>2. <g a cis e>4 ~ ~ ~ ~ | % 28
    <g a cis e>1
  }
 
  R1*4 \bar "|."
}

PartPFiveVoiceOne =  \relative d, {
  \clef "bass_8" \key f \major \numericTimeSignature\time 4/4 d2. c4 ~
  | % 2
  c2 c4 c4 | % 3
  g2. a4 ~ | % 4
  a4 r4 r2 \repeat volta 2 {
    | % 5
    d2. c4 ~ | % 6
    c2 c4 c4 | % 7
    g2. a4 ~ | % 8
    a2 a'8 g8 f8 e8 | % 9
    d2. c4 ~ | \barNumberCheck #10
    c2 c4 c4 | % 11
    g2. a4 ~ | % 12
    a2 a'8 g8 f8 e8 | % 13
    d2. c4 ~ | % 14
    c2 c4 c4 | % 15
    g2. a4 ~ | % 16
    a2 a'8 g8 f8 e8 | % 17
    d2. c4 ~ | % 18
    c2 c4 c4 | % 19
    g2. a4 ~ | \barNumberCheck #20
    a2 a'8 g8 f8 e8 | % 21
    d2. c4 ~ | % 22
    c2 c4 c4 | % 23
    g2. a4 ~ | % 24
    a2 a'8 g8 f8 e8
  }
  \repeat volta 2 {
    | % 25
    d2. c4 ~ | % 26
    c2 c4 c4 | % 27
    g2. a4 ~ | % 28
  }
  \alternative {
    {a2 a'8 g8 f8 e8}
    {a,2 a'8 g8 f8 e8}
  }
   \repeat volta 2 {
    d2. c4 ~ | % 26
    c2 c4 c4 | % 27
    g2. a4 ~ | % 28
    a2 a'8 g8 f8 e8
    d2. c4 ~ | % 26
    c2 c4 c4 | % 27
    g2. a4 ~ | % 28
    a2 a'8 g8 f8 e8
  }
  \repeat volta 2 {
    | % 25
    d2. c4 ~ | % 26
    c2 c4 c4 | % 27
    g2. a4 ~ | % 28
    a2 a'8 g8 f8 e8
    d2. c4 ~ | % 26
    c2 c4 c4 | % 27
    g2. a4 ~ | % 28
    a2 a'8 g8 f8 e8
  }
  R1*4 \bar "|."
}

letraum =  \lyricmode {
  DeAl -- to Ce -- dro voy pa --
  ra Mar -- ca -- "né," lle -- goa Cue -- "to," voy pa -- ra Ma -- ya
  -- "rí." DeAl -- to Ce -- dro voy pa -- ra Mar -- ca -- "né," lle --
  goa Cue -- "to," voy pa -- ra Ma -- ya -- "rí." 
}

letradois = \lyricmode {
  DeAl -- to Ce -- dro
  voy pa -- ra Mar -- ca -- "né," lle -- goa Cue -- "to," voy pa -- ra
  Ma -- ya -- "rí." El ca -- ri -- ño que te ten -- "go," no te lo pue
  -- do ne -- "gar." Se me sa -- le la ba -- bi -- ta no lo pue -- do
  e -- vi -- "tar." Cuan -- do Jua -- ni -- cay Chan -- Chan cer --
  "nían" a -- re -- na en el "mar," co -- mo sa -- cu -- "dí" -- ael
  ji -- "be," a Chan -- Chan le da -- ba pe -- "na." Lim -- piael ca
  -- mi -- no de pa -- "ja," que yo me quie -- ro sen -- tar en a --
  quel tron -- co que ve -- o ya -- "sí" no pue -- do lle -- "gar!"
  DeAl -- to Ce -- dro voy pa -- ra Mar -- ca -- "né," lle -- goa Cue
  -- "to," voy pa -- ra Ma -- ya -- "rí." DeAl -- to Ce -- dro voy pa
  -- ra Mar -- ca -- "né," lle -- goa Cue -- "to," voy pa -- ra Ma --
  ya -- "rí." DeAl -- to Ce -- dro voy pa -- ra Mar -- ca -- "né," lle
  -- goa Cue -- "to," voy pa -- ra Ma -- ya -- "rí."
}

letratoda = \lyricmode {
  \letraum
  \letradois
}
% The score definition
\book {
  \bookOutputName "chan_chan_Geral"
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Sax Alto"
      \set Staff.shortInstrumentName = "Sax. A."
      \context Staff <<
        \context Voice = "PartPOneVoiceOne" { \PartPOneVoiceOne }
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "Sax Tenor"
      \set Staff.shortInstrumentName = "T. Sax."
      \context Staff <<
        \context Voice = "PartPTwoVoiceOne" { \PartPTwoVoiceOne }
        \addlyrics \letratoda
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "Trompete B♭"
      \set Staff.shortInstrumentName = "Tpt. B♭"
      \context Staff <<
        \context Voice = "PartPThreeVoiceOne" { \PartPThreeVoiceOne }
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "Guitarra"
      \set Staff.shortInstrumentName = "Guit."
      \context Staff <<
        \context Voice = "PartPFourVoiceOne" { \PartPFourVoiceOne }
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "Baixo"
      \set Staff.shortInstrumentName = "Baixo"
      \context Staff <<
        \context Voice = "PartPFiveVoiceOne" { \PartPFiveVoiceOne }
      >>
    >>

  >>
  \layout {}
  \midi {}
}
}
\book {
  \bookOutputName "chan_chan_C"
  \header {
    instrument = "Instrumentos em C"
  }
  \score {
    <<
%       \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "tromboneC" {
	    \transpose c bes, {
	      \PartPThreeVoiceOne	   
	    }
	    \addlyrics {\letraum}
	  }
	}
    >>
    \layout {}
    \midi {
    \tempo 4 = 140
    \context {
    \Voice \consists "Staff_performer"
    }
  }
  }
}

\book {
  \bookOutputName "chan_chan_Bb"
  \header {
    instrument = "Instrumentos em Bb"
  }
  \score {
    <<
%       \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "trompete" {
	    \PartPThreeVoiceOne
	   	  }
 	  \addlyrics {\letraum}
	}
    >>
    \layout {}
  }
}

\book {
  \bookOutputName "chan_chan_Tuba"
  \header {
    instrument = "Tuba"
  }
  \score {
    <<
%       \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "tuba" {
	    \PartPFiveVoiceOne
	   	  }
% 	  \addlyrics {\letratoda}
	}
    >>
    \layout {}
  }
}


\book {
  \bookOutputName "chan_chan_Eb"
  \header {
    instrument = "Instrumentos em Eb"
  }
  \score {
    <<
%       \new TimeSig \compassoseparado
	\new Staff {
	  \new Voice = "saxalto" {
	    \PartPOneVoiceOne
	   	  }
% 	  \addlyrics {\letratoda}
	}
    >>
    \layout {}
  }
}


#(set-global-staff-size 30)

\book {
  \bookOutputName "chan_chan_Eb_notas"
  \header {
    instrument = "Eb"
  }
  \score {
    <<
	\new Staff {
   \accidentalStyle Score.dodecaphonic
	  \new Voice = "saxalto" {
	    \easyHeadsOn
        \teeny
        \PartPOneVoiceOne
	   	  }
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















'#(set-global-staff-size 20)

\book {
  \bookOutputName "chan_chan_letra"
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
}'
