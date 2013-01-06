\version "2.16.0"

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  title = "First Contact"
  subtitle = "Star Trek"
  composer = "Jerry Goldsmith"
  % Remove default LilyPond tagline
  tagline = ##f
  copyright =  ##f
}

global = {
  \key f \major
  \time 4/4
  \tempo "Majestically" 4 = 70
  \numericTimeSignature
}

right = \relative c'' {
  \global
  <<{f1~ f f~ f}\\{\times 2/3 {a,4\mf a f} c'2~ c b4 g \times 2/3 {a4\mp a f} c'2~ c b4 g }>> <f c' f>1~ <f c' f>2.\p c4\mf \bar "||"
  <f a,>4. <e g,>8 <<{f8 c f c'}\\{a,4 c}>> <d bes'>2. <a' c>8 <a f> <<{g2. a8 f d2. e4}\\{e2. c4 bes a <bes g>2}>> <a d f>2~ <a d f>8 a' f c <d bes f>2. <bes d f>4
  <<{bes'2~ bes8 a g d}\\{d2. bes4}>> <e c g>2. c4
  <f a,>4. <e g,>8 <<{f8 c f c'}\\{a,4 c}>> <<{r4 c'' f,2}\\{<d, bes'>2. <a' c>8 <a f>}>> <<{r4 c' g2}\\{g,2. <a c,>8 <f a,>}>> <<{d2. e4}\\{bes a <bes g>2}>>
  <<{r4 f''' d2 r4 f d2 r4 c g2}\\{<f, d a>2~ <f d a>8 e f c' <d bes f>2. bes8 a <g e c>2. c,4}>> 
  <f c a>2~ <f c a>8 <c c'>\< <f f'> <e e'>\! <<{f'2\f d}\\{f,4 e f d}>>
  <b d g>2~ <b d g>8 <d d'> <f f'> <e e'> <<{f'2 d}\\{f,4 e f a}>> <b d g>2. <g d'>4 <<{ees'2~ ees8 g, ees' d}\\{ees,4 f g bes}>>
  <aes c ees>2~ <aes c ees>8 aes <ees ees'> <g g'> <f bes d f>2 <f bes d> <e g c>2. <c c'>4
  <f' a,>4. <e g,>8 <<{f8 c f c'}\\{a,4 c}>> <bes d bes'>2. <c f c'>8 <a f' a> <g ees' g>2. <a f' a>8 <f c' f> <<{d'2. e4}\\{<f, bes>2 <d f bes>4 <e g c>}>>
  <a d f>2~ <a d f>8\< <g e'> <a d f> <c f c'>\! <f bes d>2.\f <d bes'>8 <f a> <bes, e g>2.\> a4\!
  <<{f'1~ f f~ f}\\{\times 2/3 {a,4\mf a f} c'2~ c b4 g \times 2/3 {a4\mp a f} c'2~ c b4 g }>> \ottava #1 <f' a c f>1\fermata \ottava #0 \bar "|."
}

left = \relative c' {
  \global
  <<\set Staff.connectArpeggios = ##t{<a f c>1~\arpeggio   <a f c>2 <b g d>}\\{f,1~\arpeggio   f}>>
  <<\set Staff.connectArpeggios = ##t{<a' f c>1~\arpeggio   <a f c>2 <b g d>}\\{f,1~\arpeggio   f}>>
  \times 2/3 {a4 a f} c'2 \times 2/3 {a4 a f} c'2
  <c f,>4. <g c,>8 <f c'>4 <a f'> <bes f'>2. <c f,>4 <g c,>2. <f c'>4 <f bes,>2 <c g'> <<{a'1}\\{d,2 c}>> <f bes,>1
  <g d'>1 <g c,> <c f,>4. <g c,>8 <f c'>4 <a f'> <bes f'>2. <c f,>4 <g c,>2. <f c'>4 <f bes,>2 <c g'>
  <<{a'1}\\{d,2 c}>> <f bes,>1 <g c,> <c f,>
  <<
    { r8 a f' a, r a f' a, r d g d r d g d r8 a f' a, r a f' a, r d g d r d g d r g ees' g, r g ees' g, r ees c' ees, r ees c' ees, r f d' f, r f d' f, r g c g }
      \\
    {  d,2 d g g d d g g c bes aes aes bes bes c}
  >>
      e4 c <<{c2}\\{f,4. e8}>> <f c'>4 <a f'> <bes f'>2. <f c'>4 <c g'>2. <c' f,>4 <bes bes,>2 <c c,> <<{a1}\\{d,2 c}>> <bes bes'>1 <c c'>
  <<\set Staff.connectArpeggios = ##t{<a'' f c>1~\arpeggio   <a f c>2 <b g d>}\\{f,1~\arpeggio   f}>>
  <<\set Staff.connectArpeggios = ##t{<a' f c>1~\arpeggio   <a f c>2 <b g d>}\\{f,1~\arpeggio   f}>>
  <a' f c f,>1\arpeggio\fermata
      
}

\score {
  \new PianoStaff \with {      
    instrumentName = "Piano"
  } 
  <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "right" \with {
        \consists "Span_arpeggio_engraver"
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
        \consists "Span_arpeggio_engraver"

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
