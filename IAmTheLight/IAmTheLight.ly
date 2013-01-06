
\version "2.14.2" \header {

  title = "I am the Light"
  % Remove default LilyPond tagline
  tagline = ##f
}

dropLyrics =
{
    \override LyricText #'extra-offset = #'(0 . -5)
    \override LyricHyphen #'extra-offset = #'(0 . -5)
    \override LyricExtender #'extra-offset = #'(0 . -5)
}


\paper{ ragged-bottom = ##f
ragged-last-bottom = ##f
}
global = {

  \key c \major
  \numericTimeSignature
  \time 3/4
}
chordNames = \chordmode {

  \global
  \set chordChanges = ##t 
  \set majorSevenSymbol = \markup {maj7}
% Chords follow here.
  c2. e a:m c:7 d:m f:m d:m7 g:7 d:m bes g:7 g:7 c c c:maj7 a:m f e:m7 d:m e:7 d:m7 c:maj7 d:m7 g:7 c e:m c:7 f c2 d4:7 g2.:7 c c
}
melody = \relative c' {

  \global
  % Music follows here.
  e2 c8 d e2 c8 d e4 f g f e d f2 d8 e f2 d8 e f2.~ f f2 d8 e f2 d8 e f4 g aes aes g f g2 e8 f e2 g8 f g2.~ g 
\break \bar "||" a4 a b g2. f4 f g e2. d8 e f4 a g2. a8 b c4 a g2.
%Chorus \bar "||"
g2 d8 e g2 e8 f g4 c4. a8 g4 f c8 d e2 c4 d g4. e8 c2. ~ c \bar "|."
}
verseOne = \lyricmode {

  \set stanza = "1."
  % Lyrics follow here.
  I am the Light, bring -- ing you out of dark -- ness, so come, take my light to the world __ I am the Bread you must feed to the hun -- gry the wine that must fill ev -- 'ry heart. __
Fox -- es have holes, birds have their nests, but the Son of man has no place to rest.
Come, fol -- low me; be the light of the na -- tions.  Leave you nets and come, fol -- low me. __
}
verseTwo = \lyricmode {

  \set stanza = "2."
  % Lyrics follow here.
I am the Life That must change ev -- ’ry life And the Way that must al -- ter your ways. __ I am the Truth and my word is the cross You must take if you want to be free. __ 
%Foxes have holes, birds have their nests But the Son of Man has no place to rest. Come follow me be the light of the nations. Leave your nets and come follow me. 
}

verseThree = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
I am the Sower Come work in my vine -- yard, my field. Tend m -- y vines, sow the grain, __ And should it fall to the ground It can on -- ly spring up With new life, hun -- dred -- fold. __ 
%Foxes have holes, birds have their nests But the Son of Man has no place to rest. Come follow me be the light of the nations. Leave your nets and come follow me.
  
}
verseFour = \lyricmode {

  \set stanza = "4."
  % Lyrics follow here.
I am the shep -- herd __ _ Come into the sheep -- fold To help feed my lambs, feed my sheep. __ Bring back the stray -- ing, And bind up their wounds, and rejoice When you’ -- ve found what was lost. __ 
%Foxes have holes, birds have their nests But the Son of Man has no place to rest. Come follow me be the light of the nations. Leave your nets and come follow me.
  
}
chorus = \lyricmode {

  \set stanze = "Chorus"
% Lyrics
Come, fol -- low me; be the light of the na -- tions.  Leave you nets and come, fol -- low me. __
}
\score {

  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
    \addlyrics { \verseOne }
    \addlyrics { \verseTwo }
    \addlyrics { \verseThree }
    \addlyrics { \verseFour }
  >>
  \layout { }
  \midi {

    \context {

      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
