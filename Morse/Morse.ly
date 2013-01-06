\version "2.14.2" 
\paper {
  ragged-right = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}
\header {
  title = "Inspector Morse Theme"
  composer = "Barrington Pheloung"
}


morse = \relative c' {
\stemUp \times 3/2 { e4 e } e e e e8 e8~ e4 e4 e8 e e4 e
}

song = \relative c' {
  \tempo 4=120
  \time 3/4
  \key a \minor
       \set TabStaff.minimumFret = #6
            \set TabStaff.restrainOpenStrings = ##t
            
  << { \stemDown s2.*8 \bar "||"
  a4 b c~ c b d\4 \times 3/2{ c b} a b c b d\4 c\glissando e,2\4 a4 b2 c8 b a2 g4 a b c~ c b d\4 \times 3/2 { c b} a b c b e, e' \times 3/2 { d c } b2 c4 g' f e d2~\4 d8\4 b e2.\2 \bar "||"
  c4 g g'~ g f e d\4 g, g'~ g e d c g e'~\4 e d\4 c b c d b f' e %\bar "||"
  \repeat volta 2 { a8 b c4. b8 ~ b4 r8 c a b c2 r4 r c d e8 d c2 r4 c8 d e16( d) c8 d2.~ d2 r4 a8 b c4. b8~ b4 r8 c a b c2 r4 r c d e8 d c2 r4 c8 d e16( d) c8 d2. e,2 r4 }
  a, b c~ c b d\4 \times 3/2{ c b} a b c b d\4 c\glissando e,2 a4 b2 c8( b) a2 g4\glissando a2.~ a \bar "||"
} \\ { \repeat unfold 8 \morse s2.*16 \repeat unfold 4 \morse } >>
  \bar "|."
}

\score {
  <<
    \new Staff {
      \clef "G_8" \song 
    }

    \new TabStaff {
        \override Stem #'transparent = ##t
        \override Beam #'transparent = ##t
        \song
    }
  >>
  \layout { } 
  \midi { }
}

