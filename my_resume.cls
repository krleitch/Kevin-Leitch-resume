\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_resume}[2019/11/09 My resume class]

\LoadClass{article}

\RequirePackage{titlesec}

% Geometry package for page margins.
\RequirePackage[
  left=0.70in,
  right=0.70in,
  top=0.60in,
  bottom=0.45in,
  nohead,
  includefoot]{geometry}

% PDF settings and properties.
\RequirePackage{hyperref}

% XeLaTeX packages.
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}

% Font
\setmainfont[
  Path=./fonts/liberation_sans/,
  ItalicFont=LiberationSans-Italic,
  BoldFont=LiberationSans-Bold,
  BoldItalicFont=LiberationSans-BoldItalic]
  {LiberationSans-Regular.ttf}

\titleformat{\section}
  {\Large\scshape\raggedright}
  {}{0em}
  {}
  [\titlerule]
 
  \titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}

\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\name}[1]{%
  \centerline{\Huge{#1}}
}

\newcommand\contact[5]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
            \ #4 \ \ #5%
        }%
    }%
}

\newcommand{\workitems}[3]{%
    \begin{itemize}
    \item #1
    \item #2
    \item #3
    \end{itemize}%
}
