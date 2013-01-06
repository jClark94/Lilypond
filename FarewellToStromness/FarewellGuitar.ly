#(define (tie::tab-clear-tied-fret-numbers grob)
   (let* ((tied-fret-nr (ly:spanner-bound grob RIGHT)))
      (ly:grob-set-property! tied-fret-nr 'transparent #t)))

\version "2.10.5"

\header {
  title = "Farewell to Stromness"
  composer = "Peter Maxwell Davies"
}

\paper {
   indent = #0
   ragged-right = ##f
   ragged-bottom = ##f
   ragged-last-bottom = ##f
}
\layout {
   \context { \Score
      \override MetronomeMark #'padding = #'5
   }
   \context { \Staff
      \override TimeSignature #'style = #'numbered
      \override StringNumber #'transparent = ##t
   }
   \context { \TabStaff
      \override TimeSignature #'style = #'numbered
      \override Stem #'transparent = ##t
      \override Beam #'transparent = ##t
      \override Tie  #'after-line-breaking = #tie::tab-clear-tied-fret-numbers
   }
   \context { \TabVoice
      \override Tie #'stencil = ##f
   }
   \context { \StaffGroup
      \consists "Instrument_name_engraver"
   }
}
deadNote = #(define-music-function (parser location note) (ly:music?)
   (set! (ly:music-property note 'tweaks)
      (acons 'stencil ly:note-head::print
         (acons 'glyph-name "2cross"
            (acons 'style 'special
               (ly:music-property note 'tweaks)))))
   note)

palmMute = #(define-music-function (parser location note) (ly:music?)
   (set! (ly:music-property note 'tweaks)
      (acons 'style 'do (ly:music-property note 'tweaks)))
   note)

classicalGuitar = 
{
   \tempo 4=60
   \key d \major
   \time 3/4
   \oneVoice
   <d,\6>4. <fis,\6>4. <g,\6>4.
   <a,\5>4. <d,\6>4. <d\4 fis,\6 >4.
   <g,\6>4. <e\4 a,\5 >4. 
   <fis'\1 d,\6 >16 <g'\1>16 r4 <a'\1 d\4 fis,\6 >4 <d'\2>8 <b\2 g,\6 >16 <d'\2>16 r8 
   r8 <cis'\2 e\4 a,\5 >4 <a\3>8 <fis'\1 d,\6 >16 <g'\1>16 r4 <a'\1 d\4 fis,\6 >8 
   r8 <d'\2>8 <b\2 g,\6 >16 <d'\2>16 r4 <cis'\2 e\4 a,\5 >4. 
   <fis'\1 d,\6 >16 <g'\1>16 r4 <a'\1 d\4 fis,\6 >4 <d'\2>8 <b\2 g,\6 >16 <d'\2>16 r8 
   r8 <cis'\2 e\4 a,\5 >4 <a\3>8 <a'\1 d\4 fis,\6 >16 <g'\1>16 r4 <fis'\1 d,\6 >8 
   r8 <d'\2>8 <b\2 g,\6 >16 <d'\2>16 r4 <d'\2 d\4 a,\5 d,\6 >4. 
   <b'\1 g\3 d\4 g,\6 >16 <cis''\1>16 r4 <d''\1 fis'\2 d'\3 fis\4 >4 <d'\2>8 <e'\1 g\3 d\4 g,\6 >16 <d'\2>16 r8 
   r8 <cis'\2 a\3 e\4 a,\5 >4 <a\3>8 <b'\1 g\3 d\4 g,\6 >16 <cis''\1>16 r4 <d''\1 fis'\2 d'\3 fis\4 >8 
   r8 <d'\2>8 <b\2 g\3 d\4 g,\6 >16 <d'\2>16 r4 <e'\1 cis'\2 a\3 a,\5 >4. 
   <b'\1 g\3 d\4 g,\6 >16 <cis''\1>16 r4 <d''\1 fis'\2 d'\3 fis\4 >4 <d'\2>8 <e'\1 g\3 d\4 g,\6 >16 <d'\2>16 r8 
   r8 <cis'\2 a\3 e\4 a,\5 >4 <a\3>8 <b'\1 g\3 d\4 g,\6 >16 <cis''\1>16 r4 <d''\1 fis'\2 d'\3 fis\4 >8 
   r8 <d'\2>8 <b\2 g\3 d\4 g,\6 >16 <d'\2>16 r4 <e'\1 cis'\2 a\3 a,\5 >4. 
   <d''\1 fis'\2 d'\3 a,\5 d,\6 >16 <g'\1>16 r8 <d\4>8 <cis''\1 a'\2 d'\3 fis\4 >4 <d\4>8 <b'\1 b\2 d\4 g,\6 >16 <d'\2>16 r8 
   r8 <a'\1 e'\2 cis'\3 a\4 a,\5 >4 <a\3>8 <d''\1 fis'\2 d'\3 a,\5 d,\6 >16 <g'\1>16 r8 <d\4>8 <e''\1 a'\2 e'\3 fis\4 >16 <d''\1>16 
   r8 <cis''\1 d\4 >8 <cis''\1 b\2 g\3 g\4 >16 <b'\1 g'\2 >16 r8 <d\4>8 <a'\1 e'\2 cis'\3 a\4 a,\5 >4 <a\3>8 
   <d''\1 fis'\2 d'\3 a,\5 d,\6 >16 <g'\1>16 r8 <d\4>8 <d''\1 fis'\2 d'\3 fis\4 >16 <cis''\1>16 r8 <d\4>8 <cis''\1 b\2 g\3 g\4 >16 <b'\1 g'\2 >16 r8 
   <d\4>8 <a'\1 e'\2 d'\3 a,\5 >16 <cis'\2>16 r8 <a\3>8 <e'\1 a\3 d\4 fis,\6 >16 <d'\2>16 <g\3>8 <d\4>8 <b\2 fis\4 d,\6 >32 <cis'\2>32 <b\2>16 
   <a\3>8 <d\4>8 <g'\1 b\2 g\3 g,\6 >16 <d'\2>16 r8 <e'\1 d\4 >8 <fis'\1 d'\2 a,\5 d,\6 >4 <d\4>8 
   <g'\1 b\2 g\3 g,\6 >16 <d'\2>16 r8 <d\4>8 <e'\1>4 <d\4>8 <fis'\1 d'\2 a,\5 d,\6 >4 
   \tempo 4=80
   <d\4>8 r4 <d\4>8 <fis\4 b,\5 >8 <d'\2 b\3 fis\4 b,\5 >4 <e'\1 d'\2 fis\4 b,\5 >8 
   <fis'\1 d'\2 b\3 fis\4 b,\5 >8 <e'\1 d'\2 fis\4 b,\5 >4 <d'\2 b\3 fis\4 b,\5 >8 <e'\1 cis'\2 a\3 e\4 a,\5 >8 <d'\2 a\3 e\4 a,\5 >4 <cis'\2 a\3 e\4 a,\5 >8 
   <b\2 b\3 fis\4 b,\5 >8 <cis'\2 b\3 fis\4 b,\5 >8 <d'\2>8 <fis\4 b,\5 >8 <fis\4 b,\5 >8 <d'\2 b\3 fis\4 b,\5 >4 <e'\1 d'\2 fis\4 b,\5 >8 
   <fis'\1 d'\2 b\3 fis\4 b,\5 >8 <e'\1 d'\2 fis\4 b,\5 >4 <d'\2 b\3 fis\4 b,\5 >8 <e'\1 cis'\2 a\3 e\4 a,\5 >8 <d'\2 a\3 e\4 a,\5 >4 <cis'\2 a\3 e\4 a,\5 >8 
   <d'\2 b\3 fis\4 b,\5 >8 <cis'\2 b\3 fis\4 b,\5 >8 <b\2>8 <fis\4 b,\5 >8 <fis\4 b,\5 >8 <d'\2 b\3 fis\4 b,\5 >4 <e'\1 d'\2 fis\4 b,\5 >8 
   <fis'\1 d'\2 b\3 fis\4 b,\5 >8 <e'\1 d'\2 fis\4 b,\5 >4 <d'\2 b\3 fis\4 b,\5 >8 <e'\1 cis'\2 a\3 e\4 a,\5 >8 <d'\2 a\3 e\4 a,\5 >4 <cis'\2 a\3 e\4 a,\5 >8 
   <b\2 b\3 fis\4 b,\5 >8 <cis'\2 b\3 fis\4 b,\5 >8 <d'\2>8 <fis\4 b,\5 >8 <fis\4 b,\5 >8 <d'\2 b\3 fis\4 b,\5 >4 <e'\1 d'\2 fis\4 b,\5 >8 
   <fis'\1 d'\2 b\3 fis\4 b,\5 >8 <e'\1 d'\2 fis\4 b,\5 >4 <d'\2 b\3 fis\4 b,\5 >8 <e'\1 cis'\2 a\3 e\4 a,\5 >8 <d'\2 a\3 e\4 a,\5 >4 <cis'\2 a\3 e\4 a,\5 >8 
   <d'\2 b\3 fis\4 b,\5 >8 <cis'\2 b\3 fis\4 b,\5 >8 <b\2>8 <fis\4 b,\5 >8 <e'\1 cis'\2 a\3 e\4 a,\5 >8 <cis'\2 a\3 e\4 a,\5 >4 <d'\2 a\3 e\4 >8 
   <e'\1 b\2 gis\3 e\4 b,\5 e,\6 >8 <d'\2 gis\3 b,\5 e,\6 >4 <b\2 gis\3 e\4 >8 <cis'\2 a\3 e\4 a,\5 >8 <d'\2 a\3 fis\4 d\5 >4 <e'\1 a\3 fis\4 d\5 >8 
   <fis'\1 dis'\2 b\3 fis\4 >8 <b'\1 fis'\2 dis'\3 fis\4 >4 <b'\1 fis'\2 dis'\3 fis\4 >8 <e'\1 cis'\2 a\3 e\4 a,\5 >8 <cis'\2 a\3 e\4 a,\5 >4 <d'\2 a\3 e\4 >8 
   <e'\1 b\2 gis\3 e\4 b,\5 e,\6 >8 <d'\2 gis\3 b,\5 e,\6 >4 <b\2 gis\3 e\4 >8 <cis'\2 a\3 e\4 a,\5 >8 <d'\2 a\3 fis\4 d\5 >4 <e'\1 a\3 fis\4 d\5 >8 
   <fis'\1 cis'\2 ais\3 fis\4 >8 <ais'\1 fis'\2 cis'\3 fis\4 >4 <ais'\1 fis'\2 cis'\3 fis\4 >8 <fis\4 b,\5 >8 <dis'\2 b\3 fis\4 b,\5 >4 <e'\1 dis'\2 fis\4 b,\5 >8 
   <fis'\1 dis'\2 b\3 fis\4 b,\5 >8 <e'\1 dis'\2 fis\4 b,\5 >4 <dis'\2 b\3 fis\4 b,\5 >8 <e'\1 cis'\2 a\3 e\4 a,\5 >8 <dis'\2 a\3 e\4 a,\5 >4 <cis'\2 a\3 e\4 a,\5 >8 
   <b\2 b\3 fis\4 b,\5 >8 <cis'\2 b\3 fis\4 b,\5 >8 <dis'\2>8 <fis\4 b,\5 >8 <fis\4 b,\5 >8 <dis'\2 b\3 fis\4 b,\5 >4 <e'\1 dis'\2 fis\4 b,\5 >8 
   <fis'\1 dis'\2 b\3 fis\4 b,\5 >8 <e'\1 dis'\2 fis\4 b,\5 >4 <dis'\2 b\3 fis\4 b,\5 >8 <e'\1 cis'\2 a\3 e\4 a,\5 >8 <dis'\2 a\3 e\4 a,\5 >4 <cis'\2 a\3 e\4 a,\5 >8 
   <dis'\2 b\3 fis\4 b,\5 >8 <cis'\2 b\3 fis\4 b,\5 >8 <b\2>8 <fis\4 b,\5 >8 <fis\4 b,\5 >8 <d'\2 b\3 fis\4 b,\5 >4 <e'\1 d'\2 fis\4 b,\5 >8 
   <fis'\1 d'\2 b\3 fis\4 b,\5 >8 <e'\1 d'\2 fis\4 b,\5 >4 <d'\2 b\3 fis\4 b,\5 >8 <e'\1 cis'\2 a\3 e\4 a,\5 >8 <d'\2 a\3 e\4 a,\5 >4 <cis'\2 a\3 e\4 a,\5 >8 
   <b\2 b\3 fis\4 b,\5 >8 <cis'\2 b\3 fis\4 b,\5 >8 <d'\2>8 <fis\4 b,\5 >8 <fis\4 b,\5 >8 <d'\2 b\3 fis\4 b,\5 >4 <e'\1 d'\2 fis\4 b,\5 >8 
   <fis'\1 d'\2 b\3 fis\4 b,\5 >8 <e'\1 d'\2 fis\4 b,\5 >4 <d'\2 b\3 fis\4 b,\5 >8 <e'\1 cis'\2 a\3 e\4 a,\5 >8 <d'\2 a\3 e\4 a,\5 >4 <cis'\2 a\3 e\4 a,\5 >8 
   <d'\2 b\3 fis\4 b,\5 >8 <cis'\2 b\3 fis\4 b,\5 >8 <b\2>8 <fis\4 b,\5 >8 <g'\1 b\2 g\3 d\4 g,\6 >8 <fis'\1 b\2 g\3 >4 <e'\1 b\2 g\3 >8 
   <fis'\1 d'\2 fis\4 b,\5 >8 <e'\1 d'\2 b\3 >8 <d'\2>8 <fis\4 b,\5 >8 <g'\1 b\2 g\3 d\4 g,\6 >8 <fis'\1 b\2 g\3 >4 <e'\1 b\2 g\3 >8 
   \tempo 4=60
   <g'\1 cis'\2 g\3 e\4 a,\5 >8 <fis'\1 cis'\2 g\3 >4 <e'\1 cis'\2 g\3 >8 <d,\6>4 <d\4>8 <fis,\6>8 
   r8 <d\4>8 <g,\6>4 <d\4>8 <a,\5>4 <e\4>8 
   <fis'\1 d,\6 >16 <g'\1>16 r8 <d\4>8 <a'\1 fis,\6 >4 <d'\2 d\4 >8 <b\2 g,\6 >16 <d'\2>16 r8 
   <d\4>16 <cis'\2>32 <d'\2>32 <cis'\2 a,\5 >4 <a\3 e\4 >8 <fis'\1 d\4 d,\6 >16 <g'\1>16 r8. <fis'\1>32 <g'\1>32 <a'\1 fis,\6 >8 
   r8 <d'\2 d\4 >8 <b\2 g,\6 >16 <d'\2>16 r8 <d\4>16 <cis'\2>32 <d'\2>32 <cis'\2 a,\5 >4 <a\3 e\4 >8 
   <fis'\1 d\4 d,\6 >16 <g'\1>16 r8. <fis'\1>32 <g'\1>32 <a'\1 fis,\6 >4 <d'\2 d\4 >8 <b\2 g,\6 >16 <d'\2>16 r8 
   <d\4>16 r32 <d'\2>32 <cis'\2 a,\5 >4 <a\3 e\4 >16 <fis'\1>32 <g'\1>32 <a'\1 fis,\6 >16 <g'\1>16 r8 <d\4>16 <fis'\1>32 <g'\1>32 <fis'\1 d,\6 >8 
   r8 <d'\2 d\4 >8 <b\2 g,\6 >16 <d'\2>16 r8 <d\4>8 <d'\2 d\4 a,\5 d,\6 >4 <d\4>8 
   <b'\1 g\3 d\4 g,\6 >16 <cis''\1>16 r8 <d\4>8 <d''\1 fis'\2 d'\3 fis\4 >4 <d'\2 d\4 >8 <e'\1 g\3 g,\6 >16 <d'\2>16 r8 
   <d\4>8 <cis'\2 a\3 a,\5 >4 <a\3 e\4 >8 <b'\1 g\3 d\4 g,\6 >16 <cis''\1>16 r8 <d\4>16 <b'\1>32 <cis''\1>32 <d''\1 fis'\2 d'\3 fis\4 >8 
   r8 <d'\2 d\4 >8 <b\2 g\3 g,\6 >16 <d'\2>16 r8 <d\4>16 <cis'\2>32 <d'\2>32 <e'\1 cis'\2 a\3 a,\5 >4 <a\3 e\4 >8 
   <b'\1 g\3 d\4 g,\6 >16 <cis''\1>16 r8 <d\4>8 <d''\1 fis'\2 d'\3 fis\4 >4 <d'\2 d\4 >8 <e'\1 g\3 g,\6 >16 <d'\2>16 r8 
   <d\4>8 <cis'\2 a\3 a,\5 >4 <a\3 e\4 >8 <b'\1 g\3 d\4 g,\6 >16 <cis''\1>16 r8 <d\4>16 <b'\1>32 <cis''\1>32 <d''\1 fis'\2 d'\3 fis\4 >8 
   r8 <d'\2 d\4 >8 <b\2 g\3 g,\6 >16 <d'\2>16 r8 <d\4>16 <cis'\2>32 <d'\2>32 <e'\1 cis'\2 a\3 a,\5 >4 <a\3 e\4 >8 
   <d''\1 fis'\2 d'\3 a,\5 d,\6 >16 <g'\1>16 r8 <d\4>8 <cis''\1 a'\2 d'\3 fis\4 >4 <d\4>8 <b'\1 b\2 d\4 g,\6 >16 <d'\2>16 r8 
   r8 <a'\1 e'\2 cis'\3 a\4 a,\5 >4 <a\3>8 <d''\1 fis'\2 d'\3 a,\5 d,\6 >16 <g'\1>16 r8 <d\4>8 <e''\1 a'\2 e'\3 fis\4 >16 <d''\1>16 
   r8 <cis''\1 d\4 >8 <cis''\1 b\2 g\3 g\4 >16 <b'\1 g'\2 >16 r8 <d\4>8 <a'\1 e'\2 cis'\3 a\4 a,\5 >4 <a\3>8 
   <d''\1 fis'\2 d'\3 a,\5 d,\6 >16 <g'\1>16 r8 <d\4>8 <d''\1 fis'\2 d'\3 fis\4 >16 <cis''\1>16 r8 <d\4>8 <cis''\1 b\2 g\3 g\4 >16 <b'\1 g'\2 >16 r8 
   <d\4>8 <a'\1 e'\2 d'\3 a,\5 >16 <cis'\2>16 r8 <a\3>8 <e''\1 a'\2 fis\4 >16 <d''\1>16 <g'\1 d'\2 >8 <d\4>8 <b'\1 fis'\2 d,\6 >32 <cis''\1>32 <b'\1>16 
   <a'\1>8 <d\4>8 <g'\1 b\2 g\3 d\4 >16 <d'\2>16 r8 <e'\1 d\4 >8 <e'\1 d'\2 a,\5 d,\6 >16 <fis'\1>16 r8 <d\4>8 
   <g'\1 b\2 g\3 g,\6 >16 <d'\2>16 r8 <d\4>8 <e'\1>4 <d\4>8 <g'\1 b\2 g\3 g,\6 >16 <d'\2>16 r8 
   <d\4>8 <e'\1>4 <d\4>8 <fis'\1 d'\2 a\3 d,\6 >4 <d\4>8 r8 
   r8 <d\4>8 r4 <d\4>8 r4 <d\4>8 
   <d\4 e\5 >4 <fis\4>8 r2 r8 
   \bar "|."
}


\score {
  \new StaffGroup \with {
    \consists "Instrument_name_engraver"
    instrumentName = "Classical guitar"
  } <<
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
    } { \clef "treble_8" \classicalGuitar }
    \new TabStaff \with {
      stringTunings = #guitar-drop-d-tuning
    } \classicalGuitar
  >>
  \layout { }
  \midi { }
}
