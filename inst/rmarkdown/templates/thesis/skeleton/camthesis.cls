\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{camthesis}[2020/06/12]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\LoadClass{book}


%*********options************
\def\college#1{\gdef \@college{#1}}
\def\@college{\@latex@warning@no@line{No \noexpand\college given}}

\def\degree#1{\gdef \@degree{#1}}
\def\@degree{\@latex@warning@no@line{No \noexpand\degree given}}


\def\committee#1{\gdef \@committee{#1}}
\def\@committee{\@latex@warning@no@line{No \noexpand\committee given}}

% \def\department#1{\gdef \@department{#1}}
% \def\@department{\@latex@warning@no@line{No \noexpand\department given}}

\def\advisor#1{\gdef \@advisor{#1}}
\def\@advisor{\@latex@warning@no@line{No \noexpand\advisor given}}

\def\advisor2#1{\gdef \@advisor2{#1} \@advisor2true}
\global\let\@advisor2\@empty
\newif\if@advisor2
\@advisor2false
%****************************





%*********draft mode - from Engineering template github.com/kks32/phd-thesis-template***************
\newif\ifsetDraft\setDraftfalse

% Draft Mode
\DeclareOption{draft}{\PassOptionsToClass{draft}{book}
  \setDraftClassictrue
  \ClassWarning{PhDThesisPSnPDF}{Draft is ON. Don't forget to turn it
    off in your final version. This is the classic version of draft.
    Use `draft' for enhanced mode, which adds watermark with timestamp, 
    line numbering, and version number.}}%
%********************************


