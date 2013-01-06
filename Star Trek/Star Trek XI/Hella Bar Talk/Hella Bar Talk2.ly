%=============================================
%   created by MuseScore Version: 1.2
%          22 September 2012
%=============================================

\version "2.12.0"
% 
% 
% 
#(set-default-paper-size "a4")

\paper {
  % line-width    = 184.713\mm
  % left-margin   = 12.6435\mm
  % top-margin    = 12.6435\mm
  % bottom-margin = 12.6435\mm
  %%indent = 0 \mm 
  %%set to ##t if your score is less than one page: 
  ragged-last-bottom = ##t 
  ragged-bottom = ##f  
  %% in orchestral scores you probably want the two bold slashes 
  %% separating the systems: so uncomment the following line: 
  %% system-separator-markup = \slashSeparator 
  }

\header {
title = "Hella Bar Talk"
composer = "By Michael Giacchino"
poet = "2"
copyright = "Copyright © 2009 Paramount Allegra Music
All Rights Administered by Sony/ATV Music Publishing LLC, 8 Music Square West, Nashville, TN 37203
International Copyright Secured   All Rights Reserved"
}

APnovoiceAA = \relative c'{
    \set Staff.instrumentName = #"Piano"
    \set Staff.shortInstrumentName = #"Pno."
    \clef treble
    %staffkeysig
    \tempo  "Moderately Slow" 4=100 
    \key es \major 
    %barkeysig: 
    \key es \major 
    %bartimesig: 
    \time 4/4 
    c1\fermata       | % 1
    c4 ees <d ees>4. r8      | % 2
    <aes c>4 <bes ees> <c ees>4. r8      | % 3
    des'4. ees8 \times 2/3{f4 des c  }      | % 4
    b2. b,4      | % 5
    c4. d8 ees d bes4      | % 6
    c4. d8 ees d f ees      | % 7
    des4. ees8 \times 2/3{f4 des c  }      | % 8
    b1      | % 9
    c4. d8 ees d bes4      | % 10
    c4. bes4 d8 <bes ees> d f4      | % 11
    <aes, des> <aes des>8 ees' \times 2/3{<des f>4 r16. <des f>4 r16. <des aes'>4  } r16.      | % 12
    g2 b      | % 13
    ees8 f ees f ees f ees f      | % 14
    f aes f aes f aes f aes      | % 15
    f aes f aes \times 2/3{f4 aes f  }      | % 16
    g1      | % 17
    c,,4. d8 ees d bes4      | % 18
    c4. d8 ees d f4      | % 19
    <f, aes d>4. <f aes ees'>8 \times 2/3{<f aes f'>4 r16. <f aes des>4 r16. <f aes c>4  } r4.      | % 20
    <d g b>4 <d g>2.      | % 21
    c''4. d8 ees d bes4      | % 22
    c4. d8 ees d f4      | % 23
    des4. ees8 \times 2/3{f4 des c  }      | % 24
    g'2 b \bar "|."     | % 25
    c1\fermata  \bar "|." 
}% end of last bar in partorvoice

 
APnovoiceAB = \relative c'{
        s1      | % 1
    s2..      | % 2
    s2..      | % 3
    s1      | % 4
    s1      | % 5
    s1      | % 6
    s1      | % 7
    s1      | % 8
    g2 g      | % 9
    g4 g g      | % 10
    aes aes aes2      | % 11
    s1*5/4      | % 12
    d8 g,4 g8 g'4 g8 f      | % 13
    s1      | % 14
    s1      | % 15
    s1      | % 16
    s1      | % 17
    f16 ees f ees f ees f8~ f4 f16 ees f ees      | % 18
    f ees f ees f2 f8 f16 ees      | % 19
         | % 20
    b8 d d g g b      | % 21
    g16 ees g ees g ees g ees g ees g ees g ees g ees      | % 22
    aes ees aes ees aes ees aes ees aes ees aes ees aes ees aes ees      | % 23
    s1      | % 24
    s1 \bar "|."     | % 25
    s1 \bar "|." 
}% end of last bar in partorvoice

 
APnopartA =  << 
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn 
        \context Voice = APnovoiceAA\APnovoiceAA\\ 
        \context Voice = APnovoiceAB\APnovoiceAB
        >> 

 

AvoiceBA = \relative c{
    \set Staff.instrumentName = #""
    \set Staff.shortInstrumentName = #""
    \clef bass
    %staffkeysig
    \key es \major 
    %barkeysig: 
    \key es \major 
    %bartimesig: 
    \time 4/4 
    R1  | % 
    r1      | % 2
    r      | % 3
    aes'4. c8 \times 2/3{des4 aes f  }      | % 4
    g4 g2.      | % 5
    c,1      | % 6
    f      | % 7
    aes8 des, aes des,~ <des aes' des>2      | % 8
    d1      | % 9
    c      | % 10
    f2~ f8 ees' c ees,      | % 11
    r4 des8 des' aes des f des aes des      | % 12
    r4 d2.      | % 13
    <ees c'>4. d'8 ees d bes4      | % 14
    <aes c>4. d8 ees d f4      | % 15
    <aes,, f'>1 des'4. ees8 \times 2/3{f4 des c  }      | % 16
    <b, g' b>2 d'      | % 17
    c,,16. c'32 c,16 c c'2 <f, bes>8 g      | % 18
    aes,16. aes'32 aes,16 aes aes'2 f8 ees      | % 19
    r des16. des'32 des,16 des des'8 <ees, des'> \times 2/3{<f des'>4 r16. <des des'>4 r16. <c c'>4  } r16.      | % 20
    b16. b'32 b,16 b b'2. r4      | % 21
    c,8 c16 c <g' ees'>4 c,8 c16 c <g' ees'>4      | % 22
    aes,8 aes16 aes <ees' c'>4 aes,8 aes16 aes <ees' c'>4      | % 23
    des8 des16 des <aes' f'>2.      | % 24
    b'1 \bar "|."     | % 25
    R1 \bar "|." 
}% end of last bar in partorvoice

 
AvoiceBB = \relative c{
    s1 s2.. s2.. s1 s1  | % 
    ees2.      | % 6
    aes2.      | % 7
    s1      | % 8
    s8 d,8 g, d'~ d d g, d'      | % 9
    s8 ees8 bes ees~ ees ees bes ees      | % 10
    s1      | % 11
    s1*5/4      | % 12
    b1      | % 13
    c      | % 14
    ees      | % 15
    des,      | % 16
    d1      | % 17
    s1      | % 18
    s1      | % 19
         | % 20
    s1      | % 21
    s1      | % 22
    s1      | % 23
    aes''8 \times 2/3{des4 des c  }      | % 24
    s1 \bar "|."     | % 25
    s1 \bar "|." 
}% end of last bar in partorvoice

 
ApartB =  << 
    \mergeDifferentlyHeadedOn
    \mergeDifferentlyDottedOn 
        \context Voice = AvoiceBA\AvoiceBA\\ 
        \context Voice = AvoiceBB\AvoiceBB
        >> 


\score { 
    << 
        \context PianoStaff <<
        \set PianoStaff.instrumentName="Piano" 
            \context Staff = APnopartA << 
                \APnopartA
                \set Staff.instrumentName = #""
                \set Staff.shortInstrumentName = #""
            >>


            \context Staff = ApartB << 
                \ApartB
                \set Staff.instrumentName = #""
                \set Staff.shortInstrumentName = #""
            >>


        >> %end of PianoStaffA


      % \set Score.skipBars = ##t
      % %%\set Score.melismaBusyProperties = #'()
      % \override Score.BarNumber #'break-visibility = #end-of-line-invisible %%every bar is numbered.!!!
      % %% remove previous line to get barnumbers only at beginning of system.
      %  #(set-accidental-style 'modern-cautionary)
      % \set Score.markFormatter = #format-mark-box-letters %%boxed rehearsal-marks
      %  \override Score.TimeSignature #'style = #'() %%makes timesigs always numerical
      % %% remove previous line to get cut-time/alla breve or common time 
      % \set Score.pedalSustainStyle = #'mixed 
      %  %% make spanners comprise the note it end on, so that there is no doubt that this note is included.
      %  \override Score.TrillSpanner #'(bound-details right padding) = #-2
      % \override Score.TextSpanner #'(bound-details right padding) = #-1
      % %% Lilypond's normal textspanners are too weak:  
      % \override Score.TextSpanner #'dash-period = #1
      % \override Score.TextSpanner #'dash-fraction = #0.5
      % %% lilypond chordname font, like mscore jazzfont, is both far too big and extremely ugly (olagunde@start.no):
      % \override Score.ChordName #'font-family = #'roman 
      % \override Score.ChordName #'font-size =#0 
      % %% In my experience the normal thing in printed scores is maj7 and not the triangle. (olagunde):
      % \set Score.majorSevenSymbol = \markup {maj7}
  >>

  %% Boosey and Hawkes, and Peters, have barlines spanning all staff-groups in a score,
  %% Eulenburg and Philharmonia, like Lilypond, have no barlines between staffgroups.
  %% If you want the Eulenburg/Lilypond style, comment out the following line:
  % \layout {\context {\Score \consists Span_bar_engraver}}
  \layout { }
}%% end of score-block 

% #(set-global-staff-size 20)
