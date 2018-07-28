\version "2.18.2"
#(define Gravador_nome_notas
   (make-engraver
    (acknowledgers
     ((note-head-interface engraver grob source-engraver)
      (let* ((context (ly:translator-context engraver))
	    (note-names 
	      (vector '"dó" '"ré" '"mi" '"fá" '"sol " '"lá" '"si")))
	(ly:grob-set-property! grob 'note-names note-names))))))

% Na partitura, criar um book com as seguintes configurações:
% #(set-global-staff-size 40)
% \layout {
%   ragged-right = ##t
%   \context {
%     \Voice
%     \consists \Gravador_nome_notas    
%   }
% }

%    \easyHeadsOn

   % \teeny 