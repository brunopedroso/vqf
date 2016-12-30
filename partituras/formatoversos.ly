\header {
  arranger = "Bloco Vai Quem Fica"
  copyright = "(ɔ) - CC BY-SA 4.0" 
  tagline = "Criado com Software Livre - Lilypond"
}
\layout{
	indent = 0
	ragged-right = ##t
	\set Score.markFormatter = #format-mark-box-letters
	\context {
	  \type "Engraver_group"
	  \consists "Time_signature_engraver"
	  \consists "Axis_group_engraver"
	  \name "TimeSig"
	  \alias "Staff"
	  \override TimeSignature.font-size = #3
	  \override TimeSignature.break-align-symbol = ##f
	  \override TimeSignature.X-offset =
	  #ly:self-alignment-interface::x-aligned-on-self
	  \override TimeSignature.self-alignment-X = #CENTER
	  \override TimeSignature.after-line-breaking =
	  #shift-right-at-line-begin
	}
	\context {
	  \Score
	  \accepts TimeSig
	  \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/128)
	}
	\context {
	  \Staff
	  \remove "Time_signature_engraver"
	}
	  %\override BarLine #'transparent = ##t
}

\paper {
        markup-system-spacing #'basic-distance = #20
    }

compassoseparado = { \numericTimeSignature \time 4/4 s1}