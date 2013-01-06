\version "2.16.0"

\header {
  title = "Farewell to Stromness"
  composer = "Peter Maxwell Davies"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key b \minor
  \numericTimeSignature
  \time 2/4
  \tempo "At a slow wakling pace" 4=60
}

right = \relative c'' {
  \global
  % Music follows here.
  R2 R R R \bar "||" \times 2/3 { fis16( g~ g4} \times 2/3 {a4 d,8} \times 2/3 {b16 d~ d4} \times 2/3 {cis4 a8)}
  \times 2/3 { fis'16( g~ g4} \times 2/3 {a4 d,8} \times 2/3 {b16 d~ d4} \times 2/3 {cis4) r8}
  \times 2/3 { fis16( g~ g4} \times 2/3 {a4 d,8} \times 2/3 {b16 d~ d4} \times 2/3 {cis4 a8)}
}

left = \relative c {
  \global
  % Music follows here.
  << {r2 r r4 d~ d e a, d d e a, d d e a, d d e d d~ d d} \\{\repeat unfold 4 { d, fis g a } } >>
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
    shortInstrumentName = "Pno."
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
