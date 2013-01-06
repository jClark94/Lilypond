\version "2.16.0"

\paper {
  ragged-bottom=##f
  ragged-last-bottom=##f
}

upper = \relative c' {
  \key ees \major
  \time 3/4
  \clef treble
  \override DynamicTextSpanner #'dash-period = #-1.0
  \tempo "Moderately Slow" 4 = 70
  <g' g'>2.\fermata \p <g g'>2.\fermata <g g'>2.\fermata <g g'>2.\fermata
  <<
    { ees'8 g~ g2 ees8 g~ g2 }
    \\
    { g,2. ~ g}
  >>
  g'2.~ g2 ees8 g <a a,>2.~ <a a,> <bes bes,>~ <bes bes,>2 f8 ees <f bes,>2.~ <f bes,>
  <<
    { bes,2.~ bes d, bes' bes~ bes bes~ bes d~d4 c c <c g>2.~ <c g>}
    \\
    { ees,8 g~ g2 ees8 g~ g4 f8 ees d f~ f2 d8 f~ f2 ees8 g~ g2 ees8 g4. f8 ees f f~ f2 d8 f~ f2 g4 b2 g2. c,4 ees2 c4 ees2}
  >>
  <c' c'>2.\fermata \time 4/4 \tempo "Slowly" 4 = 60
  <<
    { c'1 c,4. d8 ees d f4 <des des,>4. <ees ees,>8 \times 2/3 { <f des f,>4 <des aes des,> <c f, c>\fermata } }
    \\
    { c4. d8 ees d bes4 c,4 ees2. aes4 c }
  >>
  \bar "||" \key a \minor \tempo "Slightly faster" 4 = 80
  <<
    { <b b,>1 <g' b> <e b'> }
    \\
    { g,8 g a d, g g a d, b'4 a8 cis d cis a4 b a8 cis d cis <b e>4}
  >>
  <c e, c>4. <d fis, d>8 \times 2/3 {<e g, e>4 <c e, c> <b c, b> } <bes d, bes>2 <bes ges des bes> \bar "||" \key bes \major
  <bes, d f>4 \times 2/3 {<bes f'>8 d f } << {ges4. ges8 f4 \times 2/3 {f8 bes f} r <des bes'> <ges des'> <bes ges'>}\\ {<bes, des>8 bes des4 <bes d>2 <bes des ges>}>> <bes' d f>4 <d f bes> <ges des bes ges>2 <bes, d f>4 <d f bes> <des ges bes des>2 \bar "||" \key c\major
  <e e,>4.<fis fis,>8 <g g,> <fis fis,> <d d,>4 <e e,>4. <fis fis,>8 <g g,> <fis fis,> <a a,>4 \ottava #1 <f' c a f>4. <g f c g>8 \times 2/3 {<a f c a>4\fermata <f c a f>\fermata <e c a e>} \bar "||" \key ees \major <ees~ bes g ees>1 <ees ces ges ees> \ottava #0
  <<
    { bes,2~ \times 2/3 { bes4 g bes} ces2 ces4. ces 8 des1 r2 <f ces'> }
    \\
    { bes,,8 ees g4 s2 ces,8 ees ges4 s2 s1 <f aes>}
  >> \time 5/8 f2~ f8 \time 4/4 <bes, ees g bes>2 \times 2/3 {<bes ees g bes>4 <ees ees'> <bes bes'>} << {ces'2 \times 2/3 {<ces ges ces,>4 <ces, f> <ces ces'>~}\tempo "Twice as fast" 2=80 <ces ces'>2~ <ces ees ges ces>2:32~ <ces ees ges ces>}\\{<ces ees>4. <ces f>8 s2}>>  \time 4/4 \key ges \major \bar "||"
  ees8 ges r d ees16 f ges8 r4 ees'2 ees4 f4 ges4. f8~ f  <<{des4.~ des1~ des:32}\\{s4. ees,8 ges r d ees16 f ges8 r4 des1}>> <ees bes>2. <f bes>4 \times 2/3 { <ges ees>2 <f bes> <des ges,> } <aes ees'>2. <ces f>4 \times 2/3 {<ges' ees>2 <f ces> <aes aes,>} <fes ces aes>2. \times 2/3 {<ges ces, aes>8 <ges ces, aes> <ges ces, aes>} \times 2/3 {<aes ces, aes>2 <fes ces aes> <ees aes,>} <<{c'2 bes}\\{<f d bes>1}>> <aes f d aes>:32
  \bar "||" \key ees \major <bes g bes,>4. <bes g bes,>8 \times 2/3 {<bes g bes,>4 <g bes,> <bes g bes,>} <ces ees, ces>1~ <ces ees, ces> \clef bass << {bes,2 \times 2/3 {bes4 ees bes}}\\{<g ees>1}>> <ces ges ees>1\fermata \clef treble \bar "||" \key ges \major
  <ges ees'>2. f'4 ges f des2 <ees ces aes>2. f4 <<{ges f aes2}\\{ces,2 aes}>> <fes' ces aes>2. ges4
  \times 2/3 {<aes fes ces>2 <fes ces aes> <ees ces aes>} <d bes> \times 2/3{<f d'>8 d bes'} \times 2/3 {d, <bes' f'> f} \times 2/3 { <bes f'> f d'} \times 2/3 {f, <des' bes'> bes} \times 2/3 {<des bes'> bes f'} \times 2/3 {bes, <d d'>4}
  <<{<ges bes ees>2. <f bes,>4}\\{ees f ees f,}>> <ges ees' ges> <f f'> <des ges des'>2 <ees ges ces ees>2.
  <f f'>4 <ges ges'> <f f'> <<{ges' f}\\{<aes ees aes,>2}>>
  <fes ces fes,> <ges ges'>4 <ges, ges'> \times 2/3 {<aes' fes ces aes>2 <aes fes ces aes> <ces aes fes ces>}
  <<
    { <d, f bes>1~ <d f bes> }
    \\
    { \times 2/3 { bes2 aes f} \times 2/3 {f d bes} }
  >>
  <ges'' ees'>8 <ges ges'> r <ges d'> <ges ees'>16 <ges f'> <ges ges'>8 <ges ees'>8 <ges ges'> r<ges d'> <ges ees'>16 <ges f'> <ges ges'>8 r2 \bar "|."
}

lower = \relative c {
  \set Staff.pedalSustainStyle = #'mixed
  \clef bass
  \key ees \major
  r2.\p-\markup{\italic "Pedal ad lib. throughout"} r r r ees'2. ees << { ees8 g~ g2 ees8 g~ g2 ees8 f~ f2 ees8 f~ f2 r8 g~ g2 r8 g~ g2 r8 f~ f2 r8 f~ f2}\\{c2.~ c c~ c ees ees d d}>>
  <ees, ees,>4. <f f,>8~ <f f,>4 <g g,>2. <bes, bes,>4. <d d,>8~ <d d,>4 <f f,>2. <ees ees,>4. <f f,>8~ <f f,>4 <g g,>2. <bes, bes,>4. <d d,>8~ <d d,>4 <f f,>2. <g, g,>4. <a a,>8~ <a a,>4 <b b,>2. <c c,>2.~ <c c,> r2.\fermata
  <<
    { c'4\arpeggio ees d bes aes bes c aes}
    \\
    { <ees aes,>1\arpeggio <ees aes,>}
  >>
  <f aes, des,>1\arpeggio\fermata \key a \minor
  <g g,> <<
    { r8 g'4 d8 r g4 d8 r g4 d8 r e~ e4 }
    \\
    { g,4 a b2 e,4 fis g2 }
  >>
  c,,16 g' e' g, c, g' e' g, \times 2/3 {c,8 g' e' g, c,4} <bes f' d'>2 <ges' des' ges> \key bes \major
  bes,16 f' d' f, bes, f' d'8 <ges des ges,>2 bes,,16 f' d' f, bes, f' d'8 <ges des ges,>2 f'4 \times 2/3 {f8 d f} r aes ges16 des bes ges
  f4 \times 2/3 {f8 bes f} <des ges bes des>\sustainOn des4\acciaccatura { ges16[ bes des \change Staff = "upper" des ges bes des des ges bes des bes ges des des bes ges des]}\change Staff = "lower" des,8\sustainOff
  \key c \major <e g, c,>8 <e g, d> <e g, e>4 c,16 g' d' g, e'4 <b' a e a,>8 <b a e b> <b a e cis>4 <b a e a,>8 <b a e b> <b a e cis>4 <a c, f,>8\arpeggio <a c, g> <a c, a>4 \times 2/3 { <a c, f,>4\arpeggio\fermata <a c, g>\fermata <a c, a> } \key ees \major <g bes, es,>\arpeggio <g bes, f> <g bes, g> <g ees bes> <ees' ges, ces,>1\arpeggio
  \ottava #-1 <ees,, ees,>4 <f f,> <g g,> <bes bes,> \ottava #0 <ces ces,>1 r1 << {f1}\\{ces2 des}>> \time 5/8 << {f2~ f8}\\{bes,4 c f,8} >> \time 4/4
  \ottava #-1 <ees ees,>4 <f f,> <g g,> <bes bes,> \ottava #0 <ces ces,>8. <ces ces,>16 <ces ces,>4 <ces ces,>2~ \time 3/2 <ces ces,>2~ <ces ces,>2~:32 <ces ces,>4 <ees ees,>8 <ees ees,> \key ges \major
  <ees ees,>4 r <ees ees,>4 r <ees ees,>4 r <ees ees,>4 r <ees ees,>4 r <ees ees,>4 r <ees ees,>4 r <ees ees,>4 r <ees ees,>1:32 \ottava #-1 <ees, ees,>2 <f f,> <ges ges,>1 <aes aes,>2 <bes bes,>  \ottava #0 <ces ces,>1 <ces ces,>2. \times 2/3 {<ces ces,>8 <ces ces,> <ces ces,>} \times 2/3 {<ces ces,>2<ces ces,><aes aes,>} <bes bes,>1~ <bes bes,>:32 \key ees \major
  ees4 r8 g ees f g bes ces,4 r <ees ces'> r <ees ces'> r r2 ees,4 f g bes ces1\fermata \key ges \major
  ees,4 f ges bes ges'2 <f bes,> ees,4 f8 ges aes2 <aes ges'> <ces ees> fes,4 ges <ces fes>2 \times 2/3 {<ces fes> <fes aes,> <fes ges,>} <f f,> <d d,> <bes bes,> \ottava #-1 <f f,> <ees ees,>4 <aes aes,> <ges ges,>2 <f f,> \ottava #0 <des' des,> <ces ces,> <des des,> <ees ees,> <ces ces,> <ces ces,> <fes fes,> \times 2/3 {<ges ges,> <aes aes,> <ces ces,>} \times 2/3 {<f, f,> d bes} \ottava #-1 \times 2/3 {<bes bes,> <aes aes,> <f f,>} <ees ees,>8 <ees ees,> r <ees ees,>8 <ees ees,> r <ees ees,>8 <ees ees,> r <ees ees,>8 <ees ees,> r r2
}

deleteDynamics = #(define-music-function (parser location music) (ly:music?)
                    (music-filter
                     (lambda (evt)
                       (not (memq (ly:music-property evt 'name) (list
                                                                 'AbsoluteDynamicEvent
                                                                 'CrescendoEvent
                                                                 'DecrescendoEvent))))
                     music))


\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}


\header {
  title = "That New Car Smell"
  copyright = ##f
  composer = "Michael Giacchino"
  tagline = ##f
}