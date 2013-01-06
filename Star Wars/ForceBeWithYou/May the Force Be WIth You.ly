\version "2.16.0"

\paper {
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  title = "May the Force Be With You"
  subtitle = "Star Wars"
  composer = "John Williams"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key es \major
  \time 4/4
  \partial 4
  \tempo "Slowly"
}

right = \relative c'' {
  \global
  g,4\mf \repeat volta 2 {
     c2-\markup{\italic legato} <aes d>4. <<{ees'16 f}\\{b,8}>> <c ees>2 g4. g8 c4. d8 ees g, \times 2/3 {ees' c g'} f2. <f, g>4 c'4. d8 ees8. g,16 g'8. ees16 <ees c'>2 c4 \times 2/3 {ees8 d c} g'4~ \times 2/3 {g8 ees c} g4 g8. g16 
  }\alternative {
         { c2. <g f>4}
         { c2. c4}
     }
  c2 d4 \times 2/3 {d8 ees f} <<{\times 2/3{ees d c} d2 g8. g16}\\{g,4 <g bes>2.}>> <g' c,>4 <c, g>~ <c g>8 aes' \times 2/3 {g ees c} <f des>2. <aes, f>4 <aes des f>2 <bes des g>4~ \times 2/3 {<bes des g>8 aes' bes}
  <<{\times 2/3 {aes f c'} g2 \times 2/3 {c,8 des ees}}\\{c4 <c ees>2 g4}>> \times 2/3{<des' f>8 g aes} <aes f des>4 \times 2/3 {<aes f des>8 bes c} \times 2/3 {des, g f} \times 2/3 {<des f aes>\< bes' c} <c aes f des>4~ \times 2/3 {<c aes f des>8 c des} <<{\times 2/3 {aes g f}}\\{des4}>> \times 2/3{<des f bes>8 c' des} <des bes f>2 <bes f des>4 
  <g c,>2.\!\>^\markup{\italic rall.} <g b,>4 \bar "||" <ees c'>2\!\mf^\markup{\italic "a tempo"} <f d'>4. <g ees'>16 <aes f> <g ees>2 <g c,>4. <g b,>8 <ees c'>4. <f d'>8 <g ees'> g \times 2/3 {<c ees> g <bes g'>} <a f'>2. <g f b,>4 <ees c'>4. <f d'>8 <g ees>8. g16 <c g'>8. ees16 <ees c'>2 <c ees,>4 <<{\times 2/3 {ees8 d c}}\\{aes4}>> <c ees g>4~ \times 2/3 {<c ees g>8 ees c}
  <<{g2~ g2 g4. g8}\\{s2 c, b}>> c'1~ <c c'>\fermata \bar "|."
}

left = \relative c, {
  \global
  r4 c8 g'( c ees f d c g) c,( g' c ees) d( c) b( g) c,( g' c ees g ees c g) f( c' f a c4) d,8( g,) c,( g' c ees g ees bes4) aes8( c ees aes~ aes4) aes, g8( c ees g) <<{c,4 b}\\{<g f'>2}>> c,8( g' c ees g ees) d( g,) c,( g' c ees g4) <g ees bes>
  aes,8( c ees aes~ aes4) aes, c g g8( d bes g) aes( ees' aes c ees4 aes,) des,8( aes' des f aes4) c, bes,8( f' bes des f4 bes,) f4 c' c8( g ees c) <des des'>2 <c c'> <bes bes'> <aes aes'> <g g'> <g g'> <g' d'? f>1
  c,8 g'( c ees) f( c) aes g c,( g' c ees g ees c) g c,( g' c ees g ees c g) f( c' f a c a) g( g,) c,( g' c ees g c,) bes( bes,) aes( ees' aes c ees aes ees aes,) g( c ees g c g ees c) 
  g8~ <g d'>~ <g d' f>2. <<{r8 g c ees g c ees g ~ g1 \fermata}\\{c,,,1 ~ c\fermata}>>
  
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
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
