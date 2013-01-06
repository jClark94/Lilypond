\version "2.16.0"

\paper {  
%  ragged-bottom=##f
%  ragged-last-bottom=##f
}

upper = \relative c' {
  \key f \major
  \time 4/4
  \clef treble
  \override DynamicTextSpanner #'dash-period = #-1.0
  \tempo "Moderately" 4 = 100
  \pitchedTrill e''1~ \startTrillSpan dis e <a, bes e f>:32\stopTrillSpan <a bes e f>:32 <a bes e f>:32 \bar "||" 
\break
  <d, d,>8 <e e, d>4 <e e,>8 <f f,> <e e,> <a c, a>4 | 
  <<
    { bes <bes a> <bes g> <bes g> }
      \\
    { <bes, d> <bes d>8 ees <bes f'> ees <bes f'>4 }
  >>
  <g ees' g>4. <f bes f'>8 <g ees' g> r16 <ees bes' ees>~ <ees bes' ees>8 <d bes' d> <cis a' cis>1  <d f bes d>4. <e e'>8 <f f'> <e e'> <c e a c>4 | 
  <d g bes d>4. <e e'>8 <f f'> <e e'> <g g'>4 | <ees g bes ees>4. <f f'>8 \times 2/3 { <g' g,>4 <bes g bes,> <d bes d,> }
  <<
    { cis2\fermata <a a'>\fermata }
      \\
    { <cis, e a>1 }
  >> r1\fermata\bar "|."
}

lower = \relative c {
  \clef treble
  \key f \major
  r1 \pitchedTrill bes'''1~ \startTrillSpan a bes2 \stopTrillSpan \clef bass 
  <<
    { r2 <a,, bes ees>1:32  < a bes ees>1:32 }
      \\
    { <e b dis,>2~ <e b dis,>1~ <e b dis,> }    
  >>
  r8.. <d a d,>32 <d a d,>2. | <g d g,>2 <g d g,>4 <g d g> | <ees bes ees,> <f, bes ees f> <g' ees g,> <bes ees, bes> <a, a,> <b b,> <cis cis,>4. a8 
  <<    
    {  r8 d16 e f g a bes d4 e, d8 e16 f g a bes c bes2 r8 bes,16 ees g bes d \times 2/3 {ees4 bes g} }
      \\
    { bes,2. a4 g1 ees }
  >>
  <a e' cis'>\fermata <d d,>\fermata
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


\header {
  title = "Back from Black"
  copyright = \markup \left-align \center-column {
"2009 Paramount Allegra Music"
"All Rights Administered by Sony/ATV Music Publicshing LLC, 8 Music Square West, Nashville, TN 37203"
"International Copyright Secured  All Rights Reserved"
}
  composer = "Michael Giacchino"
  tagline = ##f
}