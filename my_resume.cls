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
%\defaultfontfeatures{
%  for OSX 
%  Path = /usr/local/texlive/2019/texmf-dist/fonts/opentype/public/fontawesome/ }
%   Path = C:\Program Files\MiKTeX 2.9\fonts\opentype\public\fontawesome\ }
\RequirePackage{fontawesome5}

% Use liberation sans font
\setmainfont[
  Path=./fonts/liberation_sans/,
  ItalicFont=LiberationSans-Italic,
  BoldFont=LiberationSans-Bold,
  BoldItalicFont=LiberationSans-BoldItalic]
  {LiberationSans-Regular.ttf}

% Geometry package for page margins
\RequirePackage[
  left=0.35in,
  right=0.35in,
  top=0.25in,
  bottom=0.25in,
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

% for adjusting leftmargin
\RequirePackage{enumitem}

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
  \small\faMobile*~\small{#1}
}

% 1: linkedin link, 2: linkedin text
% 3: github link, 4: github text
% 5: email
\newcommand{\linetwo}[5]{%
  \raggedright{%
    \linkedin{#1}{#2}%
    \github{#3}{#4}%
    \hspace{\fill}%
    \email{#5}%
    \vspace{.3\baselineskip}}}%

\newcommand{\linkedin}[2]{
  \faLinkedin~\href{#1}{#2}
}

\newcommand{\github}[2] {
  \faGithub~\href{#1}{#2}
}

\newcommand{\email}[1]{
  \faEnvelope[regular]~\small{#1}
}

\newcommand{\skillitem}[2]{%
  \begin{itemize}[align=left,leftmargin=7em,itemindent=0pt,labelsep=0pt,labelwidth=7em]
    \raggedright
    \item[\textbf{#1}:] #2
  \end{itemize}
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]%
    {#1 \hfill \textcolor{date-color}%
    {\normalsize{\textit{#2}}}}%
}

% TODO
% Make a variable arg function later when you are bored
% https://davidyat.es/2016/07/27/writing-a-latex-macro-that-takes-a-variable-number-of-arguments/

\newcommand{\workitemsone}[1]{%
    \begin{itemize}[leftmargin=.25in]
    \item #1
    \end{itemize}%
}

\newcommand{\workitemstwo}[2]{%
    \begin{itemize}[leftmargin=.25in]
    \item #1
    \item #2
    \end{itemize}%
}

\newcommand{\workitemsthree}[3]{%
    \begin{itemize}[leftmargin=.25in]
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}

\newcommand{\datedsubsectionlink}[4]{%
  \subsection[#1]%
    {#1 - \href{#2}{#3} \hfill \textcolor{date-color}%
    {\normalsize{\textit{#4}}}}%
}

\newcommand{\projectitem}[1]{%
  \textnormal{#1}
}

\newcommand{\interestitem}[1]{%
  \textnormal{#1}
}
