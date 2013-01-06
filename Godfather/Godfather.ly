\version "2.14.2"

\header {
  title = "The Godfather"
  subtitle = "Love Theme"
  composer = "Nino Rota"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {ragged-bottom = ##f ragged-last = ##f ragged-last-bottom = ##f}
global = {
  
}

right = \relative c'' {
  \key d \minor
  \numericTimeSignature
  \time 4/4
  \tempo "Slowly"
  \partial 4.
  a8 d f \repeat volta 2 {
   e d f d e d bes c a2 r8 a d f e d f d e d a aes g2 r8 g bes cis e2 ~ e8 g, bes cis d2 r8 d, d c' bes a c bes bes a a cis, d2 r8 d' d cis c2 e4 d8 bes a2 r8 a c a g2~ g8 g bes gis <a cis,>2 r8
   a d f e d f d e d bes c a2 r8 a d f e d f d e d a aes g2 r8 g bes cis e2~ e8 g, bes cis
   \break
  }
  \alternative {{ d2 r8 d, d c' bes a c bes bes a a cis, d2 r8 a' d f}
  { d2 r8 d, d c' bes a c bes bes a a cis <d a f>1}
}
  \bar "|."
}

leftDown = \relative c {
  \global
  d1 d4 a d r4 d2 f g4 d g r4 g2. r4 d2. r4 r a2 a4 <d f> a d, r4 e' <c bes'>2 e4 f c f r4 r g f e r4 f8 e a,4 r4 r <f' a> <f bes>2 d4 a d r r a'2. g4 d g r4 r bes~ <bes d> r r f~ <f a> r f2 g <f d>4 a, d, r4 r4 f'~ <f a> r r a,2 a4 r4 a d,2
}

leftUp = \relative c {
  \global
  r4 <f~ a> <f bes>2 f2. r4 r a2. bes2. r4 r bes~ <bes d> r r f~ <f a> r4 f2 g s1 s a2. r4 bes1 s1 d, f2. r4 d2 f bes2. r4 g2. r4 d2. r4 r a2 a4 s1 d2. r4 f2 g s1
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
    \new Staff = "left" \with {
      printPartCombineTexts = ##f 
      midiInstrument = "acoustic grand"
    } { \key d \minor \numericTimeSignature \time 4/4 \tempo "Slowly" \clef bass r8 r4 \partcombine \leftUp \leftDown }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 80 4)
    }
  }
}
