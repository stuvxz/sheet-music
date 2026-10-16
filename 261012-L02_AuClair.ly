\version "2.24.0"

\header {
  title = "Au clair de la lune"
  tagline = ""
}

violaUm = \relative c' {
  \clef alto
  \key d \major
  \time 4/4
  
  % Aumenta o tamanho das notas e da pauta em 30% para facilitar a focagem visual
  \magnifyStaff #1.3

  % Parte A (\downbow = arco para baixo ⊓  |  \upbow = arco para cima ∨)
  d4-0\downbow d-0\upbow d-0\downbow e-1\upbow | fis2-2\downbow e-1\upbow | d4-0\downbow fis-2\upbow e-1\downbow e-1\upbow | d1-0\downbow | \break
  
  % Parte A Repete
  d4-0\downbow d-0\upbow d-0\downbow e-1\upbow | fis2-2\downbow e-1\upbow | d4-0\downbow fis-2\upbow e-1\downbow e-1\upbow | d1-0\downbow | \break
  
  % Parte B
  e4-1\downbow e-1\upbow e-1\downbow e-1\upbow | b2-4\downbow b-4\upbow | e4-1\downbow d-0\upbow cis-3\downbow b-4\upbow | a1-0\downbow | \break
  
  % Parte A Final
  d4-0\downbow d-0\upbow d-0\downbow e-1\upbow | fis2-2\downbow e-1\upbow | d4-0\downbow fis-2\upbow e-1\downbow e-1\upbow | d1-0\downbow |
  \bar "|."
}

violaDois = {
  \clef alto
  \key d \major
  \magnifyStaff #1.3

  % Parte A: Tudo semínimas, as duas últimas em legato ( ) com indicação de arco e corda solta (0)
  d'4-0\downbow d'-0\upbow a'-0\downbow a'-0\upbow | d'4-0\downbow a'-0\upbow d'4-0\downbow( d'4-0\upbow) | d'4-0 d'-0 a'-0 a'-0 | d'1-0 | 
  
  % Parte A Repete
  d'4-0 d'-0 a'-0 a'-0 | d'4-0 a'-0 d'4-0( d'4-0) | d'4-0 d'-0 a'-0 a'-0 | d'1-0 | 
  
  % Parte B: 5 Sols semínimas seguidos, mantendo o ritmo e o legato
  g4-0 g-0 g-0 g-0 | g4-0 a'-0 a'4-0( a'4-0) | g4-0 g-0 a'-0 a'-0 | a'1-0 | 
  
  % Parte A Final
  d'4-0 d'-0 a'-0 a'-0 | d'4-0 a'-0 d'4-0( d'4-0) | d'4-0 d'-0 a'-0 a'-0 | d'1-0 | 
}

\score {
  <<
    \new Staff \with { instrumentName = "Viola 1 " } { \tempo "Andante" 4 = 85 \violaUm }
    \new Staff \with { instrumentName = "Viola 2 " } { \violaDois }
  >>
  \layout {
    % Deixa mais espaço vertical entre as pautas para o professor poder escrever notas se necessário
    \context {
      \Score
      \override StaffGrouper.staff-staff-spacing.basic-distance = #14
    }
  }
  \midi { }
}
