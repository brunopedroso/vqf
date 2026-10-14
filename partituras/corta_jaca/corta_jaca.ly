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
  <a f d a>16 r8 <a f d a>8 -"A7/E" | 
  r16 <g cis, a a'>16 <cis, a g' a>16 <g' cis, a a'>16 r8 <g cis, a>8
  | 
  r16 -"D m" <a f d a>16 <a f d a>16 <a f d a>16 r8 <a, a' f d>8
  -"A7/E" | 
  r16 <cis a g' a>16 <g' cis, a a'>16 <g cis, a a'>16 r8 <cis, a g'>8
  | 
  r16 -\markup{ \italic {Canto} } d'8 ( e16 f16 g16 a16 bes16 -"A7/E"
  ) | 
  a16 gis16 a16 cis16 e8 f8 | 
  e16 d8 a16 c16 bes8 e,16 -"A7/E" | 
  <a a,>8. e16 <a a,>4 | 
  r16 -\markup{ \italic {Batuque} } <a, f d a>16 <a f d a>16 <a f d a>16
  r8 <a f d a>8 -"A7/E" | 
  r16 <cis, a g' a>16 <g' cis, a a'>16 <g cis, a a'>16 r8 <g cis, a>8
  | 
  r16 <a f d a>16 <a f d a>16 <a, a' f d>16 r8 <a a' f d>8 -"A7/E" | 
  r16 <cis a g' a>16 <g' cis, a a'>16 <cis, a g' a>16 r8 <cis a g' a>8 | 
  r16 -"D7" d'8 -\markup{ \italic {Canto} } es16  d16 ( cis16 d16 a'16 ) | 
  g fis g16 bes16 d8 d8 -> | 
  r16 a8 bes16 a16 ( gis16 a16 cis16 ) | 
  e16 ( d16 a16 f16 ) d8 d8 ->
  r16 -"" -"D7" d8 es16 d16 ( cis16 d16 a'16 ) | 
  g16 fis16 g16 bes16 d8 d8 -">A7" | 
  r16 a8 bes16 a16 ( gis16 a16 e'16 ) | 
  d16 <a,, a' f d>16 -\markup{ \italic {Batuque} } <a a' f d>16 <a' f d a>16
  r8 <a f d a>8 | 
  r16 -"A7/E" <cis, a g' a>16 <g' cis, a a'>16 <cis, a g' a>16 r8 <cis a
  g' a>8 | 
  r16 <a a' f d>16 <a' f d a>16 <a, a' f d>16 r8 <a a' f d>8 -"A7/E" | 
  r16 <g' cis, a a'>16 <cis, a g' a>16 <g' cis, a a'>16 r8 <g cis, a a'>8  | 
  <d' a f d>4 <d' a f d>4 -\markup{ \italic {Fine} } | 
  \repeat volta 2 {
    | 
    c,4 -\markup{ \italic {Coro e Dança} } -"C 7" <d' bes>4 |
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 | 
    <c a>4 <c' a>4 | 
    r16 a8 f16 c8 a8 | 
    bes4 -"C7" <g' e>4 | 
    c,4 <g' e>4  | 
    f8[ g8 a8 bes8] | 
    b16 c8 f16 d16 ( c16 a16 f16 )
    c4 -"" -"C7" <bes' d>4 |
    %c,8 <bes' e c>16 <bes
    %e c>16 s4 \change Staff="1" | 
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 |
    <c a>4 <c' a>4 | 
    r16 a8 f16 c8 a8| 
  }
    \alternative {
    {f4  <f' a,>4 | 
    r16 e8 d16 cis8 d8 | 
    <a a'>4 -"A7" ~ <a' a,>8 e8 
  | 
  <a a,>2 |}
  {bes,4 <g' d>4 | 
  c,4 -"C7" <c' e,>4 |
  <f, a,>2
  <f a,>8 r8 <g a cis,>8 \f  \bar "|."
  }
  }
}

PartPOneVoiceTwo =  \relative d, {
  d8. -"" a'16 f'8. a,16 | 
  e8. a16 e'8. a,16 | 
  d,8. a'16 f'8. a,16 | 
  e8. a16 e'8. a,16 | 
  d,16 <d'' a f>8 <d a f>16 <d a f>8 <d a f>8 | 
  e,16 <g cis a>8 <g cis a>16 <g cis a>8 <g cis a>8 | 
  d16 <d' a f>8 <d a f>16 <d a f>8 <d a f>8 | 
  e,16 <g cis a>8 <g cis a>16 <g cis a>8 <g cis a>8 | \break  
  d,8 a'16 s16 f'8. a,16 | %9
  e8. a16 e'8. a,16 | 
  d,8. a'16 f'8. a,16 | 
  e8. a16 e'8. a,16 | \break 
  d,16 <fis' c' fis>8 <fis c' fis>16 <fis c' fis>8 <fis c' fis>8 | 
  g,16 <d'' bes g>8 <d bes g>16 <d bes g>8 <d bes g>8 | 
  a,16 <g' a cis>8 <g a cis>16 <g a cis>8 <g a cis>8 | 
  d16 <d' a f>8 <d a f>16 <d a f>8 <d a f>8 | \break 
  d,,16 <fis' c' fis>8 <fis c' fis>16 <fis c' fis>8 <fis c' fis>8 | 
  g,16 <d'' bes g>8 <d bes g>16 <d bes g>8 <d bes g>8 | 
  a,16 <g' a cis>8 <g a cis>16 <g a cis>8 <g a cis>8 | 
   d,8. a'16 f'8. a,16 | \break 
   e8. a16 e'8. a,16 | 
  d,8. a'16 f'8. a,16 | 
  e8. a16 e'8. a,16 | 
  <d d,>4 <d' a f d>4 | \break 
  \repeat volta 2 {
    e,8 <bes' e c>16 <bes e c>16 c,8 <bes' e c>16 <bes e c>16 | 
    e,16 <bes' e c>8 <bes e c>16 c,8 <bes' e c>8 | 
    f8 <f' c a>16 <f c a>16 c,8 <f' c a>16 <f c a>16 | 
    f,16 <f' c a>8 <f c a>16 c,8 <f' c a>8 | 
    e,8 <bes' e c>16 <bes e c>16 c,8 <bes' e c>16 <bes e c>16 | 
    e,8 <bes' e c>16 <bes e c>16 c,8 <bes' e c>16 <bes e c>16 | 
    c,8 <f' c a>16 <f c a>16 f,8 <f' c a>16 <f c a>16| 
    f,16 <f' c a>8 <f c a>16 c,8 <f' c a>8 \break 
    e,8 <bes' e c>16 <bes e c>16 c,8 <bes' e c>16 <bes e c>16 | 
    e,8 <bes' e c>16 <bes e c>16 c,8 <bes' e c>16 <bes e c>16 | 
    f8 <f' c a>16 <f c a>16 c,8 <f' c a>16 <f c a>16| 
    f,16 <f' c a>8 <f c a>16 c,8 <f' c a>8 \break 
  }
  \alternative {
    { 
      d, <a' d f>16 <a d f> f8 <a d f>16 <a d f> | 
      d,16 <a' d f>8 <a d f>16 <a d f>8 <a d f> | 
      a,8 <g' a cis e>16 <g a cis e> e8 <g a cis e>16 <g a cis e>16 | 
      a,8[ <a a'>8-> <bes bes'>8-> <b b'>8->] | 
    }
    {
      d <bes' d g>16 <bes d g> g8 <bes d g>16 <bes d g> | 
      c,8 <bes' c e>16 <bes c e> e,8 <bes' c e>16 <bes c e> | 
      f8 <a c f>16 <a c f> c,8 <a' c f>16 <a c f>16 | 
      <f a c f>4 <a, cis e a>4-> \f
    }
  }
}


saxtenor =  \relative a' {
  r8.-"Dm" -\markup{ \italic {Batuque} }   a'16 f8. a16 | 
  e8. -"A7/E"  a16 g8. a16 | 
  d,8. -"Dm" a'16 f8. a16 | 
  e8. -"A7/E" a16 g8. a16[ | 
  d,16] -"Dm"-\markup{ \italic {Canto} } d8 ( e16 f16 g16 a16 bes16 -"A7/E"
  ) | 
  a16 gis16 a16 cis16 e8 f8 | 
  e16 d8 a16 c16 bes8 e,16 -"A7/E" | 
  <a a,>8. e16 <a a,>4 | 
  d,8.-"Dm" -\markup{ \italic {Batuque} }   a'16 f8. a16 | 
  e8. -"A7/E"  a16 g8. a16 | 
  d,8. -"Dm" a'16 f8. a16 | 
  e8. -"A7/E" a16 g8. a16[ | 
  d,16] -"D7" d8 -\markup{ \italic {Canto} } es16  d16 ( cis16 d16 a'16 ) | 
  g fis g16 bes16 d8 d8 -> | 
  r16 a8 bes16 a16 ( gis16 a16 cis16 ) | 
  e16 ( d16 a16 f16 ) d8 d8 ->
  r16 -"" -"D7" d8 es16 d16 ( cis16 d16 a'16 ) | 
  g16 fis16 g16 bes16 d8 d8 -">A7" | 
  r16 a8 bes16 a16 ( gis16 a16 [e'16 ) | 
  d8.]-"Dm" -\markup{ \italic {Batuque} }   a16 f8. a16 | 
  e8. -"A7/E"  a16 g8. a16 | 
  d,8. -"Dm" a'16 f8. a16 | 
  e8. -"A7/E" a16 g8. a16[ | 
  d8.]-"Dm" a16 f8. a16 | 
  e8. -"A7/E"  a16 g8. a16 | 
  d,8. -"Dm" a'16 f8. a16 | 
  e8. -"A7/E" a16 g8. a16 |  
  <d a f d>4 <d' a f d>4 -\markup{ \italic {Fine} } | 
  \repeat volta 2 {
    | 
    c,4 -\markup{ \italic {Coro e Dança} } -"C 7" <d' bes>4 |
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 | 
    <c a>4 <c' a>4 | 
    r16 a8 f16 c8 a8 | 
    bes4 -"C7" <g' e>4 | 
    c,4 <g' e>4  | 
    f8[ g8 a8 bes8] | 
    b16 c8 f16 d16 ( c16 a16 f16 )
    c4 -"" -"C7" <bes' d>4 |
    %c,8 <bes' e c>16 <bes
    %e c>16 s4 \change Staff="1" | 
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 |
    <c a>4 <c' a>4 | 
    r16 a8 f16 c8 a8| 
  }
    \alternative {
    {f4  <f' a,>4 | 
    r16 e8 d16 cis8 d8 | 
    <a a'>4 -"A7" ~ <a' a,>8 e8 
  | 
  <a a,>2 |}
  {bes,4 <g' d>4 | 
  c,4 -"C7" <c' e,>4 |
  <f, a,>2
  <f a,>8 r8 <g a cis,>8 \f  \bar "|."
  }
  }
}

saxalto =  \relative a'' {
 r8. -"Dm" -\markup{ \italic {Batuque} } a16 f8. a16 | 
  e8. -"A7/E"  a16 g8. a16 | 
  d,8. -"Dm" a'16 f8. a16 | 
  e8. -"A7/E" a16 g8. a16[ | 
  d,16] -"Dm"-\markup{ \italic {Canto} } d8 ( e16 f16 g16 a16 bes16 -"A7/E"
  ) | 
  a16 gis16 a16 cis16 e8 f8 | 
  e16 d8 a16 c16 bes8 e,16 -"A7/E" | 
  <a a,>8. e16 <a a,>4 | 
  d,8.-"Dm" -\markup{ \italic {Batuque} }   a'16 f8. a16 | 
  e8. -"A7/E"  a16 g8. a16 | 
  d,8. -"Dm" a'16 f8. a16 | 
  e8. -"A7/E" a16 g8. a16[ | 
  d,16] -"D7" d8 -\markup{ \italic {Canto} } es16  d16 ( cis16 d16 a'16 ) | 
  g fis g16 bes16 d8 d8 -> | 
  r16 a8 bes16 a16 ( gis16 a16 cis16 ) | 
  e16 ( d16 a16 f16 ) d8 d8 ->
  r16 -"" -"D7" d8 es16 d16 ( cis16 d16 a'16 ) | 
  g16 fis16 g16 bes16 d8 d8 -">A7" | 
  r16 a8 bes16 a16 ( gis16 a16 [e'16 ) | 
  d8.]-"Dm" -\markup{ \italic {Batuque} }   a16 f8. a16 | 
  e8. -"A7/E"  a16 g8. a16 | 
  d,8. -"Dm" a'16 f8. a16 | 
  e8. -"A7/E" a16 g8. a16[ | 
  d8.]-"Dm" a16 f8. a16 | 
  e8. -"A7/E"  a16 g8. a16 | 
  d,8. -"Dm" a'16 f8. a16 | 
  e8. -"A7/E" a16 g8. a16 |  
  <d, a f d>4 <d' a f d>4 -\markup{ \italic {Fine} } | 
  \repeat volta 2 {
    | 
    c,4 -\markup{ \italic {Coro e Dança} } -"C 7" <d' bes>4 |
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 | 
    <c a>4 <c' a>4 | 
    r16 a8 f16 c8 a8 | 
    bes4 -"C7" <g' e>4 | 
    c,4 <g' e>4  | 
    f8[ g8 a8 bes8] | 
    b16 c8 f16 d16 ( c16 a16 f16 )
    c4 -"" -"C7" <bes' d>4 |
    %c,8 <bes' e c>16 <bes
    %e c>16 s4 \change Staff="1" | 
    r16 <c e,>8 <b es,>16 <bes d,>8 <bes, d>8 |
    <c a>4 <c' a>4 | 
    r16 a8 f16 c8 a8| 
  }
    \alternative {
    {f4  <f' a,>4 | 
    r16 e8 d16 cis8 d8 | 
    <a a'>4 -"A7" ~ <a' a,>8 e8 
  | 
  <a a,>2 |}
  {bes,4 <g' d>4 | 
  c,4 -"C7" <c' e,>4 |
  <f, a,>2
  <f a,>8 r8 <g a cis,>8 \f  \bar "|."
  }
  }
}

letratoda = \lyricmode {
  Nes -- te mun -- do de mi -- sé -- ri -- as
  Quem im -- pe -- ra
  É quem é mais fol -- ga -- zão
  É quem sa -- be cor -- tar ja -- ca
  Nos re -- que -- bros
  De su -- pre -- ma, per -- fei -- ção, per -- fei -- ção
  Ai, ai, co -- mo é bom dan -- çar, ai!
  Cor -- ta-ja -- ca as -- sim, as -- sim, as -- sim
  Me -- xe com o pé!
  Ai, ai, tem fei -- ti -- ço tem, ai!
  Cor -- ta meu ben -- zi -- nho as -- sim, as -- sim!
  Es -- ta dan -- ça é bu -- li -- ço -- sa
  Tão den -- go -- sa
  Que to -- dos que -- rem dan -- çar
  Não há ri -- cas ba -- ro -- ne -- sas
  Nem mar -- que -- sas
  Que não sai -- bam re -- que -- brar, re -- que -- brar
  Es -- te pas -- so tem fei -- ti -- ço
  Tal ou -- ri -- ço
  Faz qual -- quer ho -- mem coió
  Não há ve -- lho car -- ran -- cu -- do
  Nem si -- su -- do
  Que não caia em tro -- lo -- ló, tro -- lo -- ló
  Quem me vir as -- sim ale -- gre
  No Fla -- men -- go
  Por cer -- to se há de ren -- der
  Não re -- sis -- te com cer -- te -- za
  Com cer -- te -- za
  Es -- te jei -- to de me -- xer
  Um fla -- men -- go tão gos -- to -- so
  Tão rui -- do -- so
  Va -- le bem meia-pa -- ta -- ca
  Di -- zem to -- dos que na pon -- ta
  Es -- tá na pon -- ta
  Nos -- sa dan -- ça cor -- ta-ja -- ca, cor -- ta-ja -- ca!
}


\book {
  \bookOutputName "corta_jaca_C"
  \header {
    title = "Corta Jaca (Gaúcho de cá e lá)"
    composer =  "Francisca Gonzaga (1847-1935)"
    instrument = "Instrumentos em C"
    arranger = "Bloco Vai Quem Fica"
    copyright = "(ɔ) - CC BY-SA 4.0" 
    tagline = "Criado com Software Livre - Lilypond"  % removida mensagem de lilypond 
  }
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
   \midi { \tempo 4 = 80 }
 }
}

\book {
   \bookOutputName "corta_jaca_Bb"
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
    \bookOutputName "corta_jaca_Eb"
  \header {
    title = "Corta Jaca (Gaúcho de cá e lá)"
    composer =  "Francisca Gonzaga (1847-1935)"
    instrument = "Instrumentos em Eb"
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
    \bookOutputName "corta_jaca_Eb_notas"
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


\include "cifra_corta_jaca.ly"
\include "../cifra-formatos.ly"
#(set-global-staff-size 14)

\book {
  \bookOutputName "corta_jaca_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letratoda" {
            	  \time 2/4
%                \intro
             \saxalto
%              \partedois
           }
      }
              \new ChordNames \with {
               \consists "Bar_engraver"
                \override BarLine #'stencil = \barracifra
		}             
             \acordetodo
             \new Lyrics
             \lyricsto "letratoda" \letratoda
    >>
           \include "../imprimirsoletras.ly"
  }
}
