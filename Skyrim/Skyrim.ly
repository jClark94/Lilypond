\version "2.14.2"

\header {
  title = "Main Theme"
  subtitle = "The Elder Scrolls V: Skyrim"
  composer = "Jeremy Soule"
  arranger = "Taioo"
  % Remove default LilyPond tagline
  tagline = ##f
  copyright = ##f
}

\paper {
 ragged-last-bottom = ##f
ragged-bottom = ##f 
}

global = {
  \key d \major
  \numericTimeSignature
  \time 3/4
  \tempo "Like Epic" 4=160
}

right = \relative c' {
  \global
  \clef bass
  \repeat volta 2 { R2.*8 }
  \repeat volta 5 { <b fis>4^>^\markup\small{repeat five times} b b <b g d>^> b b <b a e>^> b b <b e,>^> b cis8 d }
  b4^>\mf cis8 d b4^> b,2.\mp~ b e2.~ e <b d b'>~ <b d b'> <cis e a>~ <cis e a>
    <b b'>~ <b b'> <e e'>~ <e e'> <b' b'>~ <b b'> <cis e cis'>~\< <cis e cis'>
    \clef treble b'4\!\f b8 b b b <g b>4 <g b>8 <g b> <g b> <g b> <a b>4^. <a b>^. <a b>^. <e b'>^. <e b'>^. <e b'>^.
  b'4 b8 b b b <g b>4^. <g b>^. <g b>^. <a b>4^. <a b>^. <a b>^. <e b'>^. <e b'>^. <e b'>^.
  <b' d>4 <b d>8 <b d> <b d> <b d>  <b d>4 <b d>8 <b d> <b d> <b d>
  <a cis>4^. <a cis>^. <a cis>^. <e b'>^. <e b'>^. <e b'>^.
  <b' d>4 <b d>8 <b d> <b d> <b d>  <b d>4 <b d>8 <b d> <b d> <b d>
  <a cis>4^. <a cis>^. <a cis>^. <e b'>^.^> <b b'>^.\ff( <cis cis'>^. <d fis d'>2.~ <d fis d'>4 <d d'> <e e'> <fis b fis'>2.~ <fis b fis'>4 <fis fis'> <a a'> <e a cis e>2.~ <e a cis e>4 <d d'> <cis cis'> <b e gis b>2.~ <b e gis b>4 <b b'> <cis cis'> <d fis d'>2.~ <d fis d'>4 <d d'> <e e'> <fis b fis'>2.~ <fis b fis'>4 <fis fis'> <a a'> <b d b'>2.~ <b d b'>4 <a a'> <cis cis'> <b b'>2.~ <b b'>4)
  <b b,>4( <cis cis,> <d d,>2 <cis cis,>4~ <cis cis,> <b b,>2 <a a,> <g g,>4~ <g g,> <fis fis,>2 <e e,>2.~ <e e,>4 <d d,> <fis fis,> <e e,>2.~ <e e,>2)
  <d d'>8 <cis cis'> <d d'>2^> <d d'>8 <cis cis'> <d d'>2^> <d d'>8 <cis cis'>  <e e'>4^> <d d'> <cis cis'>
  <b d b'>2^> <b d b'>8 <a a'>   <b d b'>2^> <b b'>8 <b a'>  <b e b'>2^> <a a'>8 <b b'> <cis cis'>4^> <d d'> <a a'>
  <b d b'>2^> <b b'>8 <cis cis'> <d d'>4^> <d d'> <d d'>8 <e e'> <fis fis'>2^> <cis cis'>8 <d d'> <e e'>4^> <d d'> <cis cis'> <b d b'>2^> <b b'>8 <a a'> <b d b'>2^> <b b'>8 <a a'> <b e b'>2^> <a a'>8 <b b'> <cis cis'>4^> <d d'> <a a'> <b d fis b>2.^> <fis' b fis'>2^> <b, b'>4 <fis' b fis'>2^> <b, b'>4 <fis' b fis'>2^> <b, b'>4 <fis' b fis'>2^> <b, b'>4 <b b'>2.^> <fis' b fis'>2^> <b, b'>4 <fis' b fis'>2^> <b, b'>4 <fis' b fis'>2^> <b, b'>4 <fis' b fis'>2.^>~\>  <fis b fis'>2.~  <fis b fis'>2.
  b4.\!\mp( cis <d fis,>2.~ <d fis,> cis~ cis <fis b, fis>\arpeggio~ <fis b, fis> b,,\mf cis d fis\crescTextCresc <b g d b>~ <b g d b> <b b'> <a a'> <g g'> <fis fis'> <e e'> <e gis,>~) <e gis,> g,~ g b~ b <e gis>~ <e gis> R\f R R
  \bar "|."
}

left = \relative c {
  \global
  \repeat volta 2 { <b b,>2.~ <b b,>2 <b b,>4 <b b,>2.~ <b b,> <b b,>~ <b b,>2 <b b,>4 <b b,>2.~ <b b,> }
  \repeat volta 5 { <b b,>2. <g b,> <a b,> <e b> }
  <b' b,>2 <b b,>4 b,4. b8 b4 b b b 
  b4. b8 b4 b b b 
  \transpose b' g, {b4. b8 b4 b b b }
  \transpose b' a, {b4. b8 b4 b b b }
  b4. b8 b4 b b b  b4. b8 b4 b b b 
  <g g'>4. <g g'>8 <g g'>4 <g g'> <g g'> <g g'>
  \transpose g' a, { <g g'>4. <g g'>8 <g g'>4 <g g'> <g g'> <g g'> }
  <b b'>2. <g g'> <a a'> <e e'> <b' b'> <g g'> <a a'> <e e'> <b' b'> <g g'> <a a'>2 <a a'>4 <e e'>2.-.
  <b' b'>2. <g g'> <a a'>4 <a a'> <a a'> <e e'> <e e'> <e e'>
  b'8 d fis b d fis b fis d b fis d b d fis b d fis b fis d b fis d a cis e a cis e a e cis a e cis
  e gis b e gis b e b gis e b gis b, d fis b d fis b fis d b fis d b d fis b d fis b fis d b fis d
  g, b d g b d g d b g d b e, g b e g b e b g e b g <b' d fis b>4. <b d fis b> <b d fis b>2 <b d fis b>4 <g b d g>4. <g b d g> <g b d g>2 <g b d g>4 <e g b>4. <e g b>8 <e g b>4 <e g b> <e g b> <e g b> <a e cis a>4. <a e cis a>8 <a e cis a>4 <a e cis a> <a e cis a> <a e cis a>
  <b d fis b>4 <b b,>2  <b d fis b>4 <b b,>2 <a cis e a>4 <a a,>2 <b d fis b>4 <b b,>2 <g b d g>4 <g g,>2 <e g b e>4 <e e,>2
  <a cis e a>4 <a a,>2 <b d fis b>4 <b b,>2 <b d fis b>4 <b b,>2 <g b d g>4 <g g,>2
  <a cis e a>4 <a a,>2 <b d fis b>4 <b b,>2 <g b d g>4 <g g,>2 <e g b e>4 <e e,>2  <a cis e a>4 <a a,>2 
  <b d fis b>2 <b d fis b>4 <b d fis b>2 <b d fis b>4 <b d fis b>2 <b d fis b>4
  <g b d g>2 <g b d g>4 <g b d g>2 <g b d g>4
  <b d fis b>2 <b d fis b>4 <b d fis b>2 <b d fis b>4 <g b d g>2 <g b d g>4 <b d fis b>2 <b d fis b>4 <g b d g>2 <g b d g>4 <b d fis b>2.~  <b d fis b>2.~ <b d fis b>2. R2.*6
  <b b,>2.~ <b b,> <b b,> <a a,> <g g,>~ <g g,>~ <g g,>~ <g g,>~ <g g,>~ <g g,>~ <g g,> <e e'>~ <e e'>~ <e e'>~ <e e'> <e e'> <e e'> <e e'>~ <e e'> <e e,>~ <e e,>~ <e e,>
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { #(layout-set-staff-size 20) }
  \midi { }
}
