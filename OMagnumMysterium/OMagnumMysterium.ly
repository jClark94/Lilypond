\version "3.16.0"

\header {
  title = "O Magnum Mysterium"
  instrument = "Piano"
  composer = "Morten Lauridsen"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper{ 
   ragged-bottom = ##f
   ragged-right = ##f
   ragged-last-bottom = ##f
}

global = {
  \key d \major
  \time 4/4
  \tempo "Adagio, molto legato e espressivo" 4=72
}

soprano = \relative c'' {
  \voiceOne
  \stemUp
 a1 a2 a4 a a( b g a~) a a a2^\markup{\italic\small{rit.}}^\fermata s4^\markup{\italic\small{a tempo}} d( g e) a,2 a4 s4 <d d,>1 e,4 <a d> <a d>2 s2. b4 cis d d( a) d, \breathe d' e fis \time 4/4 g2.( fis4 e g a,) cis cis( d d,)
 \breathe g g( fis d g~ g fis d) a' a e s\fermata \breathe d s g e s e2 e\fermata
 a1 a2 a4 a a( b g a~) a a a2^\markup{\italic\small{rit.}}^\fermata s4^\markup{\italic\small{a tempo}} d( g e) a,2 a4 s4 <d d,>1 e,4 <a d> <a d>2 s2. b4 cis d d( a) s \breathe d e fis \time 4/4 g2.( fis4 e g a,) cis cis( d s)
 \breathe g, g( fis d g~ g fis d) a' a s s\fermata \breathe s2 g4 e s e2 e\fermata e4 a^\markup{\italic\small{rit.}} a a \time 3/2 \bar "||"
 a2.( b4 g a~) a2 a2 a4 a b b b2 fis4 g a2 a4 a a a a2.( b4 g a~) a2 a4 a a a d d d1 d4( e) e2 \breathe << {a,4-- d-- } \\ { a2 } >>  
}

contralto = \relative c' {
  \voiceTwo
  s4 d  g e a,2 a4 e' g1( d4) e e( d)\fermata <g d>1 <e d'>4 <d e'> <cis a'> <d e a> a' (d g, a~) a d,4 e fis
  \time 3/2 a4 e fis a2 a4 <g a>2 d4 a' a a g_\markup{\small{l.h.}} fis e g a2. s4_\markup{\small{r.h.}} <a e>2( d,4) d d1~ d2. d4
  e4 s d\fermata cis( d2.) d4 <d a'>2 <d a'>\fermata \bar "||" \break
  \tempo "Poco più mosso" 4=76 s4 d  g e a,2 a4 e' g1( d4) e e( d)\fermata <d' g, d>1 <e, d'>4 <d e'> cis <d e> s (d' g, a~) a d,4 e fis
  \time 3/2 a4 e fis a2 a4 <g a>2 d4 a' a a g_\markup{\small{l.h.}} fis e g a2. s4_\markup{\small{r.h.}} <a e>2( d,4) d d1~ d2. d4
  e4 e d\fermata cis( d2.) d4 <d a'>2 <d a'>~ d1\fermata
  e2( d2. s4 gis2) fis <cis fis>4 <cis fis> <d fis> <d fis> <d fis>2 <d fis>4 <d fis> e2 e1 e2( d2. a'4 gis2) \repeat unfold 5 <fis cis'>4 fis fis d fis << { g2 } \\ {g4 d'} >> <d a>2 a( <g e>)
}

dynamics = {
  s1\pp s1 s1 s1 s1\pp s1 s1 s4\p s2. s2.\p s2.\< s2.\!\mp s1 s1 s1 s1 s2. s4\p s1 s1 s1\p s1
  s1\pp s1 s1 s1 s1\pp s1 s1 s4\p s2. s2.\p s2.\< s2.\!\mp s1 s1 s1 s1 s2. s4\p s1 s1 s1 s1 s4\> s2.\!
  s1.\pp
}

right = {
  \global
  << \soprano \contralto >>
}

left = \relative c {
  \global
  fis1 cis2 cis4 cis b1( a4) a a2\fermata\breathe b'1 a2 <a d>4 <a cis> <g b>1( <fis a>4) <fis a> <fis a>2
  << { a2. } \\ { cis,2( d4) } >> g2 g4 fis2 a4 d d d b1( cis2.) cis4 fis,2. fis4 g2. b,4 a2. b4 cis cis b\fermata b~ b2. b4  cis2 cis\fermata
  fis1 cis2 cis4 cis b1( a4) a a2\fermata\breathe b'1 a2 <a d>4 <a cis> <g b>1( <fis a>4) <fis a> <fis a>2
  << { a2. } \\ { cis,2( d4) } >> g4 g g fis2 a4 d d d b1( cis2.) cis4 fis,2. fis4 g2. b,4 a2. b4 a a b\fermata b~ b b b b cis2 cis~ cis1
  fis2 g1 fis2 fis fis4 fis b,4 b b2 b4 b cis2 cis1 \breathe fis2 g1 fis2 fis4 \breathe fis fis fis <fis b,> <fis b,> <fis b,>1 <e a,>2 <e a,> \breathe <e a,>4-- <e a,>--
}

\score {
  \new PianoStaff \with {
    printPartCombineTexts = ##f
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \right \dynamics >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass << \left >> }
  >>
  \layout { 
        % define Dynamics context
    \context {
      \type "Engraver_group"
      \name Dynamics
      \alias Voice
      \consists "Output_property_engraver"
      \consists "Piano_pedal_engraver"
      \consists "Script_engraver"
      \consists "New_dynamic_engraver"
      \consists "Dynamic_align_engraver"
      \consists "Text_engraver"
      \consists "Skip_event_swallow_translator"
      \consists "Axis_group_engraver"

      pedalSustainStrings = #'("Ped." "*Ped." "*")
      pedalUnaCordaStrings = #'("una corda" "" "tre corde")
      \override DynamicLineSpanner #'Y-offset = #0
      \override TextScript #'font-size = #2
      \override TextScript #'font-shape = #'italic
      \override VerticalAxisGroup #'minimum-Y-extent = #'(-1 . 1)
    }
    % modify PianoStaff context to accept Dynamics context
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
  \midi { }
}
