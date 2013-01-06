\version "2.16.0"

\header {
  title = "Hill Street Blues"
  composer = "Mike Post"
  % Remove default LilyPond tagline
  tagline = ##f
}

codaSetup = {
  s64
  \cadenzaOn 
  \stopStaff 
  
  s64 \bar ""
  
  \startStaff
  \cadenzaOff
  
  \break 
  \once \override Staff.KeySignature #'break-visibility = #end-of-line-invisible
  \once \override Staff.Clef #'break-visibility = #end-of-line-invisible
  
}

global = {
  \key es \major
  \time 4/4
  \tempo "Slowly, Freely" 4=70
}

right = \relative c'' {
  \global
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'font-size = #-4
  \override Score.RehearsalMark #'self-alignment-X = #RIGHT
  <ees bes g>4\mf <d bes f>8 <ees bes g>~ <ees bes g>2
  <ees bes g>4 <d bes f>8 <ees bes g>~ <ees bes g>2
  <ees bes g>4 <d bes f>8 <ees bes g>~ <ees bes g>8 <<{d c d}\\{f,4.}>> \bar "||" \tempo "In Tempo" 4=100
  <ees c g>8. <d bes f>16~ <d bes f>8 <c aes ees>~ <c aes ees>2
  <c ees g>8. <f d bes>16~ <f d bes>8 <ees c aes>~ <ees c aes>2
  <ees g c>8. <d f bes>16~ <d f bes>8 <c ees aes>8~ <c ees aes>4 <ees c aes> \bar "||"
    \mark \markup { \musicglyph #"scripts.segno" }
  <ees' bes g>8. <d bes f>16~ <d bes f>8 <ees bes g>~ <ees bes g>2
  <ees bes g>8.<d bes f>16~ <d bes f>8 <ees bes g>~ <ees bes g>2
  <ees bes g>8. <d bes f>16~ <d bes f>8 <ees bes g>~ <ees bes g> <<{d c d}\\{f,4.}>>
  <ees' bes g>8.<d bes f>16~ <d bes f>8 <ees bes g>~ <ees bes g>2
  <g ees c aes>4 f8 <<{ees~ ees d c d}\\{<c aes>~ <c aes>4 aes}>>
  <ees' bes g>8.<d bes f>16~ <d bes f>8 <ees bes g>~ <ees bes g>2 \bar "||"\mark\markup\italic\right-column{\line{\normalsize "To Coda I  "\general-align #Y #-0.75 \musicglyph #"scripts.coda"}\line {\normalsize "To Coda II  "\general-align #Y #-0.75 \musicglyph #"scripts.coda"\general-align #Y #-0.75 \musicglyph #"scripts.coda"}}
  <c a f>4 d8 <ees c f,>~ <ees c f,> c d ees <g ees bes>4 <<{f8 <g ees>~ <g ees> f ees f}\\{s8 b,8~ b2}>> <e g c>4 b8 <a e cis>~ <a e cis> cis cis16 e g8 <a fis>8. <g e>16~ <g e>8 <fis d>~ <fis d>2
  <d, bes g>8. <ees c g>16~ <ees c g>8 <f d g,>~ <f d g,>2 <ees c aes>8. <g ees aes,>16~ <g ees aes,>8 <f d aes>~ <f d aes>2 \bar "||"\mark\markup\right-column{\normalsize\italic"D.S. al Coda I"\musicglyph #"scripts.segno"}
  <ees c aes>8. <g ees aes,>16~ <g ees aes,>8 <f d aes>~ <f d aes>2 \bar "||"\mark\markup\right-column{\normalsize\italic"D.S. al Coda II"\musicglyph #"scripts.segno"}
  \codaSetup
  \once \override Score.RehearsalMark #'break-visibility = #end-of-line-invisible
  \mark \markup \center-column \normalsize { \italic"Coda I"\musicglyph #"scripts.coda" }
  <ees c g>8. <d bes f>16~ <d bes f>8 <c aes ees>~ <c aes ees>2
  <c ees g>8. <f d bes>16~ <f d bes>8 <ees c aes>~ <ees c aes>2
  <ees g c>8. <d f bes>16~ <d f bes>8 <c ees aes>8~ <c ees aes>4 <<{c8 ees}\\{aes,4}>> <ees' bes g>8. <d bes f>16~ <d bes f>8 <ees bes g>~ <ees bes g>4 <d bes f>
  \repeat volta 2 {
    f,8-\markup\italic{(Instr. solo ad lib)}\mp bes d <ees c g>~ <ees c g>2 <d bes f>4. <ees c g>8~ <ees c g>2
    f,8 bes d <ees c g>~ <ees c g>2 <f d a>4. <ees c g>8~ <ees c g>2
  }
  \repeat volta 2 {
      r4 <d bes> <c a>8. <bes d>16~ <bes d>4 <c a>4. <bes d>8~ <bes d>2
  }
}

left = \relative c' {
  \global
  <bes ees,>1 <ees aes,> bes
  aes,8. g16~ g8 f8~ f2
  aes8. g16~ g8 f8~ f2
  aes8. g16~ g8 f8~ f4 bes
  <ees ees,>2. ees,4 
  aes2~ aes8 aes4 aes8
  bes4. bes,8~ bes2
  ees1 aes2. bes4
  <ees ees,>2. ees8 ees,
  a4. a8~ a2 bes4. b8~ b2 c4. cis8~ cis2 d2. d8 d, g2~ g8 g g, g' bes2. bes4 bes2 bes,4 bes'
  \codaSetup
  aes8. g16~ g8 f8~ f2
  aes8. g16~ g8 f8~ f2
  aes8. g16~ g8 f8~ f4 bes
  <bes ees,>2. d,4-> \repeat unfold 4 <c g'>1 <g' d'> <g f'>
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
