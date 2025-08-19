\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2025/03/08 changwei1006]
\LoadClass[10pt]{article}

% support show logo
\usepackage{metalogo}

% support contents
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    bookmarksopen=true,
    pdfauthor={Chang Wei},
    pdftitle={changwei-resume},
    pdfcreator={XeLaTeX},
}

% loading fonts
\RequirePackage{xeCJK}
\RequirePackage{fontspec}
\setCJKmainfont{Noto Serif}
\setCJKmainfont{Noto Serif CJK SC}
\setCJKsansfont{Noto Sans CJK SC}
\setCJKmonofont{Noto Sans Mono CJK TC}

% set line height
\linespread{1.25}

% disable indent globally
\setlength{\parindent}{0pt}

% set paragraph spacing
\setlength{\parskip}{0.25em}

% some general improvements, defines the XeTeX logo
\RequirePackage{xltxtra}

% use xifthen, support condition syntax like \ifthenelse
\RequirePackage{xifthen}

% use fontawesome for supporting icons
\RequirePackage{fontawesome5}

% use xcolor for customizing color
\RequirePackage[]{xcolor}

\RequirePackage{fancyhdr} % set Headers and Footers

\RequirePackage{lastpage} % get all pages number

\RequirePackage[
    a4paper,
    left=0.5in,
    right=0.5in,
    top=0.75in,
    bottom=0.75in,
% noheada
]{geometry}

\pagestyle{fancy}  % enable fancyhdr

% clear header and footer
\fancyhf{}
\fancyhead[L]{\textcolor{gray!75}{Built by xeLaTeX at \today}}
\fancyhead[C]{\textcolor{gray}{Chang, Wei's resume 昌维 简历}}
\fancyhead[R]{\textcolor{gray!75}{https://github.com/cw1997/resume}}
\fancyfoot[C]{\textcolor{gray}{\thepage}/\textcolor{gray!75}{\pageref*{LastPage}}}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\headrule}{%
    \color{gray!30}\hrule height 0.4pt width\headwidth \vskip-0.4pt
}
\renewcommand{\footrulewidth}{0.4pt}
\renewcommand{\footrule}{%
    \color{gray!30}\hrule height 0.4pt width\headwidth \vskip2pt
}
% \fancyfoot[L]{left content}
% \fancyfoot[R]{right content}

\RequirePackage{titlesec}
\RequirePackage{enumitem}
\setlist{noitemsep} % removes spacing from items but leaves space around the whole list
%\setlist{nosep} % removes all vertical spacing within and around the list
\setlist[itemize]{topsep=0.5em, leftmargin=1pc}
\setlist[enumerate]{topsep=0.25em, leftmargin=1pc}
\RequirePackage[super]{nth}

\titleformat{\section}         % Customise the \section command
{\Large\scshape\raggedright} % Make the \section headers large (\Large),
% small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
[\titlerule]                 % Inserts a horizontal line after the heading
\titlespacing*{\section}{0cm}{*1}{*1}

\titleformat{\subsection}
{\large\raggedright}
{}{0em}
{}
\titlespacing*{\subsection}{0cm}{*1}{*0.5}

\newcommand{\datedsection}[2]{%
    \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
    \subsection[#1]{#1 \hfill #2}%
}
\newcommand{\datedline}[2]{%
        {\par #1 \hfill #2 \par}%
}

\newcommand{\name}[1]{
    \centerline{\Huge\scshape{#1}}
    \vspace{1.2ex}
}

\newcommand{\contactInfo}[4]{
    \centerline{\sffamily\large{\ {#1} \textperiodcentered\ \ {#2}}
    \ifthenelse{\isempty{#3}}%
    { } % if {#3} is empty
    {\textperiodcentered\ \ {#3} } % homepage, no space before \text...
    \ifthenelse{\isempty{#4}}%
    { } % if {#3} is empty
    {\textperiodcentered\ \ {#4} }
    }
    \vspace{0.7ex}
}

\newcommand{\role}[2]{
        {\par \textit{#1} ~ #2 \par}
    \vspace{0.5ex}
}
