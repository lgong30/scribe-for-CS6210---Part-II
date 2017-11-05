%%
%% lecture.cls 2017/11/02 version V0.1
%%
%% This is a simple lecture LaTeX class for students to
%% create lecture scribe.
%%
%% Support sites:
%% http://github.com/lgong30/scribe.git
%%
%% Based on the template for the scribe of MIT 6.851
%% http://courses.csail.mit.edu/6.851/fall17/scribe/lec1.zip
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{lecture}[2017/11/02 Lecture LaTeX class]

\RequirePackage{kvoptions}
\SetupKeyvalOptions {
family = headerctl,
prefix = headerctl@
}
\DeclareBoolOption[false]{noheader}
\ProcessKeyvalOptions*

\LoadClass[onecolumn]{article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\newcommand\course[1]{\renewcommand\@course{#1}}
\newcommand\@course{}

\newcommand\semester[1]{\renewcommand\@semester{#1}}
\newcommand\@semester{}

\newcommand\instructor[1]{\renewcommand\@instructor{#1}}
\newcommand\@instructor{}


\renewcommand{\maketitle}{%
  \noindent
  \begin{center}
  \framebox{
    \vbox{
      \hbox to 5.78in { {\fontseries{b}%
    \@course
 } \hfill \@semester }
      \vspace{4mm}
      \hbox to 5.78in { {\Large \hfill \@title  \hfill} }
      \vspace{2mm}
      \hbox to 5.78in { {\fontshape{it} \@instructor \hfill Scribe: \@author} }
    }
  }
  \end{center}
  \vspace*{4mm}
  \global\let\@thanks\@empty
}

\RequirePackage{ifthen}
\RequirePackage{latexsym}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{graphicx}
\RequirePackage{subfig}
\RequirePackage{hyperref}


\newtheorem{theorem}{Theorem}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{observation}[theorem]{Observation}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{definition}[theorem]{Definition}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{fact}[theorem]{Fact}
\newtheorem{assumption}[theorem]{Assumption}

\newcommand{\code}{\ttfamily}


% 1-inch margins, from fullpage.sty by H.Partl, Version 2, Dec. 15, 1988.
\topmargin 0pt
\advance \topmargin by -\headheight
\advance \topmargin by -\headsep
\textheight 8.9in
\oddsidemargin 0pt
\evensidemargin \oddsidemargin
\marginparwidth 0.5in
\textwidth 6.5in

\parindent 0in
\parskip 1.5ex
% -------------------------------------------------------------------------

\ifheaderctl@noheader
% nothing
\else
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\rhead{\footnotesize \@title}
\lhead{\footnotesize Scribe: \@author}
\cfoot{\footnotesize \thepage}
\fi

% handle font size




