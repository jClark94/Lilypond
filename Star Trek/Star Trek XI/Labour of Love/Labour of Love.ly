\version "2.16.0"

\paper {  
  ragged-bottom=##f
  ragged-last-bottom=##f
}

upper = \relative c' {
  \key d \major
  \time 4/4
  \clef treble
  
  \override DynamicTextSpanner #'dash-period = #-1.0
  \tempo "Slowly" 4 = 75
  <a' a,>1~\p <a a,>1~ <a a,> \bar "||" a g <cis cis,> <d d,>
  <<
    { r4 fis2 fis4 r4 g2 g4 r a2 a4 r b2 b4}
      \\
    { \times 2/3 {d,,8 fis a} \times 2/3 {d fis, a} \times 2/3 {d, fis a} \times 2/3 {d fis, a} \times 2/3 {d, g b} \times 2/3 {d g, b} \times 2/3 {d, g b} \times 2/3 {d g, b} \times 2/3 {fis a cis} \times 2/3 {fis a, cis} \times 2/3 {fis, a cis} \times 2/3 {fis a, cis} \times 2/3 {g b d} \times 2/3 {g b, d} \times 2/3 {g, b d} \times 2/3 {g b, d} }
  >>
  <<
    {a2 g4 fis d e fis g <cis cis'>2 }
      \\
    {r4 <d, fis> s2 s1 fis'4 gis,}
  >>
  <a a'>4 <cis fis cis'> <b g' b> <cis g' cis> <d g d'>2 <a a'> <g g'>4 <fis fis'> <d d'> <e e'> <fis fis'> <g g'> <cis cis'>2 <a a'>4 <cis cis'> << { d'1 }\\{ <d, cis'>2 <d b'> }>>
  << { fis,2 a e4 fis g a fis gis a fis r4 <d' g b>2 <g b d>4 }\\ {\times 2/3 {r8 fis,,8 a} d4 \times 2/3 {r8 fis,8 a} d4 \times 2/3 {r8 g,8 b} d4 \times 2/3 {r8 g,8 b} d4 \times 2/3 {r8 a8 cis} gis4 \times 2/3 {r8 a8 cis} fis,4 <g b d g>2 <b d g b>} >> <a' d fis a>2 <g a d g>4 <fis a b d fis> <d' e g b d> <b d fis g b> <a b d g a> <g a b d fis g> <<{<a d fis a>2}\\{r4 <a, cis fis gis>}>> <a' cis fis a> <cis fis a cis>-\markup{\italic rit.} <cis g' b cis>1\fermata <d d'>\fermata\bar "|."
}

lower = \relative c {
  \clef bass
  \set Staff.pedalSustainStyle = #'mixed
    \set Staff.connectArpeggios = ##t

\key d \major
  << {a1~\sustainOn a~ a} \\ {a, a a} >> 
  << {fis''2 a e4 fis g2 fis8 gis gis a a4 fis g 2 b}\\{a,1\sustainOff-\markup{\italic "Pedal ad lib. throughtout"} g fis2 fis4. fis8 g1} >>
  fis'2 a e4 fis g2 fis4 gis a fis g2 b
  <<
    { \times 2/3 {r8 fis a} \times 2/3 {d fis, a} \times 2/3 { r fis a} \times 2/3 {d fis, a} \times 2/3 {r g b} \times 2/3 {d g, b} \times 2/3 {<d, fis> g b} \times 2/3 {<g d'> g b} } 
      \\
    {d,2 d d4 e s s}
  >>
  <fis, cis' a'>4\arpeggio <d' a'> <fis, e' cis'>\arpeggio <fis fis'> <<{<d' b'>\arpeggio <e b'> <fis b>\arpeggio g}\\{g,2\arpeggio g\arpeggio}>>
  <d d'>4 <e e'> <fis fis'> <g g'> <d d'> <cis cis'> <b b'> <e e'> << { fis''2\arpeggio fis4 fis g4.\arpeggio cis,8 b d a e}\\ {cis4\arpeggio d e fis d\arpeggio g2 a,8 e}>>
  <d a'>1 <d b' e> << { <a' fis'>2\arpeggio }\\{ cis,4\arpeggio cis }>> <cis a' fis'>2\arpeggio <d b' g'>4\arpeggio \times 2/3 {d8 b' g'} \times 2/3 {g, d' b'} \times 2/3 {b, g' d'} <d,, d,>4 <e e,> <fis fis,> <g g,> <b b,> <cis cis,> <d d,> <e e,> <cis cis,>\sustainOn <d d,> <e e,> \sustainOff \sustainOn <fis fis,>8\sustainOff \sustainOn <fis, fis,> <<{cis''4\sustainOff\sustainOn b d, e\fermata}\\{<b d, g,>1\fermata} >> r1\sustainOff\fermata
}

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t

    \set PianoStaff.instrumentName = #"Piano  "
    % \set PianoStaff.shortInstrumentName = #"Pno. "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


\header {
  title = "Labour of Love"
  copyright = \markup \left-align \center-column {

}
  composer = "Michael Giacchino"
  tagline = ##f
}