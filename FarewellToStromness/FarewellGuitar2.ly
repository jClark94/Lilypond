\version "2.16.0"

\header {
  title = "Farewell to Stromness"
  instrument = "Guitar"
  composer = "Peter Maxwell Davies"
  arranger = "Timothy Walker"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key d \major
  \time 2/4
  \tempo "At a slow walking pace" 4=60
}

melody = \relative c{
  <<
   {
     r2 r r4 d~ d e \bar "||" \times 2/3 { fis'16 g g4 } \times 2/3 {a4 d,8} \times 2/3 {b16 d~ d4} \times 2/3 {cis4 a8}
   }
   \\  
   {
    r2 r r r cis4 d~ d e cis d~ d e cis d~ d e d d~ d d 
   }
>>
}

bass = \relative c, {
  d4( fis g a) \repeat unfold 3 {d,4( fis g a)}
}

classicalGuitar = {
  \global
  \partcombine \melody \bass
} 

\score {
  \new StaffGroup \with {
    \consists "Instrument_name_engraver"
    instrumentName = "Classical guitar"
    shortInstrumentName = "Gtr."
  } <<
    \new Staff \with {
      midiInstrument = "acoustic guitar (nylon)"
      printPartCombineTexts = ##f
    } { \clef "treble_8" \classicalGuitar }
    \new TabStaff \with {
      stringTunings = #guitar-drop-d-tuning
      printPartCombineTexts = ##f
    } \classicalGuitar
  >>
  \layout { }
  \midi { }
}
