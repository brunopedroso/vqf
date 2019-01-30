\version "2.18.2"
% automatically converted by musicxml2ly from festa_do_interior.mxl
%     subtitle = "[Audiveris detected movement]"
% adaptado de http://www.superpartituras.com.br
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"
\include "../formatoversos.ly"

\header {
    worknumber = "baião"
    encodingdate = "2019-01-29"
    title = "Feira de Mangaio"
    encodingsoftware = "Audiveris 5.1.0 / musicxml2ly/ Frescobaldi"
    composer = "Glorinha Gadêlha / Sivuca"
    }

#(set-global-staff-size 18)
parteum =  \relative e'' {
    \key g \major \time 2/4
    \partial 4  r16 \marcaA e d c
    \repeat volta 2 {
    b16   b d  c b b d c | 
    b b  e c b b d c | 
    b b dis   fis a a g fis | 
    g e  b' g e b' b b | 
    c a  a fis fis c' c c | 
    c b  b g e g g g | 
 
}
    \alternative {
    {    fis16 b, dis  fis a gis g fis |
         e e8  d16 ~ d c b8 ~  }
    {   fis'16 b, dis  fis a gis g fis }
    }
}
partedois = \relative c'' {
  e4 \marcaB r16 b16 b16 b16  
    \repeat volta 2 {
        b16 b   b16 b16  c16 b a8 ~ | 
        \tuplet 3/2 {a8 fis8 a8} \tuplet 3/2 {c c8 c} | 
        b8 b16 a16 ~ a16 a16 g8 ~ | 
        }
    \alternative { 
      { g4   r16 b16 b16 b16 }
      { g4   r16 e16 e16 e16 }
        } 
    e16 e16 g16 g16  g fis a8~  | 
    a16 fis a16 a16 a16 fis a16 a16 | 
    a16 fis a16 a16 a16 g16 b8 ~ | 
    b8 r16 e,16 e16 e16 e16 e16 | 
    e16 e16 g16 g16 g16 fis16 a8 ~ | 
    a16 fis16   
    a16 a16 a16 a16 d16 c16 b8 ~ | 
    b8 r8 b16 b16 b16 b16  \bar ".|"
    \repeat volta 2 {
        | 
        <e e>16   e16 *5 | 
        c16 a8.  a16 a16 a16  | 
        d16 d16 d16  d16 a16 a16 b8 ~ | 
        b8   r16 g8 g16 g16 g16 g16 | 
        <c c>16 c16   c16 g16 g16 a8 ~ | 
        a16  fis8 e16  c'16 b8 a16 | 
        g8 <e fis>16   ~  fis16 dis16  e8 ~ | 
        e16  r16 e16 g16 b16 b16 b16 b16 }
    | 
    e,4 e'16 d16 c16 | 
    r8. <b b>16   b16 b16 b16  \bar ".|"
    \repeat volta 2 {
        | 
        b8 b8 c8 c8 b8 a8 ~ | 
        a16 fis8 a16 a16 c8 c16 | 
        b8 b16 a16 ~ a16 a16 g8 ( | 
        g8 ) r16   b16 b16 b16 b16 b16 ( }
    | 
    g8 ) e16 e16 e16 e16 e16 | 
    e16 e16 g16 g16 g16 fis16 a8 ~ | 
    a8   fis8 a8 a16 a16 a16 a16 | 
    a16 a16 a16 a16 a16 g16 b8 ~ | 
    b8 r16   e,16 e16 e16 e16 e16 | 
    e16 e16 g16 g16 g16 fis16 a8 ~ | 
    a16   fis16 a16 a16 a16 a16 a16 a16 | 
    \key g \major a16 a16 a16 a16 d16 c16 b8 ~ | 
    b8   r8 b16 b16 b16 b16 \bar ".|"
    \repeat volta 2 {
        | 
        e16   e16 e16 e16 b16 b16 c8 ~ | 
        c8   a8. a16 a16 a16 a16 | 
        d16   d16 d16 d16 a16 a16 b8 | 
        b16   r16 g16 g16 g16 g16 g16 g16 | 
        c16   c16 c16 c16 g16 g16 a8 ~ | 
        a16 fis8   a16 c16 b8 a16 | 
        g8   e16 fis16 ~ fis16   dis16 e8 \bar "|"
        }
    \alternative { {
            | 
            e16   r16 e16 g16 b16 b16 b16 b16 }
        } | 
    e8. e16 r16 e16 d16 c16 | 
    b4   | 
    b2 \fermata \bar "|."
    }

parteumtuba =  \relative fis, {
    \clef "bass" \key g \major \time 2/4 | 
       r4 \bar "||"
      
    fis4. fis4 ( | 
    g4. ) g4 ( | 
    a4. ) a4 | 
    g4 g4 | 
    a4 d,4 | 
    g4 c4 | 
    fis,4 b4 | 
    e,16 e8 d16 ~ d16 c'16 b8 ~ | 
    b2 | 
    r16 e8 d16 d16 c16 b8 ~ | 
    b2 \bar "||"
    e,8. e16 r4 \bar ".|"
    \repeat volta 2 {
        e16 e'8 e16 r4 | 
        b16 b'8 b16 r4 | 
        b,8. b'8. b,16 b'16 r8 dis,,8 | 
        }
    \alternative { {
            e4 e'4 r16 r8. }
        } | 
    e,4 e'4 r16 | 
    e,16 e'8 e16 b8 | 
    a16 a'8 b16 b,8 b'8 | 
    b,16 b'8 b16 fis,8 b'8 f16 eis16 d16 cis16 d,4 | 
    eis2 | 
    d4 | 
    \key g \major b'16 ais16 b16 cis16 d,16 dis16 e8 ~ | 
    e8 r8 e4 \bar ".|"
    \repeat volta 2 {
        | 
        e4 ~ e'4 ~ | 
        a,16 a8. a8 g8 | 
        d4 e16 fis16 g8 ~ | 
        g8 r16 g16 g16 fis16 e16 d16 ~ | 
        d16 c'16 b16 c16 d,16 b'16 e,8 ( | 
        fis16 ) a8 fis16 e16 d8 c'16 | 
        b8 b16 b16 ~ b16 b16 e,8 ~ | 
        e8 r8 e4 ~ }
    | 
    e4 | 
    e16 e'8 e16 b8 e8 \bar ".|"
    \repeat volta 2 {
        | 
        e,16 e'8 e16 e,4 e'4 | 
        b16 b'8 b16 fis,8 b'8 | 
        b,8. b'16 fis,8 b'8 | 
        e,,8. e'16 b8 e8 }
    | 
    e,16 e'8 e16 b8 e8 | 
    e,8. e'16 b8 e8 | 
    b16 b'8 b16 fis,8 b'8 | 
    fis,4 fis8 g16 eis16 d16 cis16 d8 r8 | 
    d2 ( | 
    b'2 ) | 
    \key g \major b16 a16 b16 c16 d,16 dis16 e8 ~ | 
    e8 e4 ( \bar ".|"
    \repeat volta 2 {
        | 
        gis4 ) r4 | 
        a4 g16 g16 fis16 e16 | 
        e16 d16 c'16 d,16 e16 c'16 fis,8 ~ | 
        fis4 ( d4 ) ( | 
        c'4 ) d,16 e16 fis8 ~ | 
        fis16 a8 fis16 e16 d8 c16 | 
        b'8 b16 b16 ~ b16 b16 e,8 \bar "|"
        }
    \alternative { {
            | 
            e8 r8 e4 ~ }
        } | 
    e8. e16 r16 e4 | 
    e4 ~ e'4 | 
    e,2 e'2 \bar "|."
    }

letraintro = \lyricmode {
  _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ 
  _ _ _ _ _ _ _ _ 
}
letraum = \lyricmode {
Fu -- mo de ro -- lo_ar -- reio de can -- ga -- lha 
Eu te -- nho pra ven -- der, quem quer com -- prar
 Bo -- lo de  % mi  -- lho broa e co -- ca -- da
% Eu te -- nho pra ven -- der, quem quer com -- 
prar
Pé de mo -- le -- que, a -- le -- crim, ca -- ne -- la
Mo -- le -- que sai da -- qui me dei -- xa tra -- ba -- lhar
E Zé saiu cor -- ren -- do pra fei -- ra de pás -- sa -- ros
E foi pás -- sa -- ro vo -- an -- do em to -- do lu -- gar
Ti -- nha uma ven -- di -- nha no can -- to da rua
On -- de o man -- gai -- ei -- ro ia se ani -- mar
To -- mar uma bi -- ca -- da com lam -- bu as -- sa -- do
E olhar pra Ma -- ria do Joá
Ti -- nha uma ven -- di -- nha no can -- to da rua
On -- de o man -- gai -- e -- ro ia se ani -- mar
To -- mar uma bi -- ca -- da com lam -- bu as -- sa -- do
E olhar pra Ma -- ria do Joá
Ca -- bres -- to de ca -- va -- lo e ra -- bi -- cho -- la
Eu te -- nho pra ven -- der, quem quer com -- prar
Fa -- ri -- nha ra -- pa -- du -- ra e gra -- vi -- o -- la
Eu te -- nho pra ven -- der, quem quer com -- prar
Pa -- vio de can -- de -- ei -- ro pa -- ne -- la de bar -- ro
Me -- ni -- no vou me em -- bo -- ra te -- nho que vol -- tar
Xa -- xar o meu ro -- ça -- do que nem boi de car -- ro
Al -- par -- ga -- ta de ar -- ras -- to não quer me le -- var
Por -- que tem um san -- fo -- nei -- ro no can -- to da rua
Fa -- zen -- do flo -- reio pra gen -- te dan -- çar
Tem o Ze -- fa de pur -- ci -- na fa -- zen -- do ren -- da
E o ron -- co do fo -- le sem pa -- rar
Mas é que tem um san -- fo -- nei -- ro no can -- to da rua
Fa -- zen -- do flo -- reio pra gen -- te dan -- çar
Tem o Ze -- fa de pur -- ci -- na fa -- zen -- do ren -- da
E o ron -- co do fo -- le sem pa -- rar
Fu -- mo de ro -- lo ar -- reio de can -- ga -- lha
Eu te -- nho pra ven -- der, quem quer com -- prar
Bo -- lo de mi -- lho broa e co -- ca -- da
Eu te -- nho pra ven -- der, quem quer com -- prar
Pé de mo -- le -- que, ale -- crim, ca -- ne -- la
Mo -- le -- que sai da -- qui me dei -- xa tra -- ba -- lhar
E Zé saiu cor -- ren -- do pra fei -- ra de pás -- sa -- ros
E foi pás -- sa -- ro vo -- an -- do em to -- do lu -- gar
Ti -- nha uma ven -- di -- nha no can -- to da rua
On -- de o man -- gai -- ei -- ro ia se ani -- mar
To -- mar uma bi -- ca -- da com lam -- bu as -- sa -- do
E olhar pra Ma -- ria do Joá
Mas é que tem um san -- fo -- nei -- ro no can -- to da rua
Fa -- zen -- do flo -- reio pra gen -- te dan -- çar
Tem o Ze -- fa de pur -- ci -- na fa -- zen -- do ren -- da
E o ron -- co do fo -- le sem pa -- rar
}

letratoda = \lyricmode {
  \letraintro
  \letraum
}

\book {
  \bookOutputName "feira_de_mangaio_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
            \transpose e a {
        \tempo 4 = 125 {

%             \intro
            \parteum
%             \skip 256 \bar "" \break
             \partedois
            }
          }
        }
        \addlyrics \letratoda
      }

    >>
    \layout{
    }
  }
    \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
%				\trackB
        \new Voice = "saxalto" {
          \tempo 4 = 125 {
            \unfoldRepeats {
%               \intro
              \parteum
%             \skip 256 \bar "" \break
               \partedois
            }
          }
        }
       }
    >>
		\midi {}
  }
}

\book {
  \bookOutputName "feira_de_mangaio_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "saxalto" {
          \transpose c a {
%             \intro
            \parteum
%             \skip 256 \bar "" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
    }
  }
}

\book {
  \bookOutputName "feira_de_mangaio_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \transpose c d {
%             \intro
            \parteum
%             \skip 256 \bar "" \break
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout {
    }
  }
}

#(set-global-staff-size 40)
\book {
  \bookOutputName "feira_de_mangaio_Eb_notas"
  \header {
     title = \markup {\fontsize #-3 "Boi Voador não Pode"}
     instrument = "Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \accidentalStyle Score.dodecaphonic
        \new Voice = "saxalto" {
          \easyHeadsOn
          \teeny
          \transpose c a {
%             \intro
            \parteum
            \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
     \layout {
       \apertacompasso
    \context {
      \Voice
      \consists \Gravador_nome_notas
    }
    }
  }
}
