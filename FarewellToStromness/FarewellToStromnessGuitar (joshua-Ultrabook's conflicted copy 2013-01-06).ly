\version "2.16.0"

\header {
  title = "Farewell to Stromness"
  composer = "Peter Maxwell Davies"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  
}


lower = \relative c, {
  \voiceTwo
  d4 fis g a d, fis g a d, fis g a d, fis g a d, fis g a fis d g d 
  \repeat volta 2 { <g d' g> <fis'\5 d'> <d g,> <e a,\6> <g, d' g> <fis'\5 a\4> <d g,> <e\5 a,> }
  \scaleDurations 2/3 {
    <d, a' d>4 d'8 fis4\5 d8 g,4 d'8 a4  
    \once \override Staff.NoteHead #'style = #'harmonic-mixed
    <a'\4 e\5>8^\markup { \italic { \fontsize #-2 { "harm. 7" }}}
    <d,, a' d>4 d'8 fis4\5 d8 g4 d8 a4  
    \once \override Staff.NoteHead #'style = #'harmonic-mixed e'8\5
    <d, a' d>4 d'8 fis4\5 d8
    g4 \once \override Staff.NoteHead #'style = #'harmonic-mixed d8\6 a4
    \once \override Staff.NoteHead #'style = #'harmonic-mixed e'8\5
    fis,4 d'8 d,4 d'8 g,4 d'8 <a d,>4 d8 << { g,2*3/2 <a d,>2*3/2 } \\ { r8 r d8 ~ d4 d8 r r d~ d4  d8 } >>
  }
  
}

middle = \relative c {
  \voiceThree
  s1 s4 d~ d e a, d~ d e a, d~ d e a, d~ d e d d~ d d \repeat volta 2 { s1 s1 }
  d'4\3 <a' cis> s4 <cis,\3 a'> d\3 a'\2 s <a cis,\3> d,4\3 <a' cis>
  \scaleDurations 2/3 { b,16
  \once \override Staff.NoteHead #'style = #'harmonic-mixed
  d16~\4
  \once \override Staff.NoteHead #'style = #'harmonic-mixed
  d4 
  d8\4 cis8.\4 s16
  \stemDown a16 g~ g4 s4. \stemNeutral b16 d~ d4 s4. b16 d~ d4 ~ d4*3/2 s2
  }
}

upper = \relative c' {
  \voiceOne
  R1 R1 \bar "||"
  \times 2/3 { fis16( g~ g4} \times 2/3 { a4 d,8 } \times 2/3 { b16 d~ d4 } \times 2/3 { cis4 a8) }
  \scaleDurations 2/3 {
    fis'16^\markup{\small\italic{sim.}}( g~ g4 a4 d,8 b16 d~ d4 cis4) r8
    fis16( g~ g4 a4 d,8 b16 d~ d4 cis4 a8)
    a'16( g~ g4 fis4 d8 b16 d~ d4 d) r8
    \repeat volta 2 {
      b'16(^\markup{\small\italic {dim. 2nd time} } cis~ cis4 d4 d,8\3 e16 d~\3 d4 cis4\3 a8\4)
      b'16( cis~ cis4 d4 d,8\3 b16 d~\3 d4 e) r8
    }
      << {fis16\2 g~\2 g4 } \\ {d'4*3/2 } >> s4. << {b,16 d~\3 d4 } \\ { b'4*3/2 } >>  s4. << {fis16\2 g\2~ g4 } \\ { d'4*3/2 } >> e16 d8. cis8 <cis b,>16 \once \override Staff.NoteHead #'style = #'harmonic-mixed <b\2 d,\4>^\markup{\italic\small{harm. 12} }~ \once \override Staff.NoteHead #'style = #'harmonic-mixed <b d,\3>4 s4 r8
      << {fis16\2 g~\2 g4 } \\ {d'4*3/2 } >> \acciaccatura d s4.
      cis16 
      \once \override Staff.NoteHead #'style = #'harmonic-mixed
    b8.\2\5^\markup { \italic { \fontsize #-2 { "harm. 12" }}}
    \once \override Staff.NoteHead #'style = #'harmonic-mixed
    g8\3^\markup { \italic { \fontsize #-2 { "harm. 12" }}}    
    a4\2 \once \override Staff.NoteHead #'style = #'harmonic-mixed a,8\4^\markup { \italic { \fontsize #-2 { "harm. 7" }}}  
    \acciaccatura e' d4*3/2( \acciaccatura{ b16[ cis]} <b fis>16 a~ a4   g'4 e8 <fis d>4) r8
    
  }
<< {g4 e} {b2}>> <fis' d a>2
}

\score {
  <<
    \new StaffGroup = "tab with traditional" <<
      \new Staff = "guitar traditional" \with { printPartCombineTexts = ##f }       
      <<
        \clef "treble_8"
        \key b \minor
        \time 2/4
        \tempo "At a slow walking pace" 4=60
        \mergeDifferentlyDottedOn \mergeDifferentlyHeadedOn
        \context Voice = "upper" \upper
        \context Voice = "middle" \middle
        \context Voice = "lower" \lower       
      >>
      \new TabStaff = "guitar tab" \with { stringTunings = #guitar-drop-d-tuning }<<
        \context TabVoice = "upper" \upper
        \context TabVoice = "middle" \middle
        \context TabVoice = "lower" \lower
      >>
    >>
  >>
  \layout {
    ragged-right = ##f
    ragged-last = ##f
    ragged-bottom = ##f
    ragged-last-bottom = ##f
    \context {
      \Voice
      \remove New_fingering_engraver
    }
  }
}

\score {
  <<
    \new StaffGroup = "tab with traditional" <<
      \new Staff = "guitar traditional" <<
        \clef "treble_8"
        \key b \minor
        \time 4/4
        \tempo "At a slow walking pace" 4=60
        \unfoldRepeats
        \context Voice = "upper" \upper
        \context Voice = "middle" \middle
        \context Voice = "lower" \lower
      >>
    >>
  >>
  \midi { } 
}



