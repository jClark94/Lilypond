\version "2.14.2"

\paper {
   ragged-bottom = ##f
   ragged-last-bottom = ##f	
   page-count = #3
}

\header {
  title = "Insurrection"
  subtitle = "Star Trek"
  composer = "Jerry Goldsmith"
  tagline = ##f
}

global = {
  \key bes \major
  \time 3/2
  \tempo "Gently"
}

double = {
   bes8 a bes2 a8 g d c d2  f4 g8 f g2 f8 ees bes'2 d c1 %a8 g f4 c
}

right = \relative c'' {
  \global
  r1.\p bes \time 2/2 \bar "||"
  bes4 d8 c d c bes4~ bes d8 c d c bes f~ f4 d'8 c d c bes4~ bes d8 c d c bes f~ f4 
  ees'8 d ees d c4~ c ees8 d ees d c g~ g4 ees'8 d ees d 
  <<
    {c4~ c c d ees d2 ees f2. bes4 f1~ f2 ees4 d ees2 f g2. c4 g8 f ees2.~ ees4 ees8 d d4 ees f1 c'2 a ees8 f g2. bes ees,4 d1}
      \\
    {s4 r4 c8 g d' g, ees' g, r4 r8 c r c bes4 r d8 c d c bes4 r4 d8 c d c bes4~ bes d8 c bes c bes f r4 r8 d' c d c4 r ees8 d c d c4 r g8 c bes c g4~ g r4 g8 c g4 r f8 c' r8 c f, c' f4 f8 c f c f, c' r4 ees8 bes ees bes ees, bes'~ bes4 ees8 bes ees bes ees, bes' r4 r8 bes r bes d, bes'~ <bes d>4}
  >>
  ees <d f>8 bes <d f,>4 <<{c4. f,8}\\{c2}>> c'8 f, c f~ f4 <c c'>8 f <d d'>4 <ees ees'> <d d'>2 <ees ees'> <f f'>2. <bes bes'>4
  <<
    { <f f'>1 s4 }
    \\
    {r4 d'8 c d c bes4~ bes }
  >>
  d8 c <ees ees,>4 <d d,> <ees ees,>2 <f f,> <<{<g g,>}\\{r4 ees8 d}>> c4 <c c'> <g g'>8 <f f'>
  <<{<ees ees'>4~ <ees ees'>2 s1 <f f'>1 <c' c'>2 <a a'>}\\{s4 bes8 c g4~ g4 ees'8 d <d d,>4 <ees ees,> r4 a,8 g a g f4 r a'8 g s2}>>
  <<{bes8 a bes2 a8 g d c d2  f4 g8 f g2 f8 ees bes2 d c1}\\{bes8 a bes2 a8 g d c d2  f4 g8 f g2 f8 ees bes2 d c1}\\{s1 s s s2 g'8 f g bes r4 a8 g a g f4~ f}>> a8 g <f f'>4 <c c'>
  \key g \major \bar "||"
  <<{<d d'>1 s4}\\{b'8 a g2.~ g4}>> <d' b'>8 <c a'> <d b'> <c a'> <b g'>4 <e c'>8 <d b'> <c a'>2.~ <c a'>4-\markup{\italic cresc.} <e c'>8 <d b'> <e c'> <d b'> <c a'>4 \ottava #1
  <<{ b'2\mf <c c,> <d d,>2. <g g,>4 d1~ <d b d,>2 <c a c,>4 <b g b,> <c a c,>2 <d b d,> e2~ <e c>4 a}\\{d,,8 c b4 s2 r4 b'8 a g a g4 <b d,>8 <a c,> <g b,>4 <a c,>2 s1 s <a e>4 <c e,>8 <b d,> e,4 a}>>
  <e' c e,>8 <d b d,> <c a c,>2.~ <c a c,>4 e,8 a <b d, b>a <c e, c>4 <<{<d fis,>1}\\{d,2 e}>>
  <a fis' a>2 <fis d' fis> <g e' g>8 <fis d' fis> <g e' g>2 <fis fis'>8 <e e'> <b g' b> <a fis' a> <b g' b>2 <d b' d>4 <e c' e>8 <d b' d> <e c' e>2 <d b' d>8 <c a' c> <g e' g>2 <b g' b> <a d fis a>1~ <a d fis a>2 <d d'>4 <a a'> \key e\major \bar "||"
  <<{<b b'>1 s4}\\{gis'8 fis e2.~ e4}>> <b' gis'>8 <a fis'> <b gis'>4 <gis e'> <cis a'>8 <b gis'> <a fis'>2.~ <a fis'>4-\markup{\italic rit.}\ottava #0 cis8^\markup{\italic loco} b a2\fermata \bar "|."  <gis b,>1-\markup{\bold "Optional ending"}\arpeggio\fermata \bar "|."

}

left = \relative c' {
  \global
  bes4-\markup{\italic "With pedal"} f d' bes d bes~ bes f d' bes d bes
  bes,8 f' bes f bes f bes f bes, f' bes f bes f bes f bes, f' bes f bes f bes f bes, f' bes f bes f bes f bes, g' c g c g c g bes, g' c g c g c g bes, g' c g c g c g bes, g' c g c g c g 
  bes,8 f' bes f bes f bes f bes, f' bes f bes f bes f bes, f' bes f bes f bes f bes, f' bes f bes f bes f bes, g' c g c g c g bes, g' c g c g c g bes, g' c g c g c g bes, g' c g c g c g bes, g' c g c g c g
  a, f' c' f, c' f, c' f, a, f' c' f, c' f, c' f, g, ees' bes' ees, bes' ees, bes' ees, g, ees' bes' ees, bes' ees, bes' ees, f, d' f d f d f d  
  f, c' a' c, a' c, a' c, f, c' a' c, a'2
  bes,8 f' bes f bes f bes f bes, f' bes f bes f bes f bes, f' bes f bes f bes f bes, f' bes f bes f bes f bes, g' c g c g c g bes, g' c g c g c g bes, g' c g c g c g bes, g' c g c g c g %bes, g' c g c g c g
  a, f' c' f, c' f, c' f, a, f' c' f, c' f, c' f, g, d' bes' d, bes' d, bes' d, f, d' bes' d, bes' d, bes' d, ees, bes' g' bes, g' bes, g' bes, ees, bes' g' bes, g' bes, g' bes,
  f c' a' c, a' c, a' c, f, c' a' c, a' c, f, d' \key g \major
  g, d' b' d, b' d, b' d, g, d' b' d, b' d, b' d, g, e' a e a e a e g, e' a e a e a e
  g, d'4 d8 b' d, b' d, g, d' b' d, b' d, g, d' g, d'4 d8 b' d, b' d, g, d' b' d, b' d, g, d'
  g, e' a e a e a e g, e' a e a e a e g, e' a e a e a e g, e' a e a e a e
  fis, d' a' d, a' d, a' d, fis, d' a' d, a' d, a' d,
  e, b' g' b, g' b, g' b, d, b' g' b, g' b, g' b,
  c, g' e' g, e' g, e' g, c, g' e' g, e' g, e' g,
  \transpose c d { \relative c { c, g' e' g, e' g, e' g, c, g' e' g, e' g, e' g, } } \key e \major
  \transpose c e { \relative c { c, g' e' g, e' g, e' g, c, g' e'^\markup{\italic decresc.} g, e' g, e' g, } }
  e cis' a' cis, a' cis, a' cis, e, cis' a' cis, a' cis, a' cis,\fermata <e, b' gis'>1\fermata\arpeggio
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
    
  } <<
      \set PianoStaff.connectArpeggios = ##t

    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass \left }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}