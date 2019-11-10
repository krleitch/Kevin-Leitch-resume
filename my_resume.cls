\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_resume}[2019/11/09 My resume class]

% Based off article class
\LoadClass{article}

% XeLaTeX packages.
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}

% FontAwesome. Make sure PATH is correct
\defaultfontfeatures{
  Path = /usr/local/texlive/2019/texmf-dist/fonts/opentype/public/fontawesome/ }
\RequirePackage{fontawesome}

% Use liberation sans font
\setmainfont[
  Path=./fonts/liberation_sans/,
  ItalicFont=LiberationSans-Italic,
  BoldFont=LiberationSans-Bold,
  BoldItalicFont=LiberationSans-BoldItalic]
  {LiberationSans-Regular.ttf}

% Geometry package for page margins
\RequirePackage[
  left=0.70in,
  right=0.70in,
  top=0.60in,
  bottom=0.45in,
  nohead,
  includefoot]{geometry}

% Get Colors
\RequirePackage{xcolor}

% Name color
\definecolor{name-color}{HTML}{880E4F}

% PDF settings and properties.
\RequirePackage{hyperref}

% Change title formatting
\RequirePackage{titlesec}

\titleformat{\section}
  {\Large\scshape\raggedright}
  {}{0em}
  {}
  [\titlerule]
 
  \titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

% Commands

\newcommand{\name}[1]{%
  \raggedright{\Huge{\textcolor{name-color}{#1}}}
}

\newcommand{\linkedin}[2]{
  \begin{flushleft}
  \faLinkedin
  \href{#1}{#2}
  \end{flushleft}
}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}
