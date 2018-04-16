\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{revision-notes}

\LoadClass{scrreprt}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

\RequirePackage[UKenglish]{babel}
\RequirePackage[UKenglish]{isodate}
\RequirePackage{csquotes}

\RequirePackage{graphicx}
\RequirePackage[arrowdel]{physics}

\RequirePackage{nicefrac}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{relsize}
\RequirePackage{booktabs}
\RequirePackage{bbm}
\RequirePackage{cancel}
\RequirePackage{slashed}
\RequirePackage[sorting=none,bibencoding=utf8,giveninits,uniquename=init]{biblatex}

\KOMAoption{chapterprefix}{true}

\KOMAoptions{
paper=a4,
fontsize=11pt,
parskip=half-,
BCOR=.5cm,
pagesize=auto,
pagesize=pdftex,
headinclude=false,
footinclude=false,
DIV=12
}


\renewcommand*\raggedchapter{\centering}
\RedeclareSectionCommand[beforeskip=0pt,afterskip=1\baselineskip]{chapter}
\setkomafont{chapterprefix}{\normalsize\mdseries}

\renewcommand*{\chapterformat}{%
  \chapappifchapterprefix{\nobreakspace}\thechapter\autodot%
  \IfUsePrefixLine{%
    \par\nobreak\vspace{-\parskip}\vspace{-.6\baselineskip}%
    \rule{0.9\textwidth}{.2pt}%
  }{}%
}

\RequirePackage[hidelinks, pdfusetitle]{hyperref}

\RequirePackage{mathtools}
\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}
\RequirePackage{mathrsfs}
\newcommand{\fourier}[1]{\ensuremath{\mathlarger{\mathcal{F}}\!\!\left[#1 \right]}}
\newcommand{\inversefourier}[1]{\ensuremath{\mathlarger{\mathcal{F}^{-1}}\!\!\left[#1 \right]}}
\newcommand{\laplace}[1]{\ensuremath{\mathlarger{L}\!\!\left[#1 \right]}}
\DeclareMathOperator{\erfc}{erfc}

\setkomafont{disposition}{\rmfamily\scshape\bfseries}


\RequirePackage[largesc]{newpxtext}
\RequirePackage{newpxmath}
\setkomafont{descriptionlabel}{\rmfamily\bfseries}
\linespread{1.05}

\RequirePackage[tikz]{mdframed}
\newmdenv[frametitle=Example,roundcorner=5pt]{example}
\newmdenv[frametitle=Note,roundcorner=5pt]{note}
\renewcommand\hbar\hslash
\newcommand{\DD}[1]{\ensuremath{\mathcal{D} #1\,}}

\renewcommand{\leq}{\leqslant}
\renewcommand{\geq}{\geqslant}
%\renewcommand{\vec}{\vb*}
\setcounter{tocdepth}{2}

%\RequirePackage[activate={true,nocompatibility},final,tracking=true,kerning=true,spacing=true,shrink=10]{microtype}
\RequirePackage[activate={true,nocompatibility},kerning=true,spacing=true,final]{microtype}
\microtypecontext{spacing=nonfrench}

\RequirePackage[headsepline]{scrlayer-scrpage}
\clearscrheadfoot

\automark{section}

\ohead{\headmark}
\ofoot{\thepage}
\ihead{\@title}
