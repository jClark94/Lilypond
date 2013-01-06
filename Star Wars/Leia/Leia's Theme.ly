\version "2.16.0"

\paper { ragged-bottom =  ##f ragged-last-bottom =  ##f }

\header {
  title = "Princess Leia's Theme"
  subtitle = "From Star Wars"
  composer = "John Williams"
  % Remove default LilyPond tagline
  tagline = ##f
}

changeLeft = { \hideStaffSwitch \change Staff = "left" \stemUp }
changeRight = { \showStaffSwitch \change Staff = "right" \stemDown }

global = {
  \key d \major
  \time 4/4
  \tempo "With a gentle flow and a straight-eigth feeling" 4=100
}

right = \relative c'' {
  \global
  \partial 8 d8\mf( cis8 d8 b8 cis8 bes8 c8 a8 d8)(
  cis8 d8 b8 cis8 bes8 c8 a8 g'8)( fis8 g8 e8 fis8 es8 f8
  d8 g8)( fis8 g8 es8 fis8 d4.) a8
  \repeat volta 2 {
    a8 fis'8  \stemUp fis2 ~ fis8 fis8 \stemDown
    g8 g16 fis16 \stemUp \tieUp e2~ e8 \tieNeutral a,8 \stemDown
    a8 fis'8 fis2 ~ \stemUp fis8 a8 bes8 bes16 a16 \tieUp g2 ~ g8 \tieNeutral
    a,8
    \stemUp bes8  bes'8 bes2 ~ bes8 bes8 cis8 b16 bes16 \tieUp gis2 ~
    gis8 gis8 \stemUp ces8 bes16 as16 ges4 ~ ges8 \tieNeutral f16 ges16 as8^\markup{\italic rit.}
    ges16 as16\stemNeutral
    bes2^\markup\italic{a tempo} f4. f8
  }
  \alternative {
    {
      bes8 a16 g16 f4 ~ \stemUp f8 e16 f16 g8 f16 g16 \stemUp a2 e4^\markup\italic{rit.} r8 \stemNeutral
      e,8\ottava \bar "||"
      \tempo "Freely"
      <<
        {\times 2/3 {fis8\mp\< g a} \times 2/3 {fis8 g a} \times 2/3 {fis8 g a} \times 2/3 {fis8 g a} r8\!\f\> fis' b dis~ dis4\laissezVibrer b, \times 2/3 {e8\mp\< f g} \repeat unfold 3{\times 2/3 {e8 f g}} <cis, a'>2.\!\f\> r8\!\mf a8}
        \\
        {e4 e4 e4 e4 <dis~ b'>2 <dis fis>4 b'4\fermata d4 d4 d4 d4 s1}
      >>
\break
    }
    {
      <f bes d f>8 e'16 d16 c4 ~ \stemUp c8 bes16 c16 d8 e16 f16
    }
  }
  \stemNeutral <<{<e a, e>1}\\{b2 cis4.^\markup\italic{rit.} a,,8\f}>>
  a8^\markup\italic{a tempo} fis'8 fis2 ~ fis8 fis8 g8 g16 fis16 e2 ~ e8 a,8
  a8 <fis' a>8 <fis a>2 ~ <fis a>8 <fis a>8 <g bes>8 bes16 a16 g2.
  fis8\> fis16 e16 d2. <a' fis'>8 fis'16 e16 d2 r8 a8\!\mp\break
  \tempo "Freely"
  \times 2/3 { bes8 a8 g8 }
  \times 2/3 { c8 bes8 a8 }
  \times 2/3 { d8 c8 bes8 }
  \times 2/3 { e8 d8 c8 }
  \times 2/3 { f8 e8 d8 }
  \times 2/3 { bes'8 a8 g8 }
  \times 2/3 { e'8 cis8 d8 }
  \ottava #1 \times 2/3 { bes'8 a8 g8 }
  \acciaccatura { d8 } d'1\ottava #0 \bar "|."



}


left = \relative c {
  \global
  r8 a1 ~ a1 a'1 ~ a1
  \slurDown
  d,8( a'8 d8 e8 \changeRight fis4 a4) \changeLeft
  d,,8( g8 bes8 d8 \changeRight g4 bes8) r8 \changeLeft
  d,,8( a'8 d8  e8 \changeRight fis4 a4) \changeLeft
  d,,8( g8 bes8 d8  \changeRight g4 bes4) \changeLeft
  es,,8([ bes'8] \changeRight es8[ f8] g4 bes4) \changeLeft
  e,,8([ b'8]  \changeRight e8 fis8
  gis4 b4) \changeLeft \stemNeutral \slurDown bes,8([ es8]
  \changeRight ges8[ bes8 ges8 es8] \change Staff = "left" bes8 es,8)

  \clef bass bes8( f'8 bes8 d8  f8 d8 bes8) r8
  \slurDown
  g,8( d'8 g8 bes8
  \changeRight d8 g8 bes8 d,8) \changeLeft

  \stemDown a,( e' a cis \changeRight e a cis e,) \changeLeft\stemNeutral\slurNeutral
  \times 2/3 { c8 b8 a8 }
  \times 2/3 { c8 b8 a8 }
  \times 2/3 { b8 a8 g8 }
  \times 2/3 { b8 a8 g8 }
  fis1
  \clef "treble"
  \times 2/3 { bes'8 g8 f8 }
  \times 2/3 { bes8 g8 f8 }
  \times 2/3 { as8 g8 f8 }
  \times 2/3 { as8 g8 f8 }
  <<{e1}\\{r8 a,( cis e a2)}>>\clef bass
  \slurDown   g,,8( d'8 g8 bes8 \changeRight d8 g8 bes8 d,8) \changeLeft \stemNeutral
  a,8( e'8 a8 d8 e4.) r8\slurDown
  d,,8( a'8 d8 e8 fis8 g8 a4) d,,8( bes'8 d8 e8 g8 a8 bes4)
  d,,8( a'8 d8 e8 fis8 g8 a4) d,,8( bes'8 d8 g8 bes8 c8 d4)

  d,,8( a'8 d8 e8 fis8 g8 a4) d,8( a'8 d8 e8 \changeRight fis8^\markup\italic{rit.} g8 a4) \changeLeft
  g,1~ g \ottava #-1 <d, d,>\fermata

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
  \midi { }
}
