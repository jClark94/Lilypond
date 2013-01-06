\version "2.16.0"

\paper {  
  ragged-bottom=##f
  ragged-last-bottom=##f
}

upper = \relative c' {
  \key ees \major
  \time 4/4
  \clef treble
  \override DynamicTextSpanner #'dash-period = #-1.0
  \tempo "Moderately slow" 4 = 90
  c1\fermata | c4 ees ~ <ees d>4. r8 | <aes, c>4 <bes ees>~ <c ees>4. r8 | des'4. ees8 \times 2/3 {f4 des c} | 
 b2. b,4 |
  c4. d8 ees d bes4 | c4. d8 ees d f ees | des4. ees8 \times 2/3 {f4 des c} | <<{b1}\\{g2 g}>> | 
  <<
    { c4. d8 ees d bes4 | c4. d8 ees d f4 | des4 des8 ees8 \times 2/3 {f4 f aes} | g2 b }
      \\
    { r4 g, g g | aes aes aes2 | aes4 aes \times 2/3 { des des des } | d8 g,4 g8 g'4 g8 f }
  >>
  ees'8 f ees f ees f ees f f aes f aes f aes f aes f aes f aes \times 2/3 {f4 aes f} g1 
  <<
    { f,16 ees f ees f ees f8 ~ f4 f16 ees f ees | f ees f ees f2 f8 f16 ees}
      \\
    { c4. d8 ees d bes4 | c4. d8 ees d f s8 }
  >>
  <des aes f>4. <ees aes, f>8 \times 2/3 {<f aes, f>4 <des aes f> <c aes f>}
  <<
    { b4 b8 d d g g b | c4. d8 ees d bes4 | c4. d8 ees d f4 | des4. ees8 \times 2/3 {f4 f aes} | g2 b | c1\fermata}
      \\
    { <g,, d>4 <g d>2. | g'16 ees g ees g ees g ees g ees g ees g ees g ees | aes ees aes ees aes ees aes ees aes ees aes ees aes ees aes ees s1 s s }
  >>\bar "|."
}

lower = \relative c {
  \clef bass
\key ees \major
  r1\fermata | r | r | aes'4 c \times 2/3 {des aes f} | g4 g2. | <<{r4 ees2. | r4 aes2.}\\{c,1 | f}>> | aes8 des, aes des,~ <des aes' des>2 |
  <<
    { r8 d' g, d'~ d d g, d' | r ees bes ees~ ees ees bes ees | r ees c aes~ aes ees' c ees, | des des' aes des f des aes des | r4 d2. | c'4. d8 ees d bes4 | c4. d8 ees d f4 | des4. ees8 \times 2/3 {f4 des c} | b2 d |}
      \\
    { d,,1 | c | f2~ f8 s4. | s1 | b | <c ees> | <ees aes> | <des, aes' f'>\arpeggio | <d b' g'>\arpeggio }
  >>
  c16. c'32 c,16 c c'2 <f bes,>8 g, | aes,16. aes'32 aes,16 aes aes'2 f8 ees | des16. des'32 des,16 des des'8 <des ees,> \times 2/3 {<des f,>4 <des des,> <c c,>} | b,16. b'32 b,16 b b'2.
  c,8 c16 c <g' ees'>4 c,8 c16 c <g' ees'>4 |aes,8 aes16 aes <ees' c'>4 aes,8 aes16 aes <ees' c'>4 | <<{r4 r8 aes' \times 2/3 {des4 des c} }\\{des,,8 des16 des <aes' f'>2.  }>> | b'1 r1\fermata
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
  title = "Hella Bar Talk"
  %copyright = \markup \left-align \center-column {
%"2009 Paramount Allegra Music"
%"All Rights Administered by Sony/ATV Music Publicshing LLC, 8 Music Square West, Nashville, TN 37203"
%"International Copyright Secured  All Rights Reserved"
%}
  composer = "Michael Giacchino"
  tagline = ##f
}