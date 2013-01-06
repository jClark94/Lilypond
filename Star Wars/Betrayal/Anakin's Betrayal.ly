\version "2.16.0"

\paper {
  ragged-last = ##f
  ragged-last-bottom = ##f
}

\header {
  title = "Anakin's Betrayal"
  subtitle = "Star Wars"
  composer = "John Williams"
  % Remove default LilyPond tagline
  tagline = ##f
  copyright = \markup \smaller \smallCaps \left-align \center-column{
    "© 2005 BANTHA MUSIC (BMI)"
"All Rights Administered by WARNER-TAMERLANE PUBLISHING CORP. (BMI)"
"All Rights Reserved"
}
}
global = {
  \key a \minor
  \time 4/4
  \tempo "Sorrowful" 4=72
  \numericTimeSignature
}

right = \relative c' {
  \global
  <c e>2 d8( c d b) c2 a4 a'  <a e>2 <<{bes8( a bes g) e4( f)}\\{d2~ d}>> \times 2/3{g,4( f') f8( e)} <f c>2 <<{e a e'}\\{c,8( b c a) b4( c) d( e)}>> <e a e'>1 
  <<
    {r2 b'4( a) r g'( fis e~ e) <c c'~>^- <b c'~>^- <a c'>^- d8( c d b) d,4 d' <c e>2 d8( c d b) <a c>2 <a a,>4( <a a'>) a'2 bes8( a bes g)}
      \\
    {<f, c' f>1 <e g b> <f a> a2 b, <e a>1 <e f> <bes' d f>}
  >>
   <<{<e, f bes e>2( <f bes d f>\<) <d' f a>1^>\mf\! <bes d f>}\\{s1 r8 a->-. g2-> e4->~ e8 f-.-> e2 d4}>> <c e a c>2 e'4( a,) <f a d> <fis a cis> cis( cis') <cis a gis>2( <b gis fis>) \time 2/4 <<{cis8( b) b( fis)}\\{fis4-> e->}>> \time 4/4
   <<{r4 <cis cis'>2.\arpeggio}\\{fis2 gis4( a)}>> <cis cis,>2 d,8( c d b) \time 2/4 <<{a'( gis) a (fis)}\\{a,2}>> \time 4/4 <a' d f? a>2-> r2 \stemUp \times 2/3 {d8 f e} \stemNeutral e( f) g4( d) <a a'>1-> \bar "||"
   cis,2\f d4( e) e2 f4( a) \times 2/3{c8( b c} \times 2/3{a d b)} c( a d b)
   <<{e,2 f a e'}\\{\times 2/3{c,8( b c} \times 2/3 {a d b} c a d b) \times 2/3{c8( b c} \times 2/3 {a d b)} \showStaffSwitch \change Staff = "left" c( a d b)}>> r4 <a' a'> <b b'>2 <c c'>1 \time 5/4
   \times 2/3 {c,8( b c)} \times 2/3 {a( d b} c a) d( b4.) \time 6/4
   <<{e2 fis~ <fis g> <g fis b,>1}\\{b,1. r4 g( fis b d fis,)}>> <b e fis b>2~ <b e fis b>8 e-- \times 2/3 {g[( fis e)]} a[( e) b'-- b,] \time 4/4
   <d a>2 <c a> <c g>-> <b g> r4 r8 e( \times 2/3 {g fis e)} e( d) <<{r8 a'-> \times 2/3 {c( b a)} g( fis) b( e,) <fis g>1}\\{e1 c2 b}>> <b e fis> <a g'> e'2. b'4 <<{b8\< b <c dis,>2.\!}\\{<e, g>1}>> \bar "||" \time 3/4
   e,16-\markup{\italic sub. \dynamic p} g g fis r4 r b2. \time 4/4
   <e g b>2.\mp <e g b>4 <<{b'2-> a a-> g <g e b>4 <fis d a>2 <e c g>4 <e g b>2 <fis d b> fis2 e4 fis8( g) b2 c4\< d\! \time 6/4 e2 e d4 c \time 4/4 <d a e>2 <b a e> <c a e> <c b g d> <c b f c> <c a f c>\> a4\! c g\> fis g fis2 e4\!}\\{<c f>1 <bes ees> s1 s <c g>1 <e g>2 <e a> <a c> <g b>1 s s s <c, f>2 <e b> e <dis b>}>> <e b g>1\fermata \bar "|."
}

left = \relative c {
  \global
  <a e'>1-\markup{\italic "(with pedal)"} <a f'> <a f' bes> <<{f'1}\\{a,2. a4}>> <a e'>1 <<{r2 a' a4( e) f8( e f d) c'2 b4( a) r8 b,8 g'4 fis e r c'-- b-- a-- d,2. a'4 a2 d8( c d b) a1 r2 bes8( a bes g) r2 d'2}\\{<c, e>1 b a e <f c' a'>1\arpeggio f <a e'> <a f'> <a f'> a}>>
  <d, d'>^> <d' bes'> <<{a'2 c <d a f>4 <cis a~ fis~> <a fis> <cis a fis> <cis a gis>2 <b gis fis>4 fis->}\\{<e a,>1 r2 fis, r4 d2.}>> d2 <a' fis'>1 <<{e'4 e d2}\\{<g, b'>1}>> <cis fis,>2 r8 <<{ a( d) f a( d) f( a) \showStaffSwitch \change Staff = "right" <bes a f d>1->  \change Staff = "left" <cis, fis>->}\\{s2.. s1 \change Staff = "left" r8 cis,-> d2-> fis,4->}>>
  a'8( gis a fis) b( gis cis fis,) <<{c'( b c a) c( b c c,)}\\{r4 a2.}>> a8 r r e'( \times 2/3 {c' b c} \times 2/3 {a d b)} r4 <<{s2. r8 e, f4 s2}\\{ a,2 a8-> a~ a1}>> <a' c e f>1:32 r8 f'-.-> e2-> a,4->
  \times 2/3 {c,8( b c)} \times 2/3 {a( d b} c a) d( b4.) <<{r4 g' fis g c, b}\\{g1.}>> <b d,>1. <c, a' e'>1.\arpeggio <fis d'>1 <e b'>2.~ <e b'>8 e'( \times 2/3 {g fis e} a) fis b( b,4 b8) <c, g' e'>1\arpeggio <b g' d'> <<{e'2. e4 g^"r.h." fis4~ fis8 e4.^"l.h."}\\{<c, g'>1 <c g'>}>> <e b' g'>\arpeggio 
  <e b'>8 r r4 r r2. ais4 e2. r4 f2. r4 ees2. e'4 d2 c4 b2 b c,1 <e' g b>2 <<{c'4 d}\\{<e, a>2}>> e,2 f1 f2. d8 e a1 f f2 b b' b, <e e,>1\fermata
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
