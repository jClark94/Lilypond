\version "2.16.0"

piuF = \markup { \italic più \dynamic f }

\paper {  
  ragged-bottom=##f
  ragged-last-bottom=##f
}

upper = \relative c' {
  \key c \major
  \time 4/4
  \clef treble
  \override DynamicTextSpanner #'dash-period = #-1.0
  \tempo "Somewhat freely" 4 = 90
   r1\mf r2 r8 g d' g a1~ a2 r8 g, d' g a4. d8~ d4. c16 b g8 c,4. ~ c2~ c4 d8. g16 g2 r4 <g, d'>8-\piuF <c g'> <d a'>4 <g d'>~ \time 7/4 <g d'> \times 2/3 { <g, d'>8 <b g'> <c b'> } <<{a'4.\< g8 g2.\!}\\{d2~ d2.}>> \bar "||"
\time 4/4 g16\f c e d~ d2~ d8 f~f e16 f g2. g,16 c e d~ d2~ d8 f~f e16 c g8 f~ f c'4. g16 c16 e d~ d2~ d8 f~f e16 f g2~ g8 c, c' b16 g c,8 d~ d4. f,8~ f4 g8. c16 <c g c,>2\> \bar "||" <bes, f'>8\! e16 f <c g'>2 <d c'>8 b' <g c,>8. <f a,>16 <f a,>2. <d g,>8 e16 f <g c,>2 <f a,>8 <e g,> << {c8. d16 d2.}\\{f,1} >> <g f'>8 e'16 f <c g'>2 <d c'>8 b' <g c,>8. <f a>16 <f a>2~ <f a>8  << { <b d,>8~ b c4 g8 f16 e c4 c8~ c1}\\{ s8 d4 c4 g f g1} >> \bar "||"
g'16\f c e <d f,>~ <d f,>2~ <d f,>8 <d f>~ <d f> <c e>16 <d f> <e g>2. g,16 c e <d f,>~ <d f,>2~ <d f,>8 <d f>~ <d f> e16 c g8 f~ f c'4. g16 c16 e <d f,>~ <d f,>2~ <d f,>8 <d f>~ <d f> e16 f <g c, g>2~ <g c, g>8 c, <c' f, c> b16 g c,8 <d f,>~ <d f,>4. <f, c>8~ <f c>2 <c f g>4. <f g c>8 <c e g c>1~ <c e g c>1~ <c e g c>1~ <c e g c>4 r4 r2
}

lower = \relative c {
  \clef bass
  \showStaffSwitch
\key c \major
  <g g,>1~ <g g,>1~ <g g,>1~ <g g,>2 <g g,>2~  <g g,>1~ <g g,>1~ <g g,>1~ g2 b f1 s2. | << { \stemUp c'2 g d' g, c g \showStaffSwitch d' <<{\change Staff = "upper"  \stemDown a'8 s4. \stemUp \change Staff = "lower"}\\{s2}>>  c,2 g d' g, c g d' c c4 c c c c c c c c c c c c c c c c c e2 f1 s c4 c c c c2 g d' g, c g \showStaffSwitch d' <<{\change Staff = "upper"  \stemDown a'8 s4. \stemUp \change Staff = "lower"}\\{s2}>>  d,4 d d d e e e e a a a a g g g g c,2 d <bes d f>2.~ <bes d f>8 e16 f <c e g>1 c4}\\ {c,4 c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c c e e f f f f g g g g c, c c c c c c c c c c c c c c c c c c c \stemUp d d d d e e e e a a a a g g g g \stemDown c, c c c r c c c8 r r4 c-> c-> c-> \stemUp c-> r r2} >> \bar "|."
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { ragged-right = ##f }
  \midi { }
}


\header {
  title = "Star Trek - Deep Space Nine"
  copyright = \markup \left-align \center-column {
"Copyright 1993 by Addax Music Co., Inc."
"This arrangement Copyright 1995 by Addax Music Co., Inc."
"International Copyright Secured  All Rights Reserved"
}
  tagline = ##f
  composer = "Dennis McCarthy"
}