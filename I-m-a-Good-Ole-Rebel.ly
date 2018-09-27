\version "2.18.2"
\language "english"

\header {
  title = "I‘m a Good ’Ole Rebel"
  % instrument = "Ukulele"
  arranger = "Lyndsy Simon"
  poet = "James Innes Randolph"
}

global = {
  \key c \major
  \tempo 4 = 140
}

ukulele = \relative c' {
  \global
  \time 6/4
  \repeat volta 6 {
  b'8 e,4 e8 e4 gf8 af8 b2 |
  b8 gf4 af8 e4 e8 e8~e2 |
  \break
  e8 af4 af8 af4 a8 b8 b2 |
  b8 gf4 gf8 gf4 gf8 gf8~gf2 |
  \break
  gf8 af4 af8 af4 a8 b8 b2 |
  b8 gf4 gf8 gf4 e8 gf8~gf2 |
  \break
  ef8 e4 e8 e4 gf8 af8 b2 |
  e,8 gf4 gf8 e4 ef8 e8~e2 |
  }
 }
 
 refrain = 
  \lyricmode {
  Oh, I'm a good 'ole reb -el,
  yes that's just what I am.

  And for this Yan -kee na -tion,
  I do not give a damn.

  I'm glad we fought a -gin' 'em,
  I on -ly wish we'd won.

  I ne -ver asked your par -don
  for a -ny -thing I've done.
 }

\score {
  \new StaffGroup \with {
    \consists "Instrument_name_engraver"
    instrumentName = "Ukulele"
  } <<
    \new Staff {
      \context Voice = "vI" {
        \ukulele
      }
    }
    \new TabStaff \with {
      stringTunings = #ukulele-tuning
    } \ukulele
    \new Lyrics = "lyricsI" \with { stanza = #"1. " } {
      \lyricsto "vI" \refrain
    }
    \new Lyrics = "lyricsII" \with { stanza = #"2. " } {
      \lyricsto "vI" {
        I hates the Yan -kee na -tion
        and ev -'ry thing they do.

        I hates their De -cla -ra -tion
        of In -de -pen -dence too.

        I hates their glor -ious Un -ion,
        I fit it all I could.

        I hates that stri -ped ban -ner,
        'tis drip -ping with our blood.
      }
    }
    \new Lyrics = "lyricsIII" \with { stanza = #"3. " } {
      \lyricsto "vI" {
        I fol -lowed old Marse Rob -ert
        for three years there -ab -out.
        
        Was wound -ed in three pla -ces
        and starved at Point Look -out
        
        I cotched the rheu -ma -t -ism
        a' camp -in in the snow.
        
        But~I killed my chance a' Yan -kees
        and~I'd like to kill some mo'.
      }
    }
    \new Lyrics = "lyricsIII" \with { stanza = #"4. " } {
      \lyricsto "vI" {
        Three hun -dred thou -sand Yan -kees
        a still in South -ern dust
        
        We got three hun -dred thou -sand
        be -fore they con -quered us.
        
        They died of South -ern fe -ver
        and South -ern steel and shot.
        
        I wish it were three mill -ion
        in -stead of what we got.
      }
    }
    \new Lyrics = "lyricsIII" \with { stanza = #"5. " } {
      \lyricsto "vI" {
        I can't pick up my mus -ket
        and fight 'em now no 'mo.
        
        But I ain't got a' love 'em
        and that is cer -tain shore.
        
        No I ain't begged your par -don
        for what I was and am.
        
        I won't be Re -con -struct -ed
        and I don't give a damn.
      }
    }\new Lyrics = "lyricsI" \with { stanza = #"6. " } {
      \lyricsto "vI" \refrain
    }
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
