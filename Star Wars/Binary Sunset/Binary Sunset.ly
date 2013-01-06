\version "2.16.0"

\paper {  
  ragged-bottom=##f
  ragged-last-bottom=##f
}

upper = \relative c' {
  \key c \major
  \time 4/4
  \showStaffSwitch
  \clef treble
  \override DynamicTextSpanner #'dash-period = #-1.0
  \tempo "Moderato, rubato" 4 = 72
  r1 bes'2 f' \times 2/3 { ees8 d c} bes'2 f4~ f2 bes,4 \times 2/3 {aes8 g f} ees'2 bes~ \time 5/4 bes4 \times 2/3 {aes8 g aes} <f des aes>2. \bar "||" \time 4/4
  <<
      { g2 d g d4 d }
        \\
      { r8 d ees g, s8 \showStaffSwitch \change Staff = lower a bes d,\hideStaffSwitch \change Staff = upper r8 d' ees g, s8   \showStaffSwitch\change Staff = lower g a d,\hideStaffSwitch \change Staff = upper }
  >>
  g'2 a4. bes16 c bes2 d,4. d8 g4. a8 bes d, \times 2/3 {bes' g d'} c4~ c16 c, e g c4 <d, a fis> g4. a8 <<{bes8. g16 d'8. bes16}\\{d,4 d}>> <g bes ees g>2 g4 \times 2/3 {bes8 a g} <g d>4. bes16 g d2~ d1 r4 r8. <e' g>16 <e g>4 <cis e> r8. <cis e>16 <g' bes>4~ <g bes>8 \times 2/3 {<fis a>16 bes a} <e g>8 <cis e>~ <cis e>1\fermata \bar "|."
}

lower = \relative c {
  \clef bass
\key c \major
  c'4~-\markup{\italic "(with pedal)"} <c bes>~ <bes c f>2~ <bes c f> <bes c f>~ <bes c f>4 <bes ees f>2. <bes ees f> <ees c bes f>4 f,~ <f bes>~ <f bes c>~ <f~ bes~ c~ ees> <f bes c f>2 g,2.
  r2 r8 s4. r2 r8 s4. <g d' bes'>1\arpeggio <g d'> <<{g'2 g4 f r8 g g2}\\{<g, d'>1 e'2. d,4}>> <g d' bes'>1\arpeggio <<{\times 2/3 {ees'4 bes8} \times 2/3{ees g bes} ees4 s4 d2 c bes a d1}\\{ees,,1 g'2 g g g g1}>> d'~ d\fermata
}

deleteDynamics = #(define-music-function (parser location music) (ly:music?) 
 (music-filter 
  (lambda (evt) 
   (not (memq (ly:music-property evt 'name) (list 
       'AbsoluteDynamicEvent 
       'CrescendoEvent 
       'DecrescendoEvent)))) 
     music)) 


\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \deleteDynamics \lower 
  >>
  \layout { }
  \midi { }
}


\header {
  title = "Binary Sunset"
  copyright = ##f 
  composer = "John Williams"
  tagline = ##f
}