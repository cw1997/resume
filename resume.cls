\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2025/03/08 changwei1006]
\LoadClass[10pt]{article}

% support show logo
\usepackage{metalogo}

% loading fonts
\RequirePackage{xeCJK}
\RequirePackage{fontspec}
\setCJKmainfont{Noto Serif}
\setCJKmainfont{Noto Serif CJK SC}
\setCJKsansfont{Noto Sans CJK SC}

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

\RequirePackage[
	a4paper,
	left=0.5in,
	right=0.5in,
	top=0.75in,
	bottom=0.75in,
	% noheada
]{geometry}

\pagestyle{fancy}  % enable fancyhdr
\renewcommand{\headrule}{\color{gray}\hrule width\headwidth height 0.1pt}

% clear header and footer
\fancyhf{}
\fancyhead[L]{\textcolor{gray}{Built by xeLaTeX}}
\fancyhead[C]{\textcolor{gray}{Wei Chang's resume}}
\fancyhead[R]{\textcolor{gray}{https://github.com/cw1997/resume}}
\fancyfoot[C]{\thepage}
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
