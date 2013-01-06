\version "2.16.0"

leftbrace = \markup { \override #'(font-encoding . fetaBraces) \lookup #"brace240" }
rightbrace = \markup { \rotate #180 \leftbrace }

\paper {
  ragged-last-bottom =  ##f
  ragged-last = ##f
  ragged-right = ##f
}

dropLyrics = {
    \override LyricText #'extra-offset = #'(0 . -5)
    \override LyricHyphen #'extra-offset = #'(0 . -5)
    \override LyricExtender #'extra-offset = #'(0 . -5)
}

raiseLyrics = {
    \revert LyricText #'extra-offset
    \revert LyricHyphen #'extra-offset
    \revert LyricExtender #'extra-offset
}

\header {
  title = "O Come All Ye Faithful"
  composer = "Trad."
  % Remove default LilyPond tagline
  tagline = ##f
}

global = {
  \key g \major
  \time 4/4
  \tempo 4=100
}

melody = { \relative c'' { 
  \partial 4 g4 g2 d4 g a2 d, b'4 a b c b2 a4 g g2 fis4 e fis( g) a b fis2  e4. d8 d1 d'2 c4 b c2 b a4 b g a fis4.( e8) d4 \bar "||" 
  g g fis  g a g2 d4 << { b' b a b c b2 a4 } \new Staff { \clef bass g, g fis  g a g2 fis4 } >> b' c b a g fis2 g4( c) b2 a4. g8 g1 \bar "|."
}}

\addlyrics {
  \set stanza = #"1."
  O Come All Ye Faith -- ful
  Joy -- ful and tri -- um -- phant,
  O come ye, O come ye to Be -- th -- le -- hem.
  Come and be -- hold Him,
  Born the King of An -- gels;
  O come, let us ad -- ore Him,
  O come, let us ad -- ore Him,
  O come, let us ad -- ore Him,
  Chri -- st the Lord.
}

\addlyrics {
  \set stanza = #"2."
   _ God __ of __ _  God, __ _
   Li -- ght o -- f li -- ght,
   lo! __ _ he ab -- hors not the vir - gin's womb;
   ve - ry God, _
   be -- got -- ten not cre -- ated.
}

\addlyrics {
   \set stanza = #"3."
   _ Sing,  choirs of an -- gels,
Sing in ex -- ul -- ta -- tion,
Sing _ all ye citi -- zens of hea -- ven ab -- ove:
glo -- ry to Go __ d in _ the _ hi -- ghest
}

\addlyrics {
  \set stanza = #"4."
   _ Yea, Lord, we greet thee,
   born this hap -- py morn -- ing,
   Je - -- su, to thee be _ glo - -- ry gi'en:
   Word of the Fath -- er,
   now in flesh a -- ppear -- ing:
}

vTwo = \relative c' {
  d4 d2 d4 d e2 d d4 d d e d2 d4 b b( cis) d cis d2 d4 d d2( cis4.) d8 d1 d2 e8( fis) g4 g( fis) g2 d4 d e e d2 d4 r4 d1 d2. d4 d d d d d2 d4 g fis g d d8( cis) d2 d4 e d2 d4. b8 b1
}



right = {
  \global

  << \melody \\ \vTwo >>
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  g,4 g1 a2:m d g4 d g c g2 d4 g g2 d4 a d g d g d2 a4. d8 d1 g2 c4 g c2 g d4 g c a:m d4. a8 d4 r4 s1 s2. s4 s1 s2. g4 d g d g d2 g4 c g2 a4. g8 g1
}

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
  shortInstrumentName = "Pno."
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
>>

chordsPart = \new ChordNames \chordNames

\score {
  <<
    \chordsPart
    \pianoPart
    
    
  >>
  \layout { }
  \midi { }
}


