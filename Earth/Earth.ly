\version "2.14.2"

\paper { ragged-last = ##f ragged-last-bottom = ##f }

\header {
  title = "Gladiator"
  subtitle = "Earth"
  composer = "Hans Zimmer"
  % Remove default LilyPond tagline
  tagline = ##f
  copyright = ##f
}

global = {
  \key a \minor
  \numericTimeSignature
  \time 3/4
  \tempo "Moderately"
}

rightOne = \relative c' {
  \global
  e2.\p e e e e d e e e e \break
  \repeat volta 2 { a,2\mf e'4 a,4. b8 a g a4. c8 e4 a,2. a4. c8 e4 d4. c8 b4 c4. b8 g4}
  \alternative{{a2.~ a}{a2.}} \bar "||" \key fis \minor
  fis'4. a8 cis4 b4. cis8 a gis fis4. a8 gis4 fis2 cis4 fis4. a8 cis4 fis,4. a8 gis cis, fis4. a8 gis4 fis2.\key e \minor \bar "||"
  e4. g8 b4 e,4. g8 fis b, e4. g8 b4 e,2. d4. fis8 d4 <e b g>2.~ <e b g>
  \repeat volta 2 {b4 e g a,2 g4 fis2.  a4 b d g,2 fis4 e2. <g b>4 e' g a,2 g4 fis2.  fis4 e d}
  \alternative {{e2.}{<<{r4 <g b>2~ <g b>4}\\{e2.~ e4}>><g b e>2~ <g b e>4 <g b e>2~ <g b e>4 <g b e>2 <g b e>2.\fermata\p}}\bar "|."
}

rightTwo = \relative c' {
  \global
  \repeat unfold 3 {r4 c2} r4 <c f>2
  r4 c2 r4 f2 r4 c2 r4 <c fis>2 r4 c2 r4 c2
  \repeat unfold 7 s2. r4 fis,2 r4 fis2 s2. r4 cis'2 \repeat unfold 7 {r4 cis2}
  \repeat unfold 4 {r4 b2} 
}

leftOne = \relative c' {
  \global
  \repeat unfold 10 {r4 a2}  
  r4 <c, e>2 \repeat unfold 3 { r4 <c e>2 }
  r4 <c f>2 r4 <c e>2 r4 <f a,>2 \repeat unfold 3 {r4 <e c>2} \key fis \minor
  \repeat unfold 8 {r4 a2} \repeat unfold 4 {r4 g2} r4 <b fis>2 e,,4 b'2 e,4 b'2
  e,4 g' d, r c'2 r4 <d a>2 r4 f2 e,4 e' d, r c'2 c,4 c' b, r c'2 r4 <d a>2 r4 b2 r4 b2
}

leftTwo = \relative c {
  \global
  a2. d a d a <d f> a d a d a d, a' d, a' d, a' d, d s2.
  \repeat unfold 4 {fis b} \key e \minor e, a e a b s2. s s c,2. d d s c s a d b e e a e a e\fermata
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \rightOne \\ \rightTwo >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 90 4)
    }
  }
}
