\version "2.14.2"

\header {
  title = "Miserere Mei, Deus"
  composer = "Gregorio Allegri"
  copyright = \markup \left-align \center-column {
"© Copyright 2006 Dorsey Brothers Music Limited."
"All Rights Reserved.  International Copyright Secured."
}
  tagline = ##f
}

semppMarkup = \markup { \dynamic "pp" \italic "sempre"}


\paper {
  ragged-bottom = ##f
  ragged-last = ##f
  ragged-last-bottom = ##f
}

global = {
  \key bes \major
  \time 4/4
  \tempo "Slowly and solemnly" 4 = 72
}

right = \relative c'' {
  \global
  <g d'>4.\p <g d'>8 <g d'>4 <g d'> <f d'>2 <f d'>2 bes4 ees2 <d f,>4 <c f,>1 (<bes d,>2) <<{c4 c8 c}\\{f,2}>> <f c'>2 <f c'>4 f4~ (f8 g ees d) ees4. (f8) g4( c~ c8) d( bes a) bes4 <c ees>2 <bes d>4~ <bes d> <c a>8 (<g bes> a g fis a) <<{bes1 a\fermata}\\{a4 g8( fis) g2 g4 fis8( e) fis2\fermata}>>
  <g d'>4.\mp <g d'>8 <g d'>4 <g d'> <g d'> r <<{d'8 d d d}\\{g,4 g}>> <f d'>2 <<{c'2 ees8( d)}\\{f,4 a~ a}>> <g d'>4 r8 g'4 f8 ees8.( d16 c d bes8) <c g>2 <<{d1}\\{bes4 a8( g) g4 fis8( e)}>> <fis a d>1 <<{ees'4\mf ees8 ees ees4 ees}\\{g,1}>> <g d'>2 <a d>4  <<{s4 g'2.\<( c4\!~ c bes aes g f2.\>) g16( f ees f) g1~\! g\fermata}\\{d4~ d4 c c2~ c1 ~ c ~ c ~c4 b8( a) b2}>>
  <g d'>8\p\fermata( <g d'> <g d'> <g d'> <g d'> <g d'> <g d'> <g d'> \time 3/4 <g d'> <g d'> <g d'> <g d'> <g d'> <g d'>\time 4/4 <f a d>2 <f bes d>) <<{bes4( ees2 d4 <c f,>1 <bes f d>2) c4( c8 c <c f,>2 <c f,>4)}\\{f,4 ees8( g) f4 f bes a8( g) a2 s2 f2 s2.}>> f4\mp~( f8\< g ees d ees4. f8\! g4)  <<{c~( c8 d bes a bes4 ees2 <d bes>4~ <d bes> c8 bes <a fis>8 <g bes> <a fis>4 <bes g d>1 <a d,>\fermata)}\\{s2\mf g4~ g c f,2 ees d s1\> g4 fis8( e) fis2\!\fermata}>>
  <g d'>8 <g d'> <g d'> <g d'> <g d'> <g d'> <g d'> <g d'> <g d'> <g d'> <g d'> <g d'> <g d'>4. <g d'>8 <f d'>2 <<{<f c'> ees'8( d) d4 r8 g4 f8 ees8.( d16 c d bes8) c2 d a}\\{s4 a~ a g bes g~ g2 g bes4( a16 bes g8) g4( fis16 g e8)}>> <fis d'>1
  \time 5/8 <<{ees'8 ees \times2/3 {ees ees ees} ees}\\{g,4~ g4.}>> \time 4/4 <g d'>2 <a d>4 d <<{g2.\<( c4\!~ c bes aes g f2.\>) g16( f ees f) g1^\markup{\bold "rit."}~\! g\fermata}\\{d4 c c2~ c1 ~ c ~ c ~c4 b8( a) b2}>>
  \time 3/4 <<{\times 2/3{d8^\markup{\bold "a tempo"} d d} d d d d \time 4/4 \times 2/3{d8 d d} \times 2/3{d8 d d}}\\{g,2.-\semppMarkup g2}>> r8\fermata <g d'>8 <g d'> <g d'>
  <<{d'2 d4 d bes( ees2 d4 <c f,>1\fermata <bes f d>)}\\{f2 f f4 ees8 (g) f4 f bes4 a8(g) a2\fermata s1}>>
  <ees g c ees>2. <ees g c ees>4 <ees g c ees>2 <ees g c ees>4 <ees g c ees> <ees c' ees>4. <ees c' ees>8 <g d'>2 <<{d'4 d d2 \time 3/2 <d bes>^\markup{\bold "rit."} <d a>2. d4}\\{d,4 g~ g fis8( e) fis4. fis8}>> \time 4/4 <g b>1\fermata \bar"|."
}

left = \relative c' {
  \global
  <g bes>4. <g bes>8 <g bes>4 <g bes> d2 bes <<{d'4 c8 (bes) a4 bes bes a8( g) a2}\\{ees2 f4 bes, f'1}>> bes2 <f a> <f a> <f a>4 r c2 c4.( d8) ees4. (f8) g2 g4. a,8 bes2 <c ees>2 d <d g,>1 d\fermata
  <g bes>4. <g bes>8 <g bes>4 <g bes> <g bes> r <g bes> <g bes> bes2 f g <ees bes'>2~ <ees bes'> ees d1 d
  c <g' bes>2 <fis a>4 r <c' ees>1 <c aes>~ <c aes> <<{ees4 d8( c) ees4 d8( c) d1}\\{g,1~ g}>>
  <g bes>8\p\fermata <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> \time 3/4 <g bes> <g bes> <g bes> <g bes> <g bes> <g bes>\time 4/4 d2 bes <<{d'4 c8 (bes) a4 bes}\\{ees,2 f4 bes,}>> f'1 bes2 <a f> <a f> <a f>4 r <g c,>2 <g c,>4. <f d>8 ees4 ees' <d g,>2 g,4. a,8 bes2 c <<{a'2~ a4 g8( fis) g2}\\{d2 g,1}>> d'1\fermata
  <g bes>8 <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes> <g bes>4. <g bes>8 bes2 f g ees~ ees ees d1 <d a'> c4~c4.
  <g' bes>2 <fis a>4 r <c' ees>1 <c aes>~ <c aes> <<{ees4 d8( c) ees4 d8( c) d1\fermata}\\{g,1~ g}>>
  <g bes>2. <g bes>2 r8\fermata <g bes>8 <g bes> <g bes> <a d,>2 <bes bes,> <<{d4 c8 (bes) a4 bes}\\{ees,2 f4 bes,}>> f'1\fermata bes
  c,2. c4 c2 c4 c c4. c8 <g' bes>2 <d a'> <g bes>g,2 d'2. d4 <d g,>1\fermata
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
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 4)
    }
  }
}
