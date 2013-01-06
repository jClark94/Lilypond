\version "2.14.2"

achordprog = \relative c {
   <e a cis>8 <e a cis>8 <e a cis>8 <e a b>8 <e a b>8 <e a b>8 <e a d> <e a d> <e a d> <e a cis> <e a cis> <e a cis>

}

bchordprog = \relative c {
  <fis b d>8 <fis b d> <fis b d> <fis b cis> <fis b cis> <fis b cis> <fis b e> <fis b e> <fis b e> <fis b d> <fis b d> <fis b d>
}

emchordprog = \relative c {
  <e g b>8 <e g b> <e g b> <e fis b> <e fis b> <e fis b> <e a b> <e a b> <e a b> <e g b> <e g b> <e g b>
}

echordprog = \relative c {
  <e gis b>8 <e gis b> <e gis b> <e fis b> <e fis b> <e fis b> <e a b> <e a b> <e a b> <e gis b> <e gis b> <e gis b>
}

dchordprog = \relative c{
  <d fis a>8 <d fis a> <d fis a> <d e a> <d e a> <d e a> <d g a> <d g a> <d g a> <d fis a> <d fis a> <d fis a>
}

gchordprog = \relative c' {
  <g b d>8 <g b d> <g b d> <g a d> <g a d> <g a d> <g c d> <g c d> <g c d> <g b d> <g b d> <g b d>
}

\header {
  title = "Little Drummer Boy"
  subtitle = ""
  composer = ""
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {ragged-bottom = ##f ragged-last = ##f ragged-last-bottom = ##f}
global = {
  
}

right = \relative c' {
  \key f \major
  \numericTimeSignature
  \time 4/4
  \tempo 4=88
  <f c>4. <g e>8 <a f>4 <a f>8 <a f> <bes g>16 <a f> <bes g>8 <f a>2. r8 <f c> <f c> <g e> <a f> <a f> <a f> <a f> <bes g>16 <a f> <bes g>8 <a f>2.
  r8 <g e> <a f> <bes g> <c g> <c g> <c g> <d bes> c16 bes <a f>8 <g e>2. r8 g a bes c c c d ees16 d c8 bes4 d16 c bes8 a4 c16 bes a8 g2.
    <f c>4. <g e>8 <a f>8 <a f> <a f> <a f> <bes g>16 <a f> <bes g>8 <f a>2. r8 <f c> <f c> <g e> <a f> <a f> <a f> <a f> <bes g>16 <a f> <bes g>8 <a f>2.
  r8 g a bes c c c d c16 bes a8 g2. r8 g a bes c c c d ees16 d c8 bes4 d16 c bes8 a4 c16 bes a8 g2.
}

left = \relative c {
  \global
  \achordprog \bchordprog \echordprog \achordprog \dchordprog \emchordprog \achordprog \dchordprog \gchordprog \achordprog \echordprog \dchordprog
  \achordprog \bchordprog \echordprog \achordprog \dchordprog \emchordprog <a' d>8 <a d> <a d> <a cis> <a cis> <a cis> <a b> <a b> <a b> <a cis> <a cis> <a cis>
\dchordprog \gchordprog \achordprog \emchordprog <d, fis a>8 \repeat unfold 23 <d fis a>8 \achordprog \bchordprog \echordprog \achordprog <e a cis>4.~ <e a cis> r4. r
}


\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
          \addlyrics { Come they told me, pa rum pum pum pum 
A new born King to see, pa rum pum pum pum 
Our finest gifts we bring, pa rum pum pum pum 
To lay be -- fore the King, pa rum pum pum pum, 
rum pum pum pum, rum pum pum pum,
 }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}

