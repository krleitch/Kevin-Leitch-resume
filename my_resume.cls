\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_resume}[2019/11/09 My resume class]

% Based off article class
\LoadClass[10pt]{article}

% XeLaTeX packages.
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}

% Remove page numbers
\pagenumbering{gobble}

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

% defined colors
\definecolor{name-color}{HTML}{880E4F}
\definecolor{line-color}{HTML}{880E4F}
\definecolor{date-color}{HTML}{9E9E9E}

% PDF settings and properties.
\RequirePackage{hyperref}

% Change title formatting
\RequirePackage{titlesec}

% href styling
\hypersetup{
  colorlinks,
  linkcolor={red!50!black},
  citecolor={blue!50!black},
  urlcolor={blue!80!black}
}

% Change section format
\titleformat{\section}
  {\Large\scshape\raggedright\bfseries}
  {}{0em}
  {}
  [\color{line-color}\titlerule]
 
% Change subsection format
\titleformat{\subsection}
  {\large\scshape\raggedright\bfseries}
  {}{0em}
  {}

% Change section spacing
\titlespacing*{\section}
  {0pt}{8pt}{8pt}

% Change subsection spacing
\titlespacing*{\subsection}
  {0pt}{5pt}{5pt}

% Commands

% 1: name, 2: phone number
\newcommand{\lineone}[2]{%
  \raggedright{
    \name{#1}
    \strut\hfill
    \phone{#2}
    \newline%
  }
}

\newcommand{\name}[1]{
  \Huge{
    \textcolor{name-color}{#1}
  }
}

\newcommand{\phone}[1]{
  \small{#1}
}

% 1: linkedin link, 2: linkedin text
% 3: github link, 4: github text
% 5: email
\newcommand{\linetwo}[5]{%
  \raggedright{%
    \linkedin{#1}{#2} |%
    \github{#3}{#4}%
    \hspace{\fill}%
    \email{#5}%
    \vspace{.3\baselineskip}}}%

\newcommand{\linkedin}[2]{
  \href{#1}{#2}
}

\newcommand{\github}[2] {
  \href{#1}{#2}
}

\newcommand{\email}[1]{
  \small{#1}
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]%
    {#1 \hfill \textcolor{date-color}%
    {\normalsize{\textit{#2}}}}%
}

\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}
