
\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\version "2.18.2"
% automatically converted by musicxml2ly from /home/GuigUse/Nextcloud/Musica/2018-vqf/bananeira/bananeira-p1.mxl

\header {
  title = "Bananeira"
  composer = "João Donato"
  encodingsoftware = "Audiveris 5.0.0"
  source = "/home/GuigUse/Nextcloud/Musica/2018-vqf/bananeira/emorio-joao-donato-p1.tif"
  encodingdate = "2018-01-15"
  copyright = "(copyleft) CC-BY-SA 4.0"
}

bananeiranaosei = \relative a' {
  c16 c a8 d \bar "" \break 
    a16 a | 
    c c a d~d \bar "" \break 
    a c c | 
    a16 a16 d8 a8 \bar "" \break 
    c16 d16 | 
    e16 d16 c16 a16 ~ a8 \bar "" \break 
    d,16 d16  | 
    f f  d8 g8 d16 d16  | 
    f16 f16 d16 g16 ~ g16 d16 f16
    f16  | 
    d16 d16 g8 d8 f16 g16  | 
}

nofundodoquintal = \relative a' {
  g2~ | g8 r16 a16 c16 bes a g  | 
  a2 ~ | a8. e'16 g16 f16 e16 d16 |
  e2 ~| e8. e16 g16 f16 e16 d16  | 
  e2 ~ | e4 r8 a,16 a \bar "||"
}
parteum =  \relative a' {
  \time 2/4
  \key f \major
  \partial 8 a16 -"" a16 \bar ".|"
  \repeat volta 2 {
    \bananeiranaosei      
  }
   \alternative {
     {a16 g16 f16 d16 ~ d8 a'16 a16}
     {a16 g16 f16 d16 ~ d8 a'8 \bar "||"}
   }
   \nofundodoquintal
   \bananeiranaosei
  a16 g16 f16 d16 ~ d8 e'16 e16
  \repeat volta 2 {
    d d c8 b8. g16 |
    a8. a16 r8 e'16 e | d d c8 b8. g16 |
    a8. a16 r8 a16 a | g g f8 e8. c16 |
    d8. d16 r8 a'16 a | g g f8 e8. c16 |
  }
  \alternative {
    {d8. d16 r8 e16 e }
    {d8. d16 r8 a' }
  }
}

letraum =  \lyricmode {
  ba -- na -- nei -- ra, não sei
  ba -- na -- nei -- ra, sei lá
  a ba -- na -- nei -- ra, sei não
  a ma -- nei -- ra de ver
  
  ba -- na -- nei -- ra, não sei
  ba -- na -- nei -- ra, sei lá
  a ba -- na -- nei -- ra, sei não
  is -- so é lá com vo-cê
  ba -- na
  é lá com vo-cê
  se -- rá
  no fun -- do do quin -- tal
  quin -- tal do seu o -- lhar
  o -- lhar do co -- ra -- ção
}

% The score definition
\score {
  <<
    \new Staff <<
      \set Staff.instrumentName = "Part_1"
      \context Staff <<
        \context Voice = "parteumvoz" { \parteum }
        \new Lyrics \lyricsto "parteumvoz" \letraum
      >>
    >>

  >>
  \layout {}
  \midi {
  \tempo 4 = 150
  }
}

