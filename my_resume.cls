\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_resume}[2019/11/09 My resume class]

% Based off article class
\LoadClass{article}

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

% Change section formats
\titleformat{\section}
  {\Large\scshape\raggedright}
  {}{0em}
  {}
  [\color{line-color}\titlerule]
 
  \titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

% Commands

\newcommand{\name}[1]{%
  \raggedright{
    \Huge{
      \textcolor{name-color}{#1}
    }
    \hfill
    \small{416-420-1792}
    \newline
  }
}

\newcommand{\linkedin}[2]{
  \raggedright{
    \faLinkedin
    \thinspace
    \href{#1}{#2}
    \hfill
    \small{krleitch.ca@gmail.com}
    \newline
  }
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
