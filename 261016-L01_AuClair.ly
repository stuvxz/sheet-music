\version "2.24.0"

\header {
  title = "Au clair de la lune"
  subtitle = "Viola d'Arco - TPC Conservatório"
  tagline = ""
}

melodia = \relative c' {
  \clef alto          % ACTIVA A CLAVE DE DÓ (3ª LINHA)
  \key d \major       % DOIS ACIDENTES: FÁ# E DÓ#
  \time 4/4
  \tempo "Andante" 4 = 90

  % Parte A
  d4 d d e | fis2 e | d4 fis e e | d1 | \break
  
  % Parte A Repete
  d4 d d e | fis2 e | d4 fis e e | d1 | \break
  
  % Parte B (A secção do meio que contrasta)
  e4 e e e | b2 b | e4 d cis b | a1 | \break
  
  % Parte A Final
  d4 d d e | fis2 e | d4 fis e e | d1 |
  
  \bar "|."
}

\score {
  \new Staff { \melodia }
  \layout { }
  \midi { }
}
