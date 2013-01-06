
\version "2.16.0"
% automatically converted by musicxml2ly from Leia s Theme.xml

\header {
  title = "Leia's Theme"
  composer = "Music by John Williams"
  tagline = ##f
  copyright = ##f
}

PartPOneVoiceOne = \relative d'' {
  \clef "treble" \key d \major \numericTimeSignature\time 4/4
  \partial 8 d8 -\markup{
    \italic {
      With a gentle flow and a straight
      eight feeling
    }
  } cis8 d8 b8 cis8 bes8 c8 a8 d8
  cis8 d8 b8 cis8 bes8 c8 a8 g'8 fis8 g8 e8 fis8 es8 f8
  d8 g8 fis8 g8 es8 fis8 d4. a8
  \repeat volta 2 {
    a8 fis'8 fis2 ~ fis8 fis8 g8 g16 fis16 e2 ~ e8 a,8
    a8 fis'8 fis2 ~ fis8 a8 bes8 bes16 a16 g2 ~ g8
    a,8
    bes8 bes'8 bes2 ~ bes8 bes8 cis8 b16 bes16 gis2 ~
    gis8 gis8 ces8 bes16 as16 ges4 ~ ges8 f16 ges16 as8
    ges16 as16
    bes2 f4. f8
  }
  \alternative {
    {
      bes8 a16 g16 f4 ~ f8 e16 f16 g8 f16 g16 a2 e4 r8
      e,8 \bar "||"

      e4 -\markup{ \bold { Freely} } e4 e4 e4
      dis2 ~ dis4 b'4 d4 d4 d4 d4
      cis2. r8 a8
    }
    { f'8 e'16 d16 c4 ~ c8 bes16 c16 d8 e16 f16 }
  } e,1
  a,,8 fis'8 fis2 ~ fis8 fis8 g8 g16 fis16 e2 ~ e8 a,8
  a8 fis'8 fis2 ~ fis8 fis8 g8 bes16 a16 g2.
  fis8 fis16 e16 d2. a'8 fis'16 e16 d2 r8 a8
  \times 2/3 { bes8 a8 g8 }
  \times 2/3 { c8 bes8 a8 }
  \times 2/3 { d8 c8 bes8 }
  \times 2/3 { e8 d8 c8 }
  \times 2/3 { f8 e8 d8 }
  \times 2/3 { bes'8 a8 g8 }
  \times 2/3 { e'8 cis8 d8 }
  \ottava #1 \times 2/3 { bes'8 a8 g8 }
  \ottava #0 \acciaccatura { d8 } d'1 \bar "|."
}

PartPOneVoiceThree = \relative a, {
  \showStaffSwitch
  \repeat volta 2 {
    \clef "bass" \key d \major \numericTimeSignature\time 4/4
    r8 a1 ~ a1 a'1 ~ a1
    \repeat volta 2 {
      d,8[ a'8 d8] \change Staff="1" e8 fis4 a4 \change Staff="2" d,,8 g8 bes8 d8 \change Staff="1" g4 bes4
      \change Staff="2" d,,8[ a'8 d8] \change Staff="1" e8
      fis4 a4 \change Staff="2" d,,8 g8 bes8 d8 \change Staff="1" g4 bes4
      \change Staff="2" es,,8[ bes'8] \change Staff="1" es8 f8 g4
      bes4 \change Staff="2" e,,8[ b'8] \change Staff="1" e8 fis8
      gis4 b4 \change Staff="2" bes,8[ es8] \change Staff="1"
      \stemDown ges8 bes8 ges8 es8 \stemNeutral \change Staff="2" bes8[ es,8]

      bes8 f'8 bes8 d8 \change Staff="1" f8 d8 bes8 r8
    }
    \alternative {
      {
        \change Staff="2" g,8 d'8 g8 bes8 \change Staff="1"
        d8 g8 bes8 d,8 s1 \bar "||"
        \change Staff="2" a,8 e'8 a8 cis8 \change Staff="1"
        e8 a8 cis8 e,8
        \change Staff="2"
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

      }
    } e1
    \clef "bass"
  }
  \alternative { { }
  } g,,8 d'8 g8 bes8 \change Staff="1" d8 g8 bes8 d,8
  \change Staff="2" a,8 e'8 a8 d8 e4. r8
  d,,8 a'8 d8 e8 fis8 g8 a4 d,,8 bes'8 d8 e8 g8 a8 bes4
  d,,8 a'8 d8 e8 fis8 g8 a4 d,,8 bes'8 d8 g8 bes8 c8 d4

  d,,8 a'8 d8 e8 fis8 g8 a4 d,8 a'8 d8 e8 \change Staff="1" fis8 g8 a4
  \change Staff="2" <g, g>1 ~ s1 \bar "|."
  \ottava #-1 \ottava #0 d,,1
}

PartPOneVoiceTwo = \relative fis' {
  \clef "treble" \key d \major \numericTimeSignature\time 4/4
  s8 s1*4
  s1*4
  s1*3
  s1
  s1*2 \bar "||"

  \times 2/3 { fis8 g8 a8 }
  \times 2/3 { fis8 g8 a8 }
  \times 2/3 { fis8 g8 a8 }
  \times 2/3 { fis8 g8 a8 }

  r8 fis'8 b8 dis8 ~ dis4 b,4 \fermata
  \times 2/3 { e8 f8 g8 }
  \times 2/3 { e8 f8 g8 }
  \times 2/3 { e8 f8 g8 }
  \times 2/3 { e8 f8 g8 }

  s2. s4
  s1 b2 cis4. a,,8
  s1*4
  s1*2
  s4*7
}

PartPOneVoiceNone = \relative b' {
  \clef "treble" \key d \major \numericTimeSignature\time 4/4
  s1*5
  s1*4
  s1*3
  s1
  s1*2

  s1
  b2 fis4 s4*5
  a'2. s4
  s4
  <bes d f>8 s8*7
  <a e'>1
  s8*17 a,8 a2 ~ a8 a8 bes8 s8*7
  s1 fis'8 s8*7
  s4*7
  d,,,1
}

PartPOneVoiceFour = \relative a {

  s1*5
  s1*4
  s1*3
  s1
  s1*2

  s1*2
  s1
  s2.
  a8 cis8 e8 a2

  s4. s1
  s1*4
  s1*2
  s1*3
}


% The score definition
\score { <<
  % \new StaffGroup <<
  \new PianoStaff <<
    \set PianoStaff.instrumentName = "Piano"
    \context Staff = "1" <<
      \partcombine \PartPOneVoiceOne \PartPOneVoiceTwo \PartPOneVoiceNone
      %      \context Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
%      \context Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
%      \context Voice = "PartPOneVoiceNone" { \voiceThree \PartPOneVoiceNone }
    >> \context Staff = "2" <<
      \context Voice = "PartPOneVoiceThree" { \voiceOne \PartPOneVoiceThree }
      \context Voice = "PartPOneVoiceFour" { \voiceTwo \PartPOneVoiceFour }
    >>
  >>

  %>>

         >>
         \layout { }
         % To create MIDI output, uncomment the following line:
         % \midi { }
}

