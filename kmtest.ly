\version "2.20.0"

\header {
  title = "KM Test Environment"
  composer = "Keith Penney"
  copyright = "2020 Keith Penney"
}

global = {
  \key f \major
  \time 6/8
}

bassMelody = \relative {
  r2. r4 c8 c'4 a8 a16 g16~ 4~ 4.~ 4. r8 g c,
  bes2. r4 f'8 d'4 bes8 d,4.~ 8 a'8 g c,4.~ 4 d8
  g2.~ 4.~ 8 g f d'2. e2. f2.~ 4. r8 f8 c8
  g'2. gis2.
  }

\addQuote "bassmelody" { \bassMelody }

<<
\new ChordNames {
  \set chordChanges = ##t
  \chordmode {
  f2. q a:m q
  f2. q a:m q
  g:m q d:m c
  ees q bes a:m
  d:m q c:7 c:aug7
}}
\new PianoStaff \with { instrumentName = "Piano " }
  <<
  \new Staff = "up"
    \relative {
    \global
    \clef treble
    \repeat volta 2 { 
      <a' c f a>8 8 8 8 8 8 8 8 8 8 8 8
      <a c e a>8 8 8 8 8 8 8 8 8 8 8 8
    }
      \break
      <a c f a>8 8 8 8 8 8 8 8 8 8 8 8
      <a c e a>8 8 8 8 8 8 8 8 8 8 8 8
      \break
      <g bes d g>8 8 8 8 8 8 8 8 8 8 8 8
      <f a d f>8 8 8 8 8 8 <e g c e>8 8 8 8 8 8
      \break
      <ees g bes ees>8 8 8 8 8 8 8 8 8 8 8 8
      <f bes d f>8 8 8 8 8 8 <a c e a>8 8 8 8 8 8
      \break
      <a d f a>8 8 8 8 8 8 8 8 8 8 8 8
      <bes e g bes>8 8 8 8 8 8 <bes e aes bes>8 8 8 8 8 8
  }

  \new Staff = "down"
    \relative {
    \global
    \clef bass
    \repeat volta 2 {
       r2. r2. r2. r2. 
    }
      \bassMelody
    }
  
  >>
\new Staff \with {
  instrumentName = "Guitar "
  shortInstrumentName = "Gtr. "
  }
  \relative {
    \global
    \repeat volta 2 { r2. r2. r2. r2. }
  }

\new Staff \with {
  instrumentName = "Bass "
  shortInstrumentName = "Bass "
  }
  \relative {
    \global
    \clef bass
    \repeat volta 2 { r2. r2. r2. r2. }
    \bassMelody
  }
>>
