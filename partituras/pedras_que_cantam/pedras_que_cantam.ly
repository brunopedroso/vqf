
\version "2.18.2"
% automatically converted by musicxml2ly from /home/GuigUse/Música/Pedras que Cantam VQF-Pedras_que_Cantam_VQF.mxl


\header {
  encodingsoftware = "Musescore / Frescobaldi / Lilypond"
  encodingdate = "2018-07-08"
  composer = "Raimundo Fagner"
  title = "Pedras que Cantam"
  arranger = "Bloco Vai Quem Fica (bas. Carlos Procat)"
  source = "http://www2.secult.ce.gov.br/recursos/PublicWebBanco/Partituraacervo/POP000012.pdf"
}

\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
#(set-global-staff-size 14)


clarineteintro =  \relative d''' {
  \clef "treble" \time 2/4 | 
  \tempo 4=140 r4 d4 | 
  cis4 b8 gis8 ~ | 
  gis2 ~ | 
  gis2 | 
  r4 d'4 | 
  cis4 b8 gis8 ~ | 
  gis2 ~ | 
  gis2 | 
  r4 d'4 | 
  cis4 b8 gis8 ~ | 
  gis2 ~ | 
  gis2 | 
  r4 d'4 | 
  cis4 b8 gis8 ~ | 
  gis2 ~ | 
  gis2 |
}

introclrep = \relative d''' {
  a16 a16 a16 a16 gis16 gis16 gis16 gis16 fis16 fis16 fis16 fis16  
}

clarineteintroc = \relative d'''{
  r4 
 \introclrep
 e,16 e16 e16 e16
 \introclrep
 e16 e16 e16 e16
 \introclrep
 e16 e16 e16 e16
 \introclrep
  gis2 | 
  ais4. gis8 ~ | 
  gis2 | 
  ais4. gis8 ~ | 
  gis2 | 
  ais4. gis8 ~ | 
  gis2 | 
  ais4. gis8 | 
  r4 e'8 e8| 
}


clarineteum = \relative d''' {
  \break
  \marcaA
  R2*7^\markup { \italic "Quem é rico mora na praia..." } | 
  r8 gis,4 a8 | 
  gis8 a8 gis8 a8 | 
  b4 -. r4 | 
  R2*5 | 
  gis4 -. a8 gis8 | 
}

clarinetedois = \relative d''' {
  \break
  \marcaB
  R2^\markup {\italic "Ô tempo"} | 
  a2^\markup {\italic "duro no ambiente ..."} | 
  gis2 | 
  a2 | 
  gis2 | 
  a2 | 
  ais2 | 
  r8 dis,8 fis8 e'8 | 
  b8 dis8 r4 | 
  e,2 | 
  e2 | 
  e2 | 
  e2 | 
  e4 f4 | 
  fis2 | 
  gis2 ~ | 
  gis2 |
}

clarinetetres = \relative d''' {
  \break
  \marcaC
  r8 cis,8^\markup {\italic "Pra ser feliz..."} cis8 cis8 | 
  b8 fis8 a8 a8 ~ | 
  a4 cis8 cis8 | 
  b8 fis8 a8 a8 ~ | 
  a4 cis8 e8 | 
  d8 cis8 b8 a8 | 
  cis4 cis4 | 
  r4 cis8 cis8 | 
  b8 b8 dis8 cis8 | 
  a8 a8 cis8 b8 | 
  gis4 e4 | 
  a2 | 
  gis2 | 
  a2 | 
}

clarinete = {
  \key f \major
  \transpose e g, {
  \clarineteintro
  \repeat volta 2 {
  \clarineteintroc
  \clarineteum
  \clarinetedois
  \clarinetetres
  }
  \clarineteintroc
  \bar "|."
  }
}

legaregare = \relative dis'' {
  r8 r16 fis^\markup {\italic "A legaregarê"} b fis b dis | 
  eis4 dis8 dis8 | 
}

legareguera = \relative c'' {
   r8 r16 fis^\markup {\italic "A legareguerá"} b fis b dis | 
  cis4 b8 b8 | 
}

semicolcheiasrepetidas = \relative c'' {
  e16 e e e 
  dis dis dis dis cis cis cis cis 
}


saxaltointro =  \relative d'' {
  \transposition es \clef "treble" \time 2/4 R2 | r2 | 
  \legaregare
  R2 | r2 | 
  \legareguera
  R2*2 | 
  \legaregare
  R2*2 | 
  \legareguera
}

saxaltointroc = \relative d'' {
  r4
  \semicolcheiasrepetidas
  b16 b b b
  \semicolcheiasrepetidas
  b16 b b b
  \semicolcheiasrepetidas
  b16 b b b
  \semicolcheiasrepetidas
  \legaregare 
  \legareguera
  \legaregare
  \legareguera
  r4 dis8 dis8 | 
}



saxaltoum = \relative d'' {
  \marcaA
  R2*7^\markup { \italic "Quem é rico mora na praia..." } | 
  r8 dis4 e8 | 
  dis8 e8 dis8 e8 | 
  fis4 -. r4 | 
  R2*5 |
  b4 -. b8 b8 | 
}
saxaltodois = \relative d'' {
  \marcaB
  r8 fis'4 e16 dis16 | 
  b8 b8 gis8 b8 | 
  b4 -. fis'8 e16 dis16 | 
  b8 b8 gis8 b8 | 
  b8 fis'8 e8 dis8 | 
  b8 b8 b8 dis8 | 
  cis8 b8 gis8 fis8 | 
  R2 | 
  r4 fis'8 e16 dis16 | 
  b8 b8 gis8 b8 | 
  b8 b8 fis'8 e16 dis16 | 
  b8 b8 gis16 b16 b16 b16 | 
  r8 fis'8 e8 dis8 | 
  b8 b8 gis8 dis'8 | 
  cis8 b8 gis8 b8 ~ | 
  b4 r4 | 
  R2
}

saxaltotres = \relative d'' {
  \marcaC
  r8 gis'8 gis8 gis8 | 
  fis8 cis8 e8 e8 ~ | 
  e4 gis8 gis8 | 
  fis8 cis8 e8 e8 ~ | 
  e4 gis8 b8 | 
  a8 gis8 fis8 e8 | 
  gis4 gis4 | 
  r4 gis8 gis8 | 
  fis8 fis8 ais8 gis8 | 
  e8 e8 gis8 fis8 | 
  dis4 b4 | 
  e2 | 
  dis2 | 
  e2 | 
}

saxalto = {
  \key e \major
  \saxaltointro
  \repeat volta 2 {
  \saxaltointroc
  \saxaltoum
  \saxaltodois
  \saxaltotres
  }
  \saxaltointroc
}

saxtenorintro =  \relative gis' {
  \transposition bes, \clef "treble" \key d \major \time 2/4 R2 | 
  r4 r8 gis8 ~ | 
  gis2 | 
  ais4. gis8 ~ | 
  gis2 ~ | 
  gis2 ~ | 
  gis2 | 
  ais4. gis8 ~ | 
  gis2 ~ | 
  gis2 ~ | 
  gis2 | 
  ais4. gis8 ~ | 
  gis2 ~ | 
  gis2 ~ | 
  gis2 | 
  ais4 gis8 gis8 | 
}

saxtenorintroc = \relative g' {
  R2 | R2*7 | 
    \transpose d g, {
      \legaregare
      \legareguera
      \legaregare
      \legareguera
    }
  r4 d'8 d |
}

saxtenorum = \relative g' {
  \marcaA
  R2*15^\markup {\italic "Quem é rico mora na praia..."} | 
  gis4 -. a8 gis8 | 
}

saxtenordois = \relative g' {
  \marcaB
  r8 b4 a16 gis16 | 
  e8 e8 cis8 e8 |
  e4 \bar "" \break  b'8 a16 gis16 | 
  e8 e8 cis8 e8 | 
  e8 \bar "" \break b'8 a8 gis8 | 
  e8 e8 e8 gis8 | 
  fis8 e8 cis8 b8 | R2 | \break
  r4 b'8 a16 gis16 | 
  e8 e8 cis8 e8 | 
  e8 e8 \bar "" \break b'8 a16 gis16 | 
  e8 e8 cis16 e16 e16 e16 | \break
  r8 b'8 a8 gis8 | 
  e8 e8 cis8 gis'8 | 
  fis8 e8 cis8 e8 ~ | e4 r4 | r2 |
}

saxtenortres = \relative g' {
  \marcaC
  r8 cis8 cis8 cis8 | 
  b8 fis8 a8 a8 ~ | \break
  a4 cis8 cis8 | 
  b8 fis8 a8 a8 ~ | \break
  a4 cis8 e8 | 
  d8 cis8 b8 a8 | 
  cis4 cis4 | \break
  r4 cis8 cis8 | 
  b8 b8 dis8 cis8 | 
  a8 a8 cis8 b8 | 
  gis4 e4 | \break
}

saxtenortresfinal = \relative g' {
    R2*3 |}

saxtenor = \relative g' {
  \saxtenorintro
  \repeat volta 2 {
  \saxtenorintroc
  \saxtenorum
  \saxtenordois
  \saxtenortres
  \saxtenortresfinal
  }
  \saxtenorintroc
  \bar "|."
}
trompeteintro =  \relative e' {
  \transposition bes' \clef "treble" \key d \major 
  R2*17
}

trompeteintroc = \relative e' {
  R2*16
}


trompeteum = \relative e'' {
  r4 r8 e8 ~ | 
  e8 e8 dis8 dis8 | 
  b8 b8 gis8 b8 ~ | 
  b8 gis4. | 
  r8 e8 gis8 b8 | 
  cis8 cis8 b8 b8 | 
  gis8 fis8 e8 gis8 ~ | 
  gis4 r4 | 
  r4 r8 e'8 ~ | 
  e8 e8 dis8 dis8 | 
  b8 b8 gis8 b8 ~ | 
  b8 b4. | 
  r8 cis8 cis8 cis8 | 
  cis8 cis8 b8 b8 | 
  gis8 fis8 e8 gis8 | 
  gis4 -. a8 gis8 | 
}

trompetedois = \relative c'' {
  R2*17^\markup {\italic "Ô tempo duro..."} 
}

trompetetres = \relative c''{
  R2*11^\markup {\italic "Pra ser feliz..."}
}

trompetetresfinal = \relative c''{
  r8 cis4 e8 | 
  \times 2/3  {
    gis4 b4 a4 ~
  }
  | 
  a8 cis,4 dis8 | 
  e4 r4 | 
}

trompeteintrocfinal = \relative e' {
  R2*7
  \transpose d g, {
    \legaregare
    \legareguera
    \legaregare
    \legareguera
    \bar "|."
  }
}

trompete = \relative e' {
  \trompeteintro
  \repeat volta 2 {
  \trompeteintroc
  \trompeteum
  \trompetedois
  \trompetetres
  \trompetetresfinal
  }
  \trompeteintrocfinal
}

tromboneintro =  \relative g'' {
  \clef "treble" \key d \major \time 2/4 
  R2*17 
}

tromboneintroc = \relative g'' {
  R2*16
}

tromboneum = \relative g'' {
  \marcaA
  r4 r8 fis8^\markup {\italic "Quem é rico mora na praia"} ~ | 
  fis2 ~ | 
  fis4. fis8 ~ | 
  fis2 ~ | 
  fis4. g8 ~ | 
  g2 ~ | 
  g4. fis8 ~ | 
  fis2 ~ | 
  fis4. d8 ~ | 
  d2 ~ | 
  d4. fis8 ~ | 
  fis2 ~ | 
  fis4. d8 ~ | 
  d2 ~ | 
  d2 | 
  fis4 -. g8 fis8 | 
}

trombonedois = \relative g''{
  \marcaB
  R2*17^\markup {\italic "Ô tempo duro no ambiente ..."} | 
}
trombonetres = \relative g'' {
  \marcaC
  r8 g4^\markup {\italic "Pra ser feliz e cantar..." } g8 | 
  r8 e4 e8 | 
  r8 g4 g8 | 
  r8 e4 e8 | 
  r8 g4 g8 | 
  r8 e4 e8 | 
  r8 g4 g8 | 
  b,8 ais8 b8 c8 | 
  cis4 r4 | 
  r8 g'4 g8 | 
  r8 fis4 fis8 | 
  r8 b,4 d8 | 
  \times 2/3  {
    fis4 a4 g4 ~
  }
  | 
  g8 b,4 cis8
  d2
}

trombone = \relative g' {
  \transposition bes'
  \tromboneintro
  \repeat volta 2 {
    \tromboneintroc
    \tromboneum
    \trombonedois
    \trombonetres
  }
  \transpose c bes {\trompeteintrocfinal}
}

tubaintro =  \relative d' {
  \transposition c \clef "bass" \key d \major \time 2/4
   R2 | 
  r4 r8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 | 
  r4 g4 | 
  fis4 e4 | 
}

tubaintroc = \relative d' {
  d4 g4 | 
  fis4 e4 | 
  d4 g4 | 
  fis4 e4 | 
  d4 g4 | 
  fis4 e4 | 
  d4 r4 | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 ~ | 
  d4 d8 d8 | 
  r4 r8 d8 ~ | 
}

tubaum = \relative d' {
  \marcaA
  d4 d8^\markup { \italic "Quem é rico mora na praia..." } d8 ~ | 
  d4 d8 fis,8 ~ | 
  fis4 a8 cis8 | 
  fis,8 fis8 a8 cis8 | 
  g4 b8 d8 | 
  g,4 b8 cis8 | 
  d8 b8 a8 b8 | 
  d4 fis8 a8 | 
  d,4 fis8 a8 | 
  d,4 fis8 a8 | 
  fis,8 fis8 a8 cis8 | 
  fis,4 a8 cis8 | 
  g4 b8 cis8 | 
  g4 b8 cis8 | 
  d4 -. g,8 d'8 | 
  R2 | 
}
tubadois = \relative d' {
  \marcaB
  g,4 b8^\markup { \italic "Ô tempo duro no ambiente..." } d8 | 
  d8 d8 fis8 a8 | 
  g,4 b8 d8 | 
  d8 d8 fis8 a8 | 
  g,4 b8 d8 | 
  e,4 gis8 b8 | 
  a8 a8 cis8 e8 | 
  a,4 e'8 cis8 | 
  g4 b8 d8 | 
  d8 d8 fis8 a8 | 
  g,4 b8 d8 | 
  d8 d8 fis8 a8 | 
  g,4 gis4 | 
  a4 cis8 e8 | 
  d4 a'8 fis8 | 
  d8 d8 fis8 g,8 ~ | 
  g4 b8 d8 | 
}
tubatres = \relative d' {
  \marcaC
  c4 e8^\markup { \italic "Pra ser feliz e cantar..." } g8 | 
  g,8 g8 b8 d8 | 
  c8 c8 e8 g8 | 
  g,4 b8 d8 | 
  c4 e8 g8 | 
  g,4 b8 d8 | 
  g,8 fis8 g8 gis8 | 
  a4 cis8 e8 | 
  g,4 b8 d8 | 
  fis,4 a8 cis8 | 
  g4 b8 d8 | 
  fis,4 a8 cis8 | 
  e4 g8 b8 | 
  d,4 g4 | 
   fis4 e4 | 
}

tuba = \relative d' {
  \tubaintro
  \repeat volta 2 {
  \tubaintroc
  \tubaum
  \tubadois
  \tubatres
  }
  \tubaintroc
  \bar "|."
  }
  
letraintro = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ 
}

letraintrocl = \lyricmode {
  \letraintro
  \letraintro
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
}

letraintrosax = \lyricmode {
  \letraintro
  \letraintro
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _
  
}

letraum = \lyricmode {
  Quem é ri -- co mo -- ra na prai -- a 
  mas quem tra -- ba -- lha nem tem on -- de mo -- rar 
  Quem não cho -- ra dor -- me com fo -- me 
  mas quem tem no -- me jo -- ga pra -- ta no ar 
}

letradois = \lyricmode {
  Ô tem -- po du -- ro no_am -- bi -- ente  
  ô tem -- po_es -- cu -- ro na me -- mória
  o tem -- po_é quen -- te 
  E_o dra -- gão é vo -- raz 
  Va -- mos em -- bo -- ra de re -- pen -- te 
  va -- mos em -- bo -- ra sem de -- mo -- ra 
  Va -- mos pra fren -- te que pra trás não dá mais 
}

letratres = \lyricmode {
  Pra ser fe -- liz num lu -- gar 
  pra sor -- rir e can -- tar 
  tan -- ta coi -- sa_a gen -- te_in -- ven -- ta 
  mas no di -- a que_a poe -- sia se ar -- re -- ben -- ta
}

pedrasvaocantar = \lyricmode {
  É que as pe -- dras vão can -- tar
}

ajustepedras = \lyricmode {
  _ _ _ 
}

letratoda = \lyricmode {
          \letraintro \letraintro 
          _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
        \letraum
        \ajustepedras
        \letradois
        \letratres
        \pedrasvaocantar
}


melodiatoda = \relative c'' {
   \clarineteintro
            \transpose b e' {\saxaltointroc}
            \break
            \marcaA
            \transpose c c' {
              \trompeteum
              \break
              \saxtenordois
              \break
              \saxtenortres
            }
              \trompetetresfinal
            \bar "|."
}

\book {
  \bookOutputName "pedras_que_cantam_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "flute" {
          \key ees \major
          \transpose e es, {
           \melodiatoda
          }
        }
                \addlyrics {
          \letratoda
      }
      }
      >>
    \layout {}
    \midi {}
    }
  }


\book {
  \bookOutputName "pedras_que_cantam_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \key f \major
          \transpose d es, {
           \melodiatoda
          }
        }
                \addlyrics {
          \letratoda
      }
      }
      >>
    \layout {}
    }
  }

\book {
  \bookOutputName "pedras_que_cantam_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \key c \major
          \transpose d c {
           \melodiatoda
          }
        }
                \addlyrics {
          \letratoda
      }
      }
      >>
    \layout {}
    }
  }


\book {
  \bookOutputName "pedras_que_cantam_Bb_clarinete"
  \header {
     instrument = "Para clarinetes"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "clarinet" {
            \key g \major
            \clarinete
          }
        \addlyrics {\letraintrocl \letratres}
      }
      >>
    \layout {}
    }
  }

\book {
  \bookOutputName "pedras_que_cantam_Bb_trompete"
  \header {
     instrument = "Para trompetes em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trumpet" {
          \transpose d g, {
            \trompete
          }
        }
        \addlyrics {
        \letraum
        \ajustepedras
        \pedrasvaocantar
      }
      }
      >>
    \layout {}
  }
}

\book {
  \bookOutputName "pedras_que_cantam_Bb_trombone"
  \header {
     instrument = "Para trombones em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose d g, {
            \trombone
          }
        }
        \addlyrics {
          \letraintro
          \ajustepedras
          \pedrasvaocantar
        }
      }
      >>
    \layout {}
    }
}

\book {
  \bookOutputName "pedras_que_cantam_Bb_saxtenor"
  \header {
     instrument = "Para Saxofone Tenor em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "tenorsax" {
          \transpose d g {
            \saxtenor
          }
        }
        \addlyrics {
          \letraintro
          \letradois
          \letratres
        }
      }
      >>
    \layout {}
    }
  }

\book {
  \bookOutputName "pedras_que_cantam_Eb_saxalto"
  \header {
     instrument = "Para Saxofone Alto em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "altosax" {
          \transpose d f, {
            \saxalto
          }
        }
        \addlyrics {
          \letraintrosax
          \letradois
          \letratres
        }
      }
      >>
    \layout {}
    }
  }

\book {
  \bookOutputName "pedras_que_cantam_C_tuba"
  \header {
     instrument = "Para Tuba em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "bass" {
          \transpose d f {
            \tuba
          }
        }
      }
      >>
    \layout {}
    }
  }


\book {
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Clarineta Bb, Clarinet"
      \set Staff.shortInstrumentName = "Cl. Bb"
      \context Staff <<
        \context Voice = "clarinete" { \transpose g es {\clarinete} }
      >>
    >>
    \new Staff <<
      \set Staff.instrumentName = "Saxofone Alto, Alto Sax"
      \set Staff.shortInstrumentName = "A. Sax"
      \context Staff <<
        \context Voice = "saxalto" { \transpose d es {\saxalto} }
      >>
    >>
     \new Staff <<
       \set Staff.instrumentName = "Saxofone Tenor, Tenor Sax"
       \set Staff.shortInstrumentName = "Sax. Tn."
       \context Staff <<
         \context Voice = "saxtenor" {\transpose d es { \saxtenor} }
       >>
     >>
      \new Staff <<
        \set Staff.instrumentName = "Trompete Piccolo em Bb, Trumpet"
        \set Staff.shortInstrumentName = "Tpt. Pic. Bb"
        \context Staff <<
          \context Voice = "trompete" { \transpose d es {\trompete} }
        >>
      >>
       \new Staff <<
         \set Staff.instrumentName = "Trombone, Trombone"
         \set Staff.shortInstrumentName = "Tbn."
         \context Staff <<
           \context Voice = "trombone" { \transpose g bes {\trombone }}
         >>
        >>
    \new Staff <<
      \set Staff.instrumentName = "Tuba"
      \set Staff.shortInstrumentName = "Tuba"
      \context Staff <<
        \context Voice = "tuba" { \transpose d es {\tuba} }
      >>
    >>

  >>
  \midi {}
}
}