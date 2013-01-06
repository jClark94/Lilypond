\version "2.16.0"

\paper { ragged-last-bottom = ##f }

\header {
  title = "Across the Stars"
  subtitle = "Star Wars"
  composer = "John Williams"
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key d \minor
  \time 4/4
  \tempo "Moderately slow and gently" 4=76
}

right = \relative c'' {
  \global
  r4\p a2( g4 a2 d,4 e) r4 a2( g4 a2 d,4)   <<{ <e a>4( \bar "||"  <a d f>2. d4 \time 3/4 \times 2/3 {g8 f e} <a, d f>4 d \times 2/3 {f8 e d} <a c e>4 c <d bes f>2 <c e,>4 <a f c>2)}\\{s4 s1 <d bes>4 s2 a4}>>
  <a e cis>4( <a d f>2 <f d'>4 <<{\times 2/3 {d'8 e f} g4 e}\\{<bes g>4 <bes d>2}>> <d f a>4 <g ees bes>2 <a f d>2)
  a4( <c g ees>4. bes8 a g \times 2/3 {<g d bes> a bes} <bes g d>4)
  <g bes,>( <ees g c>4. bes'8 a g <fis d a>8 a <fis a d>4)
  <d fis,>( <f c aes>4.\mp ees8 d c \times 2/3 {<c g ees> d ees} <ees g,>4)
  c( <f c aes>4. ees8 d c <b g d> d <b d g>2) \bar "||" \key ees \major
  \times 2/3 {c,8\p( ees g} \times 2/3 {c, ees g} \times 2/3 {c, ees g)}
  \times 2/3 {c,8( ees g} \times 2/3 {c, ees g} \times 2/3 {c, ees g)}
  \times 2/3 {c,8( ees g} \times 2/3 {c, ees g} \times 2/3 {c, ees g)}
  \times 2/3 {c,8( ees g} \times 2/3 {c, ees g)}
  <<{ <g d b>4(  \bar "||" <c ees>2 <c ees,>4 \times 2/3 {f8 ees d} <g, c ees>4 <g c> \times 2/3 {<ees' c>8 d c} <g bes d>4 <bes g d> <c aes ees>2 <bes g d>4 <g ees bes>2)}\\{s4 g \times 2/3 {c,8 ees g} s4 <aes c> s2 g4}>>
   
  <<{<g d b>4(  <c ees>2 c4 \times 2/3 {c8 d ees} f4 d g <f d bes>2 <g, c ees g>2)}\\{s4 g4 \times 2/3 {c,8 ees g,} ees'4 <ees aes> <aes c> <f aes> <g c ees> f \times 2/3 {d8 f bes,}}>> 
  <<{c'4( \bar "||" f4. ees8 d c \times 2/3 {c d ees} ees4)}\\{s4 <aes, c>4. s4. <ees g>4 <g c>}>>
  <<{c4( \bar "||" f4. ees8 d c b d g4)}\\{s4 <aes, c>4. s4. <g d>4 <b d>}>>
  <<{g( bes4. aes8 g f \times 2/3 {f g aes} aes4)}\\{s4 <f des>4. s4. <c aes>4 <c f>}>>
  <<{f4( bes4. aes8 g f e g c4)}\\{s4 <des, f>4. s8 ees des c s8 <e g>4}>> <c e c'>( \bar "||"\tempo"Appassionato"
  <aes' c f aes>2\f <f aes c f>4 \times 2/3 {<bes des bes'>8 <aes aes'> <g g'>} <aes c f aes>4 <f aes c f>
  \times 2/3 {<aes c aes'>8 <g g'> <f f'>} <g bes ees g>4 <ees g bes ees> <f aes des f>2)
  <ees g c ees>4( <c ees aes c>2 <c e g c>4 <aes' c f aes>2 <f aes c f>4 \times 2/3 {<f aes f'>8 <g g'> <aes aes'>} <bes des f bes>4 <g bes des g> <c ees g c> <bes des f bes>2 <c e g c>)\> c4\! \bar "||" \time 4/4
  <<{des\mf ( c) c( ees,) c'( bes) bes( des,) a'( gis) gis( b,) <fis' a,> ( a,)}\\{des2 ees4 ees <c~ e>2 <c f>4 des b2 b4 b fis2}>> <f' aes,>8 f, \times 2/5 {aes8\<( des f aes des\!)}
  <<{f4\f( e) <e fis,>( g,) e'( ees) <d bes g>( ees,) d'( cis) <cis a fis cis> cis, <des aes' des>4.-\markup\italic{poco rit.}( c'8) c2}\\{<des bes f>2 e,2 <aes b> s2 <fis d>2 s2 c'4 bes f( e)}>> \bar "||" \key aes \major
  r8^\markup\italic{a tempo}\mf \times 2/3 {f16( aes f)} bes( g aes f) c'->( e, f8) r4
  r8\> \times 2/3 {f16( aes f)} bes( g aes f) c'->( e, f8) r4\! \clef bass
  r8 \times 2/3 {f,16( aes f)} bes( g aes f) c'->( e, f8) r4
  r8\> \times 2/3 {f16( aes f)} bes( g aes f) c'->( e, f8) \clef treble <c' c'>4\! \bar "||" \time 3/4
  <aes' c aes'>2\arpeggio\mp f'4 
  <<{\times 2/3 {bes8\arpeggio aes g} aes4\arpeggio f \times 2/3 {a8\arpeggio g f} g4\arpeggio ees}\\{<d bes>4\arpeggio <c aes>2\arpeggio <c aes>4\arpeggio <c g>2\arpeggio}>>
  <f aes, f>2\arpeggio <ees g, ees>4\arpeggio <c ees, c>2\arpeggio <c e, c>4\arpeggio <aes c aes'>2\arpeggio <aes c f>4\arpeggio
  <<{\times 2/3 {f'8\arpeggio g aes} bes4\arpeggio g}\\{<d bes>4\arpeggio <d bes>2\arpeggio}>>
  <f c aes>4\arpeggio <f aes c c,>2\arpeggio <e c g>4\arpeggio <c e g c>2\arpeggio\> <f c aes f>2.\arpeggio\!\p r4 r
  c,4 aes'2 f4 \times 2/3 {<bes des,>8 aes g} aes4 f
  <<{\times 2/3 {aes8 g f} g4 ees' \time 4/4 s2 c,8( f aes c f1\fermata)}\\{<c, f>4^\markup\italic{rit. e dim.} bes2 f'1~\> f1\!\pp}>> \bar "|."
}

left = \relative c' {
  \global
  \times 2/3 {d,8(-\markup\italic{(with pedal)} f a}  \times 2/3 {d,8 f a} \times 2/3 {d,8 f a)} \times 2/3 {d,8( e g)}
  \times 2/3 {d8( f a}  \times 2/3 {d,8 f a} \times 2/3 {d,8 f a)} \times 2/3 {e( g bes)}
  \times 2/3 {d,8( f a}  \times 2/3 {d,8 f a} \times 2/3 {d,8 f a)} \times 2/3 {d,8( e g)}
  \times 2/3 {d8( f a}  \times 2/3 {d,8 f a} \times 2/3 {d,8 f a)} \times 2/3 {e( g bes)}
  \times 2/3 {d,8( f a}  \times 2/3 {d,8 f a)} \times 2/3 {d,8( f a} \times 2/3 {d,8 f a)}
  \times 2/3 {d,( g bes)} \times 2/3 {d,( f a} \times 2/3 {d, f a)}
  \times 2/3 {d,( f a)} \times 2/3 {e( a c} \times 2/3 {e, a c)}
  \times 2/3 {f,( bes d} \times 2/3 {f, bes d)} \times 2/3 {a,( e' c')}
  \times 2/3 {f,,( c' a'} \times 2/3 {f a c)} \times 2/3 {e,,( cis' a')}
  \times 2/3 {d,,( a' f'} \times 2/3 {d f a} \times 2/3 {d, f a)} 
  \times 2/3 {bes,( g' bes} \times 2/3 {g bes d} \times 2/3 {g, bes d)}
  \times 2/3 {a,( f' d')} \times 2/3 {ees,,( bes' g'} \times 2/3 {ees g bes)}
  \times 2/3 {d,,( a' f'} \times 2/3 {d' a f} \times 2/3 {d a f)}
  \times 2/3 {ees( c' g' } \times 2/3 {c ees g} \times 2/3 {c, ees g)}
  \times 2/3 {g,,( d' bes'} \times 2/3 {g bes d} \times 2/3 {g, bes d)}
  \times 2/3 {ees,,( c' g' } \times 2/3 {c ees g} \times 2/3 {c, ees g)}
  d,,( a' fis' a d4)
  \times 2/3 {aes,8( f' c'}\times 2/3 {aes c f} \times 2/3 {aes, c f)}
  \times 2/3 {g,,( ees' c'} \times 2/3 {g c ees} \times 2/3 {g, c ees)}
  \times 2/3 {aes,,( f' c'} \times 2/3 {aes c f} \times 2/3 {aes, c f)}
  g,,( d' b' g g'4) \key ees \major r4 r g,-- c,-- r4 g-- c,-- r g'-- c-- r g-- c, c'
  \times 2/3 {ees8( g c)} f,4 c \times 2/3 {ees'8( c g)} c,4 bes \times 2/3 {g'8( d bes)} aes4 \times 2/3 {c'8( aes ees)} g,4 ees \times 2/3 {g'8( bes ees,)}
  g,4 c, c' \times 2/3 {ees8( g c,)} aes4( \times 2/3 {aes'8 c f)} \times 2/3 {f,( d aes)} c4 bes, r g' c, 
  c' a f'' c c g c, aes f' c' g, g' g, des8( bes' f'4 des) f,8( c' aes'4 f) des,8( bes' f'4 des) 
  <<{r8 g( e^\<) c( g\! c,) r4 aes''4 f}\\{c,4 s2 f2 f4}>> f f' \times 2/3{c8( aes' c,)} <f f,>4 <ees ees,> \times 2/3 {g8( c, ees,)}
  <<{r4 f'}\\{des,2}>> <c c'>4 aes aes' c, <<{r4 aes''}\\{f,2}>> <f f'>8 <ees ees'> <des des'>2 <g f'>4 <c, c'> <g' g'>2 <c c,>2.
  << \set Score.connectArpeggios = ##t \arpeggioBracket { a'1\arpeggio f}\\{ ees,2.\arpeggio a4 a1}  >> <d, fis'>2\arpeggio <b' gis'> <a d,> <aes des,>
  <<{f' bes b,4. des8 d4 ees}\\{g,4 g c c f,2 ees}>> <b' fis'>2 <fis cis' a'>\arpeggio <bes aes'> <c bes'> \key aes \major
  <f f,>2~ <f f,>8 r <f f,> <f f,>16 <f f,>
  <f f,>2~ <f f,>8 r <f f,> <f f,>16 <f f,>
  \ottava #-1 <f, f,>2~ <f f,>8 r <f f,> <f f,>16 <f f,>
  <f f,>2~ <f f,>8 r <f f,> <f f,>16 <f f,> \ottava #0
  << \set Score.connectArpeggios = ##t {f''2\arpeggio f4 f\arpeggio f\arpeggio f f\arpeggio ees\arpeggio ees}\\{<c f,>2.\arpeggio <des g,>4\arpeggio <c f,>2\arpeggio <c f,>4\arpeggio <c e,>2\arpeggio}>>
  <des aes des,>2\arpeggio <c g c,>4\arpeggio <aes ees aes,>2\arpeggio <g e g,>4\arpeggio f,8( c' aes' c) f4\arpeggio
  <f bes, des,>4\arpeggio <f des g,>2\arpeggio <f c>4\arpeggio <aes f c>2\arpeggio <e c>4\arpeggio <g e c>2\arpeggio
  \times 2/3 {f,8( aes c} \times 2/3 {f, aes c} \times 2/3 {c, aes' c)}
  \times 2/3 {f,( aes c} \times 2/3 {f, aes c} c,4)
  \times 2/3 {<f f,>8 aes c}  \times 2/3 {f, aes c}  \times 2/3 {f, aes c}
  \times 2/3 {f, bes des}  \times 2/3 {f, aes c}  \times 2/3 {f, aes c} <c, f,>4 <<{r4 g' f,8( c' f aes)}\\{<bes, ees,>2 f1~ f1}>>
}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
      \consists "Span_arpeggio_engraver"
    } \right
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"  
      \consists "Span_arpeggio_engraver"
    } { \clef bass \left }
  >>
  \layout { }
  \midi { }
}
