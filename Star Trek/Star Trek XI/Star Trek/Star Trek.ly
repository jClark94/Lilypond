\version "2.16.0"

\paper {  
  ragged-bottom=##f
  ragged-last-bottom=##f
}

upper = \relative c'' {
  \key f \major
  \time 4/4
  \clef treble
  \override DynamicTextSpanner #'dash-period = #-1.0
  \tempo "Moderately slow, in 2" 4 = 90
  << 
    { d,2. \mp e4 | \times 2/3 { f2 e c } | d2. e4 | \times 2/3 { f2 e g } | ees2. f4 | \times 2/3 { g2 ees d } | cis1 | e }
      \\
    { <a, f>1~ | <a f> | <bes f>~ | <bes f> | <bes g>~ | <bes g> | <a e>~ | <a e> }
  >>
  <<
    { a'1 ~ | a | bes~ | bes | bes~ | bes | a | e }
      \\
    { d2. e4 | \times 2/3 { f2 e c } | d2. e4 | \times 2/3 { f2 e g } | ees2. f4 | \times 2/3 { <g bes>2 g bes } | cis1~ | cis }
   >>
  \bar "||"
  \time 3/4
  \tempo "Faster" 4 = 120
  d,8 f r cis d16 e f8 | d8 f r cis d16 e f8 | d8 f r cis d16 e f8 | d8 f r cis d16 e f8 | a8 a a a a a | a8 a a a a a | 
<d a> <d a> <d a> <d a> <d a> <d a> | <d a> <d a>  <f a,>   <f a,>  <f a,>  <f a,>
| <f a,>  <f a,> <cis a>  <cis a> <cis a> <cis a> | 
<cis a> <cis a> <bes a> <bes a> <bes a> <bes a> |
<b d g>8 <b d g> <b d g> <b d g> <b d g> <d g>16 e | f8 e cis f e cis
<b d g>8 <b d g> <b d g> <b d g> <b d g> <d g>16 e | f8 e cis f e cis
\crescTextCresc<b d g>8\< <b d g> <b d g> <b d g> <b d g> <d g>16 e | f8 e cis f e cis
<b d g>8 <b d g> <b d g> <b d g> <b d g> <d g>16 e | f8 e cis f e cis
  \time 4/4
<a cis a'>8 <a cis a'>8 r <a cis a'>8 <a cis a'>8 <a cis a'>8 <a cis a'>8 r | r1 | <a cis a'>8 <a cis a'>8 r <a cis a'>8 <a cis a'>8 <a cis a'>8 <a cis a'>8 r | r2\! f,\<\glissando 
<d'' f a d>2.\! \f <e' e,>4 | <f f,> <e e,> <c g e c>2 | <d g, d>2. <e e,>4 | <f d bes f> <e e,> <g d bes g>2 | <ees bes g ees>2. <f f,>4 | \times 2/3 { <g ees bes g>2 <ees ees,> <d d,> } | <cis a e cis>1
<e a, e>8 <e a, e> <e a, e> <e a, e> <e a, e> <e a, e> <e cis e,> <e cis e,> | <d a f d>8 <d a f d> r  <d a f d> <d a f d> <d a f d> <d a f d> r | \time 3/4 <d a f d> r r <a f d a> r r < f d a f> r r <d a f d> r r <a f d a> r r4 r \bar "|."
}

lower = \relative c {
  \clef bass
\key f \major
  <d a d,>1~ | <d a d,> | <bes f bes,>~ |  <bes f bes,> | <ees bes ees,>~ | <ees bes ees,> | <e, cis'>~ | <e cis'> |
  <f' a, d,>1~ | <f a, d,> | <d f, bes,>~ |  <d f, bes,> | <g bes, ees,>~ | <g bes, ees,> | <e cis e,>~ | <e cis e,> |
  \time 3/4
  <f a, d,>2.~ | <f a, d,> | <f a, d,>2.~ | <f a, d,> |
d'8 f r cis d16 e f8 | d8 f r cis d16 e f8 | 
d8 f r cis d16 e f8 | d8 f r cis d16 e f8 | 
d8 f r cis d16 e f8 | d8 f r cis d16 e f8 | 
<g, d g,>2. ~ | <g, d' g'>
<g d' g>2. ~ | <g d' g>
<g d' g>8 <g d' g> r <g d' g> <g d' g> <g d' g> | <g d' g>4 r r | <g d' g>8 <g d' g> r <g d' g> <g d' g> <g d' g> | <g d' g>4. <d a' d>
<a' a,>8 <a a,>8 r <a a,>8 <a a,>8 <a a,>8 <a a,>8 e | <a a,>8  e4 cis8 e e <a a,>8 e | <a a,>8 <a a,>8 r <a a,>8 <a a,>8 <a a,>8 <a a,>8 e | <a a,>8  e4 cis8 e e <a a,>4
<f' a, d,>1~ | <f a, d,>2 <e g, c,> | <d' g, bes,> <bes d, a> | <bes d, g,> <bes d, f,> | <bes bes, ees,>1 | <bes bes, ees,>2 <bes ees, g,> | <cis e, a,>4 r <e, e,> r | <a, a,>8 e <a a,> e <a a,> e <a a,>4 |
<d a d,>8 <d a d,> r <d a d,> <d a d,> <d a d,> <d a d,> r | \time 3/4 <d a d,> r r <d a d,> r r <d a d,> r r <d a d,> r r <d a d,> r r4 r
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
  title = "Star Trek"
  copyright = \markup \left-align \center-column {
"2009 Paramount Allegra Music"
"All Rights Administered by Sony/ATV Music Publicshing LLC, 8 Music Square West, Nashville, TN 37203"
"International Copyright Secured  All Rights Reserved"
}
  composer = "Michael Giacchino"
  tagline = ##f
}