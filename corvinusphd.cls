\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{corvinusphd}[2021/02/02 corvinusphd Ph.D. v0.1]
\LoadClass[12pt]{memoir}%twoside, openright, final default options. For ebook version: oneside
\RequirePackage{etoolbox}
\DeclareOption{magyar}{
    \patchcmd{\@makechapterhead}
     {\printchaptername \chapternamenum \printchapternum}
     {\printchapternum.\@\chapternamenum \printchaptername}
     {}{}
    \renewcommand{\chaptermarksn}[1]{\thechapter.~\chaptername:~}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{memoir}}
\ProcessOptions
%
\ifpdf
    \ClassInfo{corvinusphd}{Use all of memoir options. 12pt is always used.\MessageBreak
    LaTeX package memoir is loaded}
\else
    \ClassError{corvinusphd}{Usage: pdflatex <filename>\MessageBreak
                     pdflatex works only}
\fi
% chapter lapon ne legyen lapszám
\let\ps@plain\ps@empty
\let\Aref\relax
\synctex=1

\stockaiv\pageaiv
\setlrmarginsandblock{45mm}{25mm}{*}
\setulmarginsandblock{30mm}{25mm}{*}
\checkandfixthelayout
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[magyar]{babel}\frenchspacing

\RequirePackage[hyphens]{url}
\RequirePackage{graphicx, csquotes, amsmath, amssymb, amsthm, fixme, supertabular, hhline, array}
\graphicspath{{images/}}
\usepackage[x11names]{xcolor}
%\RequirePackage{mathptmx,leading}
\RequirePackage{newtxtext, newtxmath,leading}
\leading{16.8pt}% 12+12*0.2=14.4 a normál és ez a default. Ha kétszeres kell:12+2*12*0.2=16.8. Tán ez a 1.5 sorköz?
\RequirePackage[scaled=.92]{helvet}

%\setlength{\evensidemargin}{\oddsidemargin} ha egyoldalasan akarjuk nyomtatni

\RequirePackage[unicode]{hyperref}\hypersetup{final}\RequirePackage{memhfixc}
\RequirePackage[gen]{eurosym}\DeclareUnicodeCharacter{20AC}{\euro{}}

\newcommand\arraybslash{\let\\\@arraycr}

\nouppercaseheads

\fxsetup{status=draft, theme=color, layout={inline}}
\renewcommand{\fixmelogo}{\textcolor{black}{\colorbox{Firebrick1}{\textsf{\textbf{FIX}}}}}
\chapterstyle{default}
%chapter
\renewcommand*{\chapnumfont}{\huge\selectfont\sffamily}
\renewcommand*{\chapnamefont}{\huge\selectfont\sffamily}
\renewcommand*{\chaptitlefont}{\bfseries\Huge\selectfont\sffamily}
% section
\setsecheadstyle{\Large\sffamily\bfseries\raggedright}
% subsection
\setsubsecheadstyle{\large\sffamily\bfseries\raggedright}
% subsubsection
\setsubsubsecheadstyle{\normalsize\sffamily\bfseries\raggedright}
% paragraph
\setparaheadstyle{\normalsize\sffamily\normalfont\raggedright}
% subparagraph
\setsubparaheadstyle{\normalsize\sffamily\normalfont\raggedright}
%
% Tulcsordulasok tiltasa
\midsloppy
\clubpenalty=9996
\widowpenalty=9999
\brokenpenalty=4991
\predisplaypenalty=10000
\postdisplaypenalty=1549
\displaywidowpenalty=1602
\renewcommand{\cftpartaftersnum}{.}
\renewcommand{\cftchapteraftersnum}{.}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%space problema a toc ban 
%https://tex.stackexchange.com/questions/429804/add-dot-after-chapter-number-in-toc-memoir-class
\renewcommand{\cftpartaftersnumb}{\space}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\scwords #1 #2 #3 {\textsc{#1} \textsc{#2} \textsc{#3} }
\newcommand{\idxsc}[1]{\textsc{#1}\index{\textsc{#1}}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% pdf parameterek
\AtBeginDocument{%
\hypersetup{pdftitle=\title{},pdfauthor=\author{},pdfcreator=\copyright \author}%
}
\endinput
