\version "2.18.2"
% automatically converted by musicxml2ly from festa_do_interior.mxl
%     subtitle = "[Audiveris detected movement]"
% adaptado de http://www.festivaldecorais.com.br/index.php/arranjos/
\include "../formatoversos.ly"
\include "../marcaspadronizadas.ly"
\include "../nomedasnotas.ly"

\header {
    worknumber = "frevo"
    encodingdate = "2019-01-29"
    title = "Festa do Interior"
    encodingsoftware = "Audiveris 5.1.0 / musicxml2ly/ Frescobaldi"
    source = "http://www.festivaldecorais.com.br/wp-content/uploads/fic/arranjos/Festa%20no%20Interior%20-%20GRD.pdf"
    composer = "Moraes Moreira - Abel Silva"
    poet = "adap. de arr. de Ismael Barbosa"
    }

letraintro = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  _ _ _
}

letradois = \lyricmode {
  
  _ Fa -- gu -- lhas, pon -- tas de a -- gu -- lhas
  Bri -- lham es -- tre -- las de São Jo -- ão
  Ba -- ba -- dos, xo -- tes e xa -- xa -- dos
  Se -- gu -- ra_as pon -- tas meu co -- ra -- çã -- o
  Bom -- bas na guer -- ra ma -- gi -- a
  Nin -- guém ma -- ta -- va, nin -- guém mor -- ri -- a
  Nas trin -- chei -- ras da ale -- gri -- a
  O que ex -- plo -- di -- a e -- ra o a -- mor
  Nas trin -- chei -- ras da ale -- gri -- a
  O que ex -- plo -- di -- a e -- ra o a -- mor
  Fa
  % -- gu -- lhas, pon -- tas de agu -- lhas
  % Bri -- lham es -- tre -- las de São João
  % Ba -- ba -- dos, xo -- tes e xa -- xa -- dos
  % Se -- gu -- ra as pon -- tas meu co -- ra -- ção
  % Bom -- bas na guer -- ra-ma -- gia
  % Nin -- guém ma -- ta -- va, nin -- guém mor -- ria
  % Nas trin -- chei -- ras da ale -- gria
  % O que ex -- plo -- dia era o amor
  % Nas trin -- chei -- ras da ale -- gria
  % O que ex -- plo -- dia era o amor
  mor
  _ _ _ 
  E_ar -- di -- a a -- que -- la fo -- guei -- ra
  Que me_es -- quen -- ta -- va a vi -- da_in -- tei -- ra
  E -- ter -- na noi -- te sem -- pre_a pri -- mei -- ra
  Fes -- ta do In -- te -- ri -- or 
   _ _ _
  E_ar 
  % -- dia aque -- la fo -- guei -- ra
  % Que me es -- quen -- ta a vi -- da in -- tei -- ra
  % Eter -- na noi -- te sem -- pre a pri -- mei -- ra
  Fes -- ta do In -- te -- ri -- or
}

letratoda = \lyricmode {
  \letraintro
\letradois
}


intro =  \relative g' {
        \clef "treble" \key c \major \time 2/4 | \autoBeamOn
        \partial 4 c,16 [ \marcaA e16 g16 c16 ] 
        \repeat volta 2 {
            \Segno a8  [ g8 e8 g8 ] | 
            r b8 r a8 | r g8 r f8  |
             e8 r c16 [ e16 g16 c16 ] | a8 [ g8 e8 g8 ] | 
            r b8 r a8  | r g r f \Coda | 
            }
            
        \alternative { 
          { e r c16 [ e g c ] }
          { e,8 [e16 e] e8 [e] }
        } 
}
parteum = \relative g' {
            e4 r8 \pulalinha 
            \marcaB g  |
            \repeat volta 2 {
              e [c e g] | a4 g8 e~|e c8 ~c4 \break
              a'8 a g e ~ | e c ~ c \pulalinha 
              g' | b4 bes8 a~ | a2 ~ | a4 r8 \pulalinha 
              a  | b a f d | b'4 a8 f ~ | f d ~ d4 \break
              c'8 c b f~ | f d ~ d4 | \break
              c'8 c b e, ~ | e g ~ g4 ~ | g2 | \break
              e8 c e g | a4 g8 e ~| e c~ c \pulalinha
              g' | a4 g8 bes8 ~ | bes g ~ g \pulalinha
              a | bes4 c8 d~ | d a ~ a4 ~| a4 r8 \pulalinha
              f'8 ~| f e d f | e4 d8 e8 ~ | e d \pulalinha
              c e | d4 c8 d8 ~ | d c b d | c4 b8 e ~ | e2 ~| e4 r8 \pulalinha
              f8 ~| f e d f | e4 d8 e8 ~ | e d \pulalinha
              c e | d4 c8 d8 ~ | d c b d | c4 b8 c ~ | 
            }
            \alternative {
              { c2 ~ | c4 r8 g}
              { c8 r c4 | }
            }
            cis4 d8 \pulalinha 
            \marcaC f |

    }
partedois = \relative g'' {
  \repeat volta 2 {
    e16 [ e8 e16] b16 [ b8 b16] | gis16 [ gis8 gis16] \pulalinha
    e8 e | a16 [ a8 a16] c c8 c16 | e8 \pulalinha
    e d e | d4 a | r8 e' d e | f4 d~| d r8 \pulalinha
    f~ |
  }
  \alternative {
    {f e d c | b4 a8 g~ | g r8 c4 | cis4 d8 f }
    {f e d f | e4 d8 c~ | }
  }
  c r c,16 e g c  
  \DSCoda   e,8 [e16 e] e8 [e] | e8 r4. \bar "|."
}

partedoisemcoda = \relative g'' {
  \repeat volta 2 {
    e16 [ e8 e16] b16 [ b8 b16] | gis16 [ gis8 gis16] \pulalinha
    e8 e | a16 [ a8 a16] c c8 c16 | e8 \pulalinha
    e d e | d4 a | r8 e' d e | f4 d~| d r8 \pulalinha
    f~ |
  }
  \alternative {
    {f e d c | b4 a8 g~ | g r8 c4 | cis4 d8 f }
    {f e d f | e4 d8 c~ | }
  }
  c r c,16 e g c  
}

introtuba = \relative g {
    \clef "bass"
     \time 2/4 | 
       \partial 4 c,16 [ \marcaA e16 g16 c16 ] 
        \repeat volta 2 {
            \Segno a8  [ g8 e8 g8 ] | 
            r b8 r a8 | r g8 r f8  |
             e8 r c16 [ e16 g16 c16 ] | 
            a8 [ g8 e8 g8 ] | 
            r b8 r a8  | r g r f \Coda | 
            }
            
        \alternative { 
          { e r c16 [ e g c ] }
          { e,8 [e16 e] e8 [e] }
        } 
}
parteumtuba =  \relative g {

    \repeat volta 2 {
        c,8 [ c8 e8 g8 ] | 
        f4 g8 [ c,8 ~ ] | 
        c8 [ e8 ~ ] e4 | 
        f8 [ f8 g8 c,8 ~ ] | 
        c8 [ e8 ~ e8 c8 ]  
        e4 cis8 [ d8 ~ ] | 
        d8 d4 d8 | 
        a8 d8 r a4 | 
        d8 [ d8 f8 a8 ] | 
        g4 g8 [ d8 ~ ] | 
        d8 f8 ~ f4  
        d8 [ d8 d8 g8 ~ ] | 
        g8 g8 ~ g4 | 
        g8 [ g8 g8 c,8 ~ ] | 
        c8 c4 c8 | 
        d4 g8 d8 r | 
        c8 [ c8 c8 c8 ]  | 
        f4 g8 [ c,8 ] | 
        c8 e8 ~ e8 [ c8 ] | 
        f4 g8 [ g8 ~ ] | 
        g8 g8 ~ g8 [ g8 ] | 
        c,4 c8 [ f8 ( ] \bar "||"
         
        f8 ) f4 f8 | 
        f4 d8 r f8 ~ | 
        f8 f8 d8 d8 | 
        g4 g8 [ c,8 ( ]  
        c8 ) [ c8 c8 c8 ] | 
        a4 a8 [ d8 ~ ] | 
        d8 [ d8 d8 d8 ] | 
        g4 g8 [ g8 ~ ] | 
        g8 g4 g8  | 
        c,4 d8 r c8 ~ | 
        c8 [ c8 f8 f8 ] | 
        bes,4 d8 [ c8 ~ ] | 
        c8 [ c8 c8 c8 ] | 
        a4 a8 [ d8 ~ ] | 
        d8 [ d8 d8 d8 ]  
        g,4 g8 [ c8 ~ ] | 
        c8 c4 c8 | 
        g4 d'8 r g8 }
    | 
    c,8 d8 r c4 | 
    d4 dis8 [ dis8 ]  
}
partedoistuba = \relative g {
  \repeat volta 2 {
        e16 [ e8 e16 ] e16 [ e8 e16 ] | 
        e16 [ e8 e16 ] gis8 [ gis8 ] | 
        a16 [ a8 a16 ] a8 [ a8 ] | 
        a8 [ a8 a8 a8 ]  | 
        d,4 d4 | 
        d8 r d8 d8 [ d8 ] | 
        d4 d4 ~ | 
        d4 d8 r g8 ~ | 
        g8 [ g8 g8 g8 ] | 
        g4 g8 [ c,8 ( ]  
        c8 ) d8 r c8 | 
        d4 dis8 [ dis8 ] }
    | 
    g,8 [ g8 g8 g8 ] | 
    g4 g8 [ c8 ~ ] | 
    c8 d8 r c16 [ e16 g16 c16 ] \bar "||"
     
    c,8 [ c16 c16 ] c8 [ c8 ] | 
    c8 d8 r d4 r \bar "|."
    }
    

parteumtubaLyricsOne =  \lyricmode { \letratoda }

\book {
  \bookOutputName "festa_do_interior_C"
  \header {
     instrument = "Para instrumentos em C"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \tempo 4 = 140
          \transpose c c {
             \intro
            \parteum
%             \skip 256 \bar "festa_do_interior_letra" 
             \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout { \apertacompasso
    }
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \unfoldRepeats {
          \tempo 4 = 140
          \transpose c c {
             \intro
            \parteum
%             \skip 256 \bar "festa_do_interior_letra" 
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
  \bookOutputName "festa_do_interior_Bb"
  \header {
     instrument = "Para instrumentos em Bb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \tempo 4 = 140
          \transpose c d {
             \intro
            \parteum
%             \skip 256 \bar "festa_do_interior_letra" 
             \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout { \apertacompasso
    }
  }
}

\book {
  \bookOutputName "festa_do_interior_Eb"
  \header {
     instrument = "Para instrumentos em Eb"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \tempo 4 = 140
          \transpose c a {
             \intro
            \parteum
%             \skip 256 \bar "festa_do_interior_letra" 
             \partedois
          }
        }
        \addlyrics \letratoda
      }
    >>
    \layout { \apertacompasso
    }
  }
}

\book {
  \bookOutputName "festa_do_interior_C_Tuba"
  \header {
     instrument = "Tuba"
  }
  \score {
    <<
      \new TimeSig \compassoseparado
      \new Staff {
        \new Voice = "trombone" {
          \tempo 4 = 140
          \transpose c d {
             \introtuba
            \parteumtuba
%             \skip 256 \bar "festa_do_interior_letra" 
              \partedoistuba
          }
        }
%         \addlyrics \letratoda
      }
    >>
    \layout { \apertacompasso
    }
  }
}

#(set-global-staff-size 32)
\book {
  \bookOutputName "festa_do_interior_Eb_notas"
  \header {
     title = \markup {\fontsize #-3 "Festa do Interior"}
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
            \intro
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

#(set-global-staff-size 20)

\book {
  \bookOutputName "festa_do_interior_letra"
  \header {
     instrument = "Letra e Acordes"
  }
   \score {
    <<
       \new Staff  {
          \new Voice = "letra" {
             \parteum
             \partedoisemcoda
           }
      }
  %           \new ChordNames 
  %           \acordetodo
             \new Lyrics
             \lyricsto "letra" \letradois
    >>
           \include "../imprimirsoletras.ly"
  }
}
