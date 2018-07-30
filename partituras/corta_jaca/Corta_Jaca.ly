\include "../nomedasnotas.ly"
\version "2.18.2"

\header {
  worknumber = "Tango Brasileiro"
  copyright = "1/3"
  encodingdate = "2016-12-26"
  title = "GAÚCHO"
  source = "/home/GuigUse/Nextcloud/Musica/Vqf experimentos/Corta-Jaca/corta-jaca-partitura-em-c (full color png)/page_1.png"
  composer = "Francisca Gonzaga (1847-1935)"
  encodingsoftware = "audiveris 4.2"
}

PartPOneVoiceOne =  \relative a' {
  r16 -"" -"D m" -\markup{ \italic {Batuque} } <a f d a>16 <a f d a>16
  <a f d a>16 r8 <a f d a>8 -"A7/E" | % 2
  r16 <g cis, a a'>16 <cis, a g' a>16 <g' cis, a a'>16 r8 <g cis, a>8
  | % 3
  r16 -"D m" <a f d a>16 <a f d a>16 <a f d a>16 r8 <a, a' f d>8
  -"A7/E" | % 4
  r16 <cis a g' a>16 <g' cis, a a'>16 <g cis, a a'>16 r8 <cis, a g'>8
  | % 5
  r16 -\markup{ \italic {Canto} } d'8 ( e16 f16 g16 a16 bes16 -"A7/E"
  ) | % 6
  a16 gis16 a16 cis16 e8 f8 | % 7
  e16 d8 a16 c16 bes8 e,16 -"A7/E" | % 8
  <a a,>8. e16 <a a,>4 | % 9
  r16 -\markup{ \italic {Batuque} } <a, f d a>16 <a f d a>16 <a f d a>16
  r8 <a f d a>8 -"A7/E" | 
  r16 <cis, a g' a>16 <g' cis, a a'>16 <g cis, a a'>16 r8 <g cis, a>8
  | % 11
  r16 <a f d a>16 <a f d a>16 <a, a' f d>16 r8 <a a' f d>8 -"A7/E" | % 12
  r16 <cis a g' a>16 <g' cis, a a'>16 <cis, a g' a>16 r8 <cis a g' a>8 | % 13
  r16 -"D7" d'8 -\markup{ \italic {Canto} } es16  d16 ( cis16 d16 a'16 ) | % 14
  g fis g16 bes16 d8 d8 -> | % 15
  r16 a8 bes16 a16 ( gis16 a16 cis16 ) | % 16
  e16 ( d16 a16 f16 ) d8 d8 ->
  r16 -"" -"D7" d8 es16 d16 ( cis16 d16 a'16 ) | % 2
  g16 fis16 g16 bes16 d8 d8 -">A7" | % 3
  r16 a8 bes16 a16 ( gis16 a16 e'16 ) | % 4
  d16 <a,, a' f d>16 -\markup{ \italic {Batuque} } <a a' f d>16 <a' f d a>16
  r8 <a f d a>8 | % 5
  r16 -"A7/E" <cis, a g' a>16 <g' cis, a a'>16 <cis, a g' a>16 r8 <cis a
  g' a>8 | % 6
  r16 <a a' f d>16 <a' f d a>16 <a, a' f d>16 r8 <a a' f d>8 -"A7/E" | % 7
  r16 <g' cis, a a'>16 <cis, a g' a>16 <g' cis, a a'>16 r8 <g cis, a a'>8  | % 8
  <d' a f d>4 <d' a f d>4 -\markup{ \italic {Fine} } | % 9
  \repeat volta 2 {
    | % 9
    c,4 -\markup{ \italic {Coro e Dança} } -"C 7" <d' bes>4 |
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 | % 11
    <c a>4 <c' a>4 | % 12
    r16 a8 f16 c8 a8 | % 13
    bes4 -"C7" <g' e>4 | % 14
    c,4 <g' e>4  | % 15
    f8[ g8 a8 bes8] | % 16
    b16 c8 f16 d16 ( c16 a16 f16 )
    c4 -"" -"C7" <bes' d>4 |
    %c,8 <bes' e c>16 <bes
    %e c>16 s4 \change Staff="1" | % 2
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 |
    <c a>4 <c' a>4 | % 4
    r16 a8 f16 c8 a8| % 5
  }
    \alternative {
    {f4  <f' a,>4 | % 6
    r16 e8 d16 cis8 d8 | % 7
    <a a'>4 -"A7" ~ <a' a,>8 e8 
  | % 8
  <a a,>2 |}
  {bes,4 <g' d>4 | % 9
  c,4 -"C7" <c' e,>4 |
  <f, a,>2
  <f a,>8 r8 <g a cis,>8 \f  \bar "|."
  }
  }
}

PartPOneVoiceTwo =  \relative d, {
  d8. -"" a'16 f'8. a,16 | % 1
  e8. a16 e'8. a,16 | % 2
  d,8. a'16 f'8. a,16 | % 3
  e8. a16 e'8. a,16 | % 4
  d,16 <d'' a f>8 <d a f>16 <d a f>8 <d a f>8 | % 5
  e,16 <g cis a>8 <g cis a>16 <g cis a>8 <g cis a>8 | % 6
  d16 <d' a f>8 <d a f>16 <d a f>8 <d a f>8 | % 7
  e,16 <g cis a>8 <g cis a>16 <g cis a>8 <g cis a>8 | \break % 8 
  d,8 a'16 s16 f'8. a,16 | %9
  e8. a16 e'8. a,16 | % 10
  d,8. a'16 f'8. a,16 | % 11
  e8. a16 e'8. a,16 | \break % 12
  d,16 <fis' c' fis>8 <fis c' fis>16 <fis c' fis>8 <fis c' fis>8 | % 13
  g,16 <d'' bes g>8 <d bes g>16 <d bes g>8 <d bes g>8 | % 14
  a,16 <g' a cis>8 <g a cis>16 <g a cis>8 <g a cis>8 | % 15
  d16 <d' a f>8 <d a f>16 <d a f>8 <d a f>8 | \break % 16
  d,,16 <fis' c' fis>8 <fis c' fis>16 <fis c' fis>8 <fis c' fis>8 | % 17
  g,16 <d'' bes g>8 <d bes g>16 <d bes g>8 <d bes g>8 | % 18
  a,16 <g' a cis>8 <g a cis>16 <g a cis>8 <g a cis>8 | % 19
   d,8. a'16 f'8. a,16 | \break % 20
   e8. a16 e'8. a,16 | % 21
  d,8. a'16 f'8. a,16 | % 22
  e8. a16 e'8. a,16 | % 23
  <d d,>4 <d' a f d>4 | \break % 24
  \repeat volta 2 {
    e,8 <bes' e c>16 <bes e c>16 c,8 <bes' e c>16 <bes e c>16 | % 25
    e,16 <bes' e c>8 <bes e c>16 c,8 <bes' e c>8 | % 26
    f8 <f' c a>16 <f c a>16 c,8 <f' c a>16 <f c a>16 | % 27
    f,16 <f' c a>8 <f c a>16 c,8 <f' c a>8 | % 28
    e,8 <bes' e c>16 <bes e c>16 c,8 <bes' e c>16 <bes e c>16 | % 29
    e,8 <bes' e c>16 <bes e c>16 c,8 <bes' e c>16 <bes e c>16 | % 30
    c,8 <f' c a>16 <f c a>16 f,8 <f' c a>16 <f c a>16| % 31
    f,16 <f' c a>8 <f c a>16 c,8 <f' c a>8 \break % 32
    e,8 <bes' e c>16 <bes e c>16 c,8 <bes' e c>16 <bes e c>16 | % 33
    e,8 <bes' e c>16 <bes e c>16 c,8 <bes' e c>16 <bes e c>16 | % 34
    f8 <f' c a>16 <f c a>16 c,8 <f' c a>16 <f c a>16| % 35
    f,16 <f' c a>8 <f c a>16 c,8 <f' c a>8 \break % 36
  }
  \alternative {
    { 
      d, <a' d f>16 <a d f> f8 <a d f>16 <a d f> | % 37
      d,16 <a' d f>8 <a d f>16 <a d f>8 <a d f> | % 38
      a,8 <g' a cis e>16 <g a cis e> e8 <g a cis e>16 <g a cis e>16 | % 39
      a,8[ <a a'>8-> <bes bes'>8-> <b b'>8->] | % 40
    }
    {
      d <bes' d g>16 <bes d g> g8 <bes d g>16 <bes d g> | % 41
      c,8 <bes' c e>16 <bes c e> e,8 <bes' c e>16 <bes c e> | % 38
      f8 <a c f>16 <a c f> c,8 <a' c f>16 <a c f>16 | % 39
      <f a c f>4 <a, cis e a>4-> \f
    }
  }
  }


saxtenor =  \relative a' {
  r8.-"Dm" -\markup{ \italic {Batuque} }   a'16 f8. a16 | % 1
  e8. -"A7/E"  a16 g8. a16 | % 2
  d,8. -"Dm" a'16 f8. a16 | % 3
  e8. -"A7/E" a16 g8. a16[ | % 4
  d,16] -"Dm"-\markup{ \italic {Canto} } d8 ( e16 f16 g16 a16 bes16 -"A7/E"
  ) | % 6
  a16 gis16 a16 cis16 e8 f8 | % 7
  e16 d8 a16 c16 bes8 e,16 -"A7/E" | % 8
  <a a,>8. e16 <a a,>4 | % 9
  d,8.-"Dm" -\markup{ \italic {Batuque} }   a'16 f8. a16 | % 1
  e8. -"A7/E"  a16 g8. a16 | % 2
  d,8. -"Dm" a'16 f8. a16 | % 3
  e8. -"A7/E" a16 g8. a16[ | % 4
  d,16] -"D7" d8 -\markup{ \italic {Canto} } es16  d16 ( cis16 d16 a'16 ) | % 14
  g fis g16 bes16 d8 d8 -> | % 15
  r16 a8 bes16 a16 ( gis16 a16 cis16 ) | % 16
  e16 ( d16 a16 f16 ) d8 d8 ->
  r16 -"" -"D7" d8 es16 d16 ( cis16 d16 a'16 ) | % 2
  g16 fis16 g16 bes16 d8 d8 -">A7" | % 3
  r16 a8 bes16 a16 ( gis16 a16 [e'16 ) | % 4
  d8.]-"Dm" -\markup{ \italic {Batuque} }   a16 f8. a16 | % 1
  e8. -"A7/E"  a16 g8. a16 | % 2
  d,8. -"Dm" a'16 f8. a16 | % 3
  e8. -"A7/E" a16 g8. a16[ | % 4
  d8.]-"Dm" a16 f8. a16 | % 1
  e8. -"A7/E"  a16 g8. a16 | % 2
  d,8. -"Dm" a'16 f8. a16 | % 3
  e8. -"A7/E" a16 g8. a16 | % 4 
  <d a f d>4 <d' a f d>4 -\markup{ \italic {Fine} } | % 9
  \repeat volta 2 {
    | % 9
    c,4 -\markup{ \italic {Coro e Dança} } -"C 7" <d' bes>4 |
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 | % 11
    <c a>4 <c' a>4 | % 12
    r16 a8 f16 c8 a8 | % 13
    bes4 -"C7" <g' e>4 | % 14
    c,4 <g' e>4  | % 15
    f8[ g8 a8 bes8] | % 16
    b16 c8 f16 d16 ( c16 a16 f16 )
    c4 -"" -"C7" <bes' d>4 |
    %c,8 <bes' e c>16 <bes
    %e c>16 s4 \change Staff="1" | % 2
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 |
    <c a>4 <c' a>4 | % 4
    r16 a8 f16 c8 a8| % 5
  }
    \alternative {
    {f4  <f' a,>4 | % 6
    r16 e8 d16 cis8 d8 | % 7
    <a a'>4 -"A7" ~ <a' a,>8 e8 
  | % 8
  <a a,>2 |}
  {bes,4 <g' d>4 | % 9
  c,4 -"C7" <c' e,>4 |
  <f, a,>2
  <f a,>8 r8 <g a cis,>8 \f  \bar "|."
  }
  }
}

saxalto =  \relative a' {
  r8.-"Dm" -\markup{ \italic {Batuque} }   a'16 f8. a16 | % 1
  e8. -"A7/E"  a16 g8. a16 | % 2
  d,8. -"Dm" a'16 f8. a16 | % 3
  e8. -"A7/E" a16 g8. a16[ | % 4
  d,16] -"Dm"-\markup{ \italic {Canto} } d8 ( e16 f16 g16 a16 bes16 -"A7/E"
  ) | % 6
  a16 gis16 a16 cis16 e8 f8 | % 7
  e16 d8 a16 c16 bes8 e,16 -"A7/E" | % 8
  <a a,>8. e16 <a a,>4 | % 9
  d,8.-"Dm" -\markup{ \italic {Batuque} }   a'16 f8. a16 | % 1
  e8. -"A7/E"  a16 g8. a16 | % 2
  d,8. -"Dm" a'16 f8. a16 | % 3
  e8. -"A7/E" a16 g8. a16[ | % 4
  d,16] -"D7" d8 -\markup{ \italic {Canto} } es16  d16 ( cis16 d16 a'16 ) | % 14
  g fis g16 bes16 d8 d8 -> | % 15
  r16 a8 bes16 a16 ( gis16 a16 cis16 ) | % 16
  e16 ( d16 a16 f16 ) d8 d8 ->
  r16 -"" -"D7" d8 es16 d16 ( cis16 d16 a'16 ) | % 2
  g16 fis16 g16 bes16 d8 d8 -">A7" | % 3
  r16 a8 bes16 a16 ( gis16 a16 [e'16 ) | % 4
  d8.]-"Dm" -\markup{ \italic {Batuque} }   a16 f8. a16 | % 1
  e8. -"A7/E"  a16 g8. a16 | % 2
  d,8. -"Dm" a'16 f8. a16 | % 3
  e8. -"A7/E" a16 g8. a16[ | % 4
  d8.]-"Dm" a16 f8. a16 | % 1
  e8. -"A7/E"  a16 g8. a16 | % 2
  d,8. -"Dm" a'16 f8. a16 | % 3
  e8. -"A7/E" a16 g8. a16 | % 4 
  <d, a f d>4 <d' a f d>4 -\markup{ \italic {Fine} } | % 9
  \repeat volta 2 {
    | % 9
    c,4 -\markup{ \italic {Coro e Dança} } -"C 7" <d' bes>4 |
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 | % 11
    <c a>4 <c' a>4 | % 12
    r16 a8 f16 c8 a8 | % 13
    bes4 -"C7" <g' e>4 | % 14
    c,4 <g' e>4  | % 15
    f8[ g8 a8 bes8] | % 16
    b16 c8 f16 d16 ( c16 a16 f16 )
    c4 -"" -"C7" <bes' d>4 |
    %c,8 <bes' e c>16 <bes
    %e c>16 s4 \change Staff="1" | % 2
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 |
    <c a>4 <c' a>4 | % 4
    r16 a8 f16 c8 a8| % 5
  }
    \alternative {
    {f4  <f' a,>4 | % 6
    r16 e8 d16 cis8 d8 | % 7
    <a a'>4 -"A7" ~ <a' a,>8 e8 
  | % 8
  <a a,>2 |}
  {bes,4 <g' d>4 | % 9
  c,4 -"C7" <c' e,>4 |
  <f, a,>2
  <f a,>8 r8 <g a cis,>8 \f  \bar "|."
  }
  }
}

% The score definition
\score {
  <<
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Piano"
      \context Staff = "1" <<
        \context Voice = "PartPOneVoiceOne" { 
          \clef "treble" \key f \major \time 2/4 
          \PartPOneVoiceOne
        }
      >> \context Staff = "2" <<
        \context Voice = "PartPOneVoiceTwo" { 
           \clef "bass" \key f \major \time 2/4
          \PartPOneVoiceTwo
        }
      >>
    >>

  >>
  \layout {}
  % To create MIDI output, uncomment the following line:
   \midi {
   \tempo 4 = 80 }
}

\book {
  \bookOutputSuffix "Clarinete e Sax Tenor em Bb"
  \header {
    title = "Corta Jaca (Gaúcho de cá e lá)"
    composer =  "Francisca Gonzaga (1847-1935)"
    instrument = "Clarinete e Sax Tenor em Bb"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "clarinete" {
	  \set midiInstrument = #"tenor sax"
	  \oneVoice
	  \voiceOne
	  \time 2/4
	  \clef G
	  \key g \major
	  \transpose f g, {
	    \saxtenor
	  }
	}
	>>
	\layout {}
	 \midi {
       \tempo 4 = 60
       \context {
         \Voice	
         \consists "Staff_Performer"
     }
     }
     } 
}

\book {
  \bookOutputSuffix "Sax Alto em Eb"
  \header {
    title = "Corta Jaca (Gaúcho de cá e lá)"
    composer =  "Francisca Gonzaga (1847-1935)"
    instrument = "Sax Alto em Eb"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
	\new Voice = "sax alto" {
	  \set midiInstrument = #"alto sax"
	  \oneVoice
	  \voiceOne
	  \time 2/4
	  \clef G
	  \key d \major
	  \transpose f d {
	    \saxalto
	  }
	}
	>>
	\layout {}
     }    
}

#(set-global-staff-size 30)

\book {
  \bookOutputSuffix "Eb_notas"
  \header {
    title = "Corta Jaca (Gaúcho de cá e lá)"
    composer =  "Francisca Gonzaga (1847-1935)"
    instrument = "Eb"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
  \score {
     <<
       \new Staff {
         \accidentalStyle Score.dodecaphonic
	\new Voice = "sax alto" {
	  \set midiInstrument = #"alto sax"
	  \oneVoice
	  \voiceOne
	  \time 2/4
	  \clef G
	  \key d \major
	  \transpose f d {
	    \easyHeadsOn
	    \teeny
	    \saxalto
	  }
	}
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