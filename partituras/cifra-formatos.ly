\version "2.18.2"

%Como devem aparecer acordes específicos:
bracordes = {
  <c es ges bes>1-\markup { \concat { "m" "5" \smaller {\flat} "/7"} }
  <c e g bes d'>1-\markup { \concat{"7/9"} }
  <c e g b>1-\markup { \concat{"7+"}} 
}

acordesbr = #(append
                 (sequential-music-to-chord-exceptions bracordes #t)
                 ignatzekExceptions) 


% retirado de:
% http://lilypond.1069038.n5.nabble.com/Adding-Bar-Line-types-td37399.html

 %Definir a nova barra
barracifra =
  #(ly:make-stencil
    `(path 0.2
          `(rmoveto -1 -2
            rlineto 2 4
            ))
     (cons -0.5 2)
     (cons -4 4))

% Dentro do ChordNames
%                \override BarLine #'stencil = \barracifra