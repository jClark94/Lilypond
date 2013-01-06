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
  title = "War is Over"
  subtitle = "So this is Christmas"
  composer = "John Lennon"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {ragged-bottom = ##f ragged-last = ##f ragged-last-bottom = ##f}
global = {
  
}

right = \relative c'' {
  \key a \major
  \numericTimeSignature
  \time 12/8
  \tempo 4=90
  \partial 4. a8 b cis a e4 r4. r4 a8 a b cis b4. r r4 b8 b cis d cis b4 r4. r4 gis8 cis cis cis16 b a4. r r4 a8 fis' fis fis e d4 r4. r4 d8 d e fis e4. r r4 e8 e fis g fis e4 r4. r4 a,8 fis'8 a fis16 e d4. r r4 b8 b' b b16 b a8 g4 r4. r4 g8 g a b a4. r r4 a8 a g fis e e4 r4. r4 e8 e d cis d4. r4. r4 a8 a b cis 
\repeat volta 2 {
a8 e4 r4. r4 a8 a b cis b4. r r4 a8 a b cis cis b4 r4. r4 gis8 cis cis cis16 b a4. r r4 a8 cis cis cis a a4 r4. r4 a8 a e fis b4. r r4 b8 b fis g cis e,4 r4. r4 a8 fis' a fis16 e a,4. r4. r4 b8 b' b b16 b a8 g4 r4. r4 g8 g a b a4. r r4 a8 a g fis e e4 r4. r4 e8 e d cis d4. r r4 a8 a b cis
}
d4. r r r cis b d cis d cis e d b a gis b cis b d cis cis~ cis r r \bar "|."
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
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \key a \major \numericTimeSignature \time 12/8 \tempo 4=90 \clef bass r8 r4 \left }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}

