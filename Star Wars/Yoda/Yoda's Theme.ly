\version "2.16.0"

\paper {  
  ragged-bottom=##f
  ragged-last-bottom=##f
}

upper = \relative c' {
  \key c \major
  \time 4/4
  \clef treble
  \override DynamicTextSpanner #'dash-period = #-1.0
  \override TextSpanner #'(bound-details left text) = "rit."
  \tempo "Moderately" 4 = 100
  \partial 4 g'4\mp \bar "||" <g e c>-\markup{\italic legato} <e c> <c g e> <c e a>
  << {fis1}\\{<c d>4 <c d>4 <c d>4 <c d>4} >>
   <g' e c> <e c> <c g e> <<{b'8. a16}\\{<c, e>4}>>
  << {a'1}\\{<fis d>4 <fis d>4 <fis d>4 <fis d>4} >>
  <g e c> <e c> <c g e> <e g b> <d f a> <f d a> <d a f> <<{f'4 e1~ e2 r8 a, \times 2/3 {gis a b}}\\{<g des'>8 c <g b>4 <g b>4 <g b>4 <g b>4 <g b>2 r2}>>
  <c a e>2 <e, c>4 <a e c> <<{<fis a,>1}\\{e2 dis}>> <e g b>4 <g e b> <e b g> <g b d> \transpose fis, cis' {<<{<fis a,>1}\\{e2 dis}>>} \transpose e b' {<e g b,>4 <g, e b,> <e, b, g,> <g b d>} <e' c a> <c a e> <a e c>4. g'8 <<{<fis~ a,>1  <fis d c a>8}\\{e2 dis s8}>> r8 gis,( a b c d e)\bar "||"
  <f a,>16. <f a,>32 <f a,>8~ <f a,>4~ <f a,>8 <e g,> <c e,> <e g,> <f a,>16. <f a,>32 <f a,>8~ <f a,>8 <e g,>8 <c e,>16. <c e,>32 <c e,>8~ <c e,>4 
  <f a,>16. <f a,>32 <f a,>8~ <f a,>4~ <f a,>8 <e g,> <c e,> <e g,> <f a,>16. <f a,>32 <f a,>8~ <f a,>8 <e g,>8 <c e,>16. <c e,>32 <c e,>8~ <c e,>4 
  <b e g>16. <b e g>32 <b e g>8~ <b e g>4~ <b e g>8 <<{fis' d fis}\\{b,4.}>>  <b e g>16. <b e g>32 <b e g>8~ <b e g>8 fis' <d b fis>16. <d b fis>32 <d b fis>8~ <d b fis>4
  \transpose g, a' {<b, e g>16. <b, e g>32 <b, e g>8~ <b, e g>4~ <b, e g>8} <c' aes e>( <a f c> <f des aes> <d bes f>8. e32 d <b g d>2) g4 \bar "||" 
  <g e c>2-\markup{\italic "a tempo"} <c, g e>4 <a' e c> <<{fis1}\\{<d c a>2 <d c a>}>> <g e c>4 <e c g> <c g e> <<{b'8. a16}\\{<e c>4}>> <<{a1}\\{<d, fis>2 <d fis>}>>
  <a' f c>4 <f c a> <d a f> <f a c> <b f des> <g des b> <f des b> <g b des f> <<{e'1~ e1\mp}\\{<d b g>2 <d b g> <c f,>1}>> <c g e>2\p <c, g e>4 <a' e c> <<{<fis d c>1}\\{aes,2 a}>>
  <b' g e>4 <g e b> <e b g> <g b e> <d' bes f>1 <d bes f>4 <bes f d> <g d bes> <bes d g> <<{ges' f s4\> s4 <e g c>1~\!\p <e g c>\fermata}\\{<aes, c>2 <f aes c>4 <f' aes c> r2 c,8( e g c e g c e c'2\fermata)}>> \bar "|."
}

lower = \relative c {
  \clef bass
  \key c \major
  \override TextSpanner #'(bound-details left text) = "rit."
  \partial 4 r4 c,1 c c c c c2. g'4 c1~ c2 r2
  r4 a8-. e-. a,4-. a'-. \transpose a b, {r4 a8-. e-. a,4-. a-.} r4 b-. r e,-. \transpose a fis, {r4 a8-. e-. a,4-. a-.} b b'2 b,4 a4 a' a, a' r8 fis-. b4-. r8 fis-. b,-. bes-. a r8 r4 r2
  r4 f''8-. a,-. c-. c,-. g'-. g,-. r4 c''8-. c,-. r4 c8-. c,-. r4 f'8-. a,-. c-. c,-. g'-. g,-. r4 g'8-. c,-. r4 c''8-. c,-. r4 g'8-. g,-. b-. d,-. fis-. b,-. r4 b'8-. d,-. r4 fis8-. b,-. r4  f'8-. c-. f4-. r4 r2 g2
  c,1 c c c d g c,2. c4 aes1 c'2 c c c b b bes <bes bes,>4\startTextSpan <a a,> <g g,>1\stopTextSpan\mp <g g,>1 <c c,>1~ <c c,>\fermata
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
    \set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \deleteDynamics \lower 
  >>
  \layout { }
  \midi { }
}


\header {
  title = "Yoda's Theme"
  copyright = ##f
  composer = "John Williams"
  tagline = ##f
}