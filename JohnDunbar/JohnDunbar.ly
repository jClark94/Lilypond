\version "2.14.2"

\paper { ragged-last-bottom =  ##f ragged-bottom = ##f ragged-right = ##f }

\header {
  title = "The John Dunbar Theme"
  subtitle = "from Dances With Wolves"
  composer = "John Barry"
  % Remove default LilyPond tagline
  tagline = ##f
}

codaSetup = {
  s64
  \cadenzaOn 
  \stopStaff 
  
  s64 \bar ""
  
  \startStaff
  \cadenzaOff
  
  \break 
  \once \override Staff.KeySignature #'break-visibility = #end-of-line-invisible
  \once \override Staff.Clef #'break-visibility = #end-of-line-invisible
  
}

bassRepeat = \relative c, { c4. c8 c2}

global = {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \tempo "Moderately"
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'font-size = #-4
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT
}

right = \relative c' {
  \global
  
  <c a f>1\mp <d a f> <c a f>~ <c a f>2. g'16 f g a~ <a f c>2.~ <a f c>8 e16 f <d a f>2.~ <d a f>8 g16 f <<{g16 a8.~ a2. a a8[ f16 g]}\\{<c, f>1~ <c f>2.~ <c f>8 s8}>> \bar "||"\mark\markup{\musicglyph #"scripts.segno"}
  <<{<f c>2~^\markup{\italic "Opt. 8va on D.S."} <f c>8 c4 f8}\\{a,1}>> <d f a>4. <f d a>8~ <f d a>2 <<{f'2~ f8 g4 f8}\\{<d bes>1}>> <c bes e,>1 <<{<d bes>2~ <d bes>8 c4 bes8}\\{f1}>>
  <c a f>4. <f c a>8~ <f c a>4. r8 <d g bes>2~ <d g bes>8 <g d bes>4 f8 <g e bes>1
  <<{<f c>2~ <f c>8 c4 f8}\\{a,1}>> <d f a>4. <f d a>8~ <f d a>2 <<{f'2~ f8 g4 f8}\\{<d bes>1}>> <c bes e,>1
  <<{d2~ d8 e4 f8}\\{<bes, f>1}>>  <f' c a>4. <f a c>8~ <f a c>4. r8 <bes, d a'>2~ <bes d a'>8 <c e g>4 f8 <f c a>1  \bar "||" \mark\markup {\right-column \right-align \italic {\line{\normalsize"To Coda " \general-align #Y #-0.75 \musicglyph #"scripts.coda"} \small"(End opt. 8va)"}}
  r8\mf <<{c8 f c bes a f c}\\{<f a>4. <f d>4 <c a>}>> r8<<{a'16 bes a8 d c a f c}\\{<c f>4. <d f>4 <c a>}>>
  r8 <<{c'8 f c bes a f c}\\{<f a>4. <f d>4 <c a>}>> r8<<{a'16 bes a8 d c a f c}\\{<c f>4. <d f>4 <c a>}>>
  r8\f <<{f'8 bes f ees d bes f}\\{<bes d>4. <bes g>4 <f d>}>> r8 <<{d'16 ees d8 g f d bes f}\\{<f bes>4. <g bes>4 <f d>}>>
  r8 <<{f'8 bes f ees d bes f}\\{<bes d>4. <bes g>4 <f d>}>> r8 <<{d'16 ees d8 g f d bes f}\\{<f bes>4. <g bes>4 <f d>}>>
  \repeat unfold 2 {<<{r8 c'16 d c8 f ees d bes d r8 c16 d c8 f ees2}\\{<ees, g>2 <g c> <ees g> <g c>4 <ees g>}>>}
  \repeat unfold 2 {<<{r8 bes16 ces aes8 des ces2}\\{<aes f>2 <aes f>}>>} \bar "||" \mark\markup{\small \italic "D.S. al Coda"}
  \codaSetup
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-invisible
  \mark \markup {\normalsize \musicglyph #"scripts.coda" }
  \repeat unfold 2 {
    r8\f <<{c'8 f c bes a f c~ c a'16( bes c) f,-. g-. a-. d e f8~ f4}\\{<f, a>4. <f d>4 <c a~> a8  s4. <f' a>4 <a c>}>>   
    \repeat unfold 2 {<<{r8 bes16 g bes8 ees d16 ees c8~ c16 d bes8}\\{<g ees>1}>>}
  }
  <<{<c a f>1~\> <c a f> <c f>2.~\!\mp <c f>8 c}\\{s1 s a}>> <c a f> <<{d8 c4.~ c g8 g a4.~ a2 d8 c~ c2. c2}\\{<a f>2~ <a f>4. s8 <f c>1 <f a>~ <f a>2}>> r4 g <a f c>1\fermata
  \bar "|."
}

left = \relative c' {
  \global
  \transpose c f \bassRepeat
  \transpose c d \bassRepeat
  \transpose c f \bassRepeat
  \transpose c f \bassRepeat
  \transpose c f \bassRepeat
  \transpose c d \bassRepeat
  \transpose c f \bassRepeat
  \transpose c f \bassRepeat
  f,,4.^\markup{\dynamic mp - \dynamic mf} f8 f2
  \transpose c d \bassRepeat
  bes4. bes,8 bes4. bes'16 bes,
  \bassRepeat bes'4. bes8 bes4. d,16 e
  \transpose c f \bassRepeat  \transpose c g \bassRepeat \bassRepeat
  f4. f8 f4~ f16 c e8 \transpose c d \bassRepeat \transpose c bes \bassRepeat \bassRepeat
  \transpose c bes \bassRepeat
  \transpose c f \bassRepeat
  g4. g8 c,2
  \transpose c f \bassRepeat
  \repeat unfold 2 { f4. f8 bes4 f f4. f8 d4 f }
  \repeat unfold 2 { bes,4. bes8 ees4 bes bes4. bes16 a g4 bes }
  \repeat unfold 4 {\bassRepeat} \repeat unfold 2 {\transpose c des \bassRepeat }
  \codaSetup
  \repeat unfold 2 {f'4. f8 bes4 f f4. f8 d4 f
                    \repeat unfold 2 {ees4. ees8 ees ees4 ees8}}
  \transpose c f \bassRepeat
  \transpose c f \bassRepeat
  \transpose c f \bassRepeat
  f4. d'8~ d4 c8 g16 a
  \transpose c f \bassRepeat
  \transpose c f \bassRepeat
  \transpose c f \bassRepeat
  f4~ f16 f16 r8 r16 d d'8~ d16 e,8. f1\fermata
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
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}
