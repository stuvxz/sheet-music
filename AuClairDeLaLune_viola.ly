\version "2.24.0"

\header {
  title = \markup \magnify #1.5 "Au Clair de la Lune"
  subtitle = \markup \magnify #1.2 "Acompanhamento em Cordas Soltas"
  tagline = ##f
}

% Alterar o tamanho global da pauta e das notas (padrão é 20)
#(set-global-staff-size 28)

violaIniciacao = {
  \clef alto
  \key d \major
  \time 4/4
  \tempo "Moderato" 4 = 90

  % --- Parte 1 ---
  d'4\downbow^"0"_"ré" d'\upbow^"0"_"ré" a'\downbow^"0"_"lá" a'\upbow^"0"_"lá" |   
  d'4\downbow^"0"_"ré" a'\upbow^"0"_"lá" d'2\downbow^"0"_"ré" |         
  d'4\upbow^"0"_"ré" d'\downbow^"0"_"ré" a'\upbow^"0"_"lá" a'\downbow^"0"_"lá" |   
  d'4\upbow^"0"_"ré" a'\downbow^"0"_"lá" d'2\upbow^"0"_"ré" \break    

  % --- Parte 2 (O Meio) ---
  g4\downbow^"0"_"sol" g\upbow^"0"_"sol" g\downbow^"0"_"sol" g\upbow^"0"_"sol" |       
  g4\downbow^"0"_"sol" g\upbow^"0"_"sol" a'2\downbow^"0"_"lá" |           

  % --- Parte 3 (Retorno) ---
  d'4\upbow^"0"_"ré" d'\downbow^"0"_"ré" a'\upbow^"0"_"lá" a'\downbow^"0"_"lá" |   
  d'4\upbow^"0"_"ré" a'\downbow^"0"_"lá" d'2\upbow^"0"_"ré" |
  
  \bar "||"
  
  \once \override Score.RehearsalMark.break-visibility = #end-of-line-visible
  \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup \italic \magnify #1.2 "D.C. al Fine"
}

\score {
  \new Staff \with {
    instrumentName = "Viola"
  } {
    \violaIniciacao
  }
  \layout {
    indent = 0\mm
    \context {
      \Score
      % Tornar os símbolos de arco e dedilhado maiores e bem visíveis
      \override Script.font-size = #3
      \override TextScript.font-size = #1.5
    }
  }
}
