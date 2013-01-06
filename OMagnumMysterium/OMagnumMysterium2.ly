\version "2.14.2"

\paper {
  ragged-last-bottom = ##f
  ragged-right = ##f
  ragged-bottom = ##f
}

\header {
  title = "O Magnum Mysterium"
  composer = "Morten Lauridsen"
  tagline = ##f
}

global = {
   \key d \major
   \time 4/4
   \tempo "adagio, molto legato e espressivo" 4=72
}

soprano = \relative c'' {  a1 a2 a4 a a( b g a~) a a a2\fermata \breathe
  d1 d4( e) a, a a( d g, a~) a d, d2 \time 3/2
  r2 r4 b'4( cis) d( a) d, \breathe d' e fis \time 4/4 g2.( fis4 e g a,) cis cis( d d,) \breathe g g( fis d g~ g fis d) a' a e d\fermata \breathe d~( d g e) d e2 e2\fermata \breathe \bar "||"
}

contralto = \relative c' {
  r4 d( g e) a,2 a4 e' g1( d4) e e( d\fermata) g1
}

tenor = \relative c'' {
  \oneVoice
  <d e>1 <e a,>2 <e a,>4 a, <d g,>1~ <d fis,>4 <d fis,> <d fis,>2\fermata r4 d( g e) a,2 a4 <a e'> <a d>1~ <a e'>4 <a d> <a d>2~ <a e'>2.
}

bass = \relative c {
  \voiceTwo
}

upper = {
  \clef treble
  %\partcombine {\partcombine \soprano \contralto} \tenor
  << \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  \shiftOn
  \soprano \\ \contralto \\ \tenor >>
}

lower = {
  \clef bass
  \bass
}

dynamics = {

}

pedal = { }

\score {
  \new PianoStaff = "PianoStaff_pf" <<
    \new Staff = "Staff_pfUpper" << \global \upper >>
    \new Dynamics = "Dynamics_pf" \dynamics
    \new Staff = "Staff_pfLower" << \global \lower >>
    \new Dynamics = "pedal" \pedal
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
}

