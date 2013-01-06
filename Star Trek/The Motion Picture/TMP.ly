\version "2.16.0"

bounce = {
  \relative c,{
    \times 2/3 { c4 c8 } \times 2/3 {c'4 c8} 
}}

\paper {
  ragged-last = ##f
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  ragged-right = ##f
}

\header {
  title = "The Motion Picture"
  subtitle = "Star Trek"
  composer = "Jerry Goldsmith"
  % Remove default LilyPond tagline
  tagline = ##f
  copyright = ##f
}

global = {
  \key c \major
  \time 4/4
  \tempo "Slowly"
}

right = \relative c' {
  \global
  c4\p d e fis gis ais c d e\< fis gis ais\! \tempo "Power Rock Shuffle" 4 = 100 <c g c,>1~\f  <c g c,>
  \repeat volta 2 {
    <c,, e g>2~\segno \times 2/3 {<c e g>4 c' e} | <f, bes d>2~ \times 2/3 {<f bes d>4 f' a} 
    <<
      { <c, e g>1 }
      \\
      { r4 \times 2/3 {a4 g8~} g4 \times 2/3 {a4 g8} }
    >>
    \times 2/3 {r4 bes f'} \times 2/3 {g a f} <c e g>2 <a c f> <g c e> \times 2/3{<a c e>4 <a c> <a c e>}
    <<
      { <g b d>1~ <g b d> }
      \\
      { r2 \times 2/3 {cis,4 d8~} d4 \times 2/3 {cis4 d8~} d2. }
    >>
  }
  <e gis b>1 <cis e gis>2~ \times 2/3 {<cis e gis>4 e cis'} <e, gis b>1 <cis e gis> <e gis b>2 <e gis cis> <fis a d> <fis a cis>
  \times 2/3 {<e gis b>4 e b'} <d, fis a>2 \times 2/3 {r4 a-> d->} \times 2/3 { e-> fis-> gis-> } <a f! c>1
  <g ees bes> \times 2/3 {<a f c>4 f a} <g ees bes>2~ <g ees bes>1 <a f c> <b g d> <c aes ees> <bes d f> \times 2/3 {bes4 a f} <g~ f~ c>2 <g f b,>1
  <c, e g>2~ \times 2/3 {<c e g>4 c' e} | <f, bes d>2~ \times 2/3 {<f bes d>4 f' a} 
  <<
    { <c, e g>1 }
    \\
    { r4 \times 2/3 {a4 g8~} g4 \times 2/3 {a4 g8} }
  >>
  \times 2/3 {r4 bes f'} \times 2/3 {g a f\coda} <c e g>2 <a c f> <g c e> \times 2/3{<a c e>4 <a c> <a c e>}
  <<
    { <g b d>1~ <g b d> }
    \\
    { r2 \times 2/3 {cis,4 d8~} d4~ d1 }
  >>
  <c g' c>4 r r2 r1 <c' g' c>1~ <c g' c> \bar "||"
  \cadenzaOn 
  \stopStaff 
  s32^\markup{\right-align \bold "D.S. al Coda    "}
  \bar ""
   
  \startStaff
  \cadenzaOff
  \break
  % Show up, you clef and key!
  \once \override Staff.KeySignature #'break-visibility = #end-of-line-invisible
  \once \override Staff.Clef #'break-visibility = #end-of-line-invisible
  
  % Set coda sign as rehearsal mark and adjust size and position
  
  % Put the coda sign ontop of the (treble-)clef dependend on coda's line-position
  
  % Coda NOT on new line, use this:
  % \once \override Score.RehearsalMark #'extra-offset = #'( -2 . 1.75 )
  
  % Coda on new line, use this:
  \once \override Score.RehearsalMark #'extra-offset = #'( -4.5 . 0 )
  
  %   \once \override Score.RehearsalMark #'font-size = #5
  \mark \markup \left-align \center-column{ \bold \small CODA \musicglyph #"scripts.coda" }
  
  % The coda
  <c e g>2 <d fis a> <ees g bes> <des f aes> <ees aes c>1 <c f bes c>4 r c,2\glissando \ottava #1  <c'' g' c>1\sfz\fermata \ottava #0 \bar "|."
}

left = \relative c' {
  \global
  r1 r r \repeat unfold 16 \bounce
  \transpose c g, {\repeat unfold 4 \bounce}
  \repeat unfold 2 {\transpose c e {\bounce \bounce}
                    \transpose c cis {\bounce \bounce} }
  \transpose c e {\repeat unfold 6 \bounce}
  \transpose c f {\repeat unfold 12 \bounce }
  \transpose c g {\repeat unfold 5 \bounce} g,4 g,
  \repeat unfold 16 \bounce
  \transpose c g, {\repeat unfold 2 \bounce}
  \times 2/3 {g4 <g g'> <gis gis'>} \times 2/3 {<a a'> <bes bes'> <b b'>} \repeat unfold 7 \bounce
  \relative c,{
    \times 2/3 { c4 c8 } \times 2/3 {c'4 c8} 
  }
  % The Coda
  \cadenzaOn 
  \stopStaff 
  s32
  \startStaff
  \cadenzaOff
  \repeat unfold 4 \bounce
  \transpose c ees {\bounce \bounce}
  <f' f'>4-> r4 r2 \ottava #-1 <c, g c,>1 \fermata \ottava #0
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
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}