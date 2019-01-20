%%
%% This is file `husttrans.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% husttrans.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2013-2014 by Xu Cheng <xucheng@me.com>
%%               2014-2016 by hust-latex <https://github.com/hust-latex>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is hust-latex Organization.
%% 
%% This work consists of the files husttrans.dtx,
%% husttrans.ins and the derived file husttrans.cls
%% along with its document and example files.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{husttrans}
[2017/02/21 v1.3 A Translation Template for Huazhong University of Science and Technology]
%% \CharacterTable
%% {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%  Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%  Digits        \0\1\2\3\4\5\6\7\8\9
%%  Exclamation   \!     Double quote  \"     Hash (number) \#
%%  Dollar        \$     Percent       \%     Ampersand     \&
%%  Acute accent  \'     Left paren    \(     Right paren   \)
%%  Asterisk      \*     Plus          \+     Comma         \,
%%  Minus         \-     Point         \.     Solidus       \/
%%  Colon         \:     Semicolon     \;     Less than     \<
%%  Equals        \=     Greater than  \>     Question mark \?
%%  Commercial at \@     Left bracket  \[     Backslash     \\
%%  Right bracket \]     Circumflex    \^     Underscore    \_
%%  Grave accent  \`     Left brace    \{     Vertical bar  \|
%%  Right brace   \}     Tilde         \~}

\RequirePackage{ifthen}
\RequirePackage{xkeyval}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptionsX
\LoadClass[12pt, a4paper, openany]{book}
\RequirePackage{iftex}
\ifXeTeX\else
  \ifLuaTeX\else
    \begingroup
      \errorcontextlines=-1\relax
      \newlinechar=10\relax
      \errmessage{^^J
      *******************************************************^^J
      * XeTeX or LuaTeX is required to compile this document.^^J
      * Sorry!^^J
      *******************************************************^^J
      }%
    \endgroup
  \fi
\fi
\ifXeTeX  % XeTeX下使用fontspec + xeCJK处理字体
  % 英文字体
  \RequirePackage{fontspec}
  \RequirePackage{xunicode}
  \setmainfont[
    Ligatures={Common,TeX},
    Extension=.otf,
    UprightFont=*-regular,
    BoldFont=*-bold,
    ItalicFont=*-italic,
    BoldItalicFont=*-bolditalic]{texgyretermes}
  \setsansfont[Ligatures={Common,TeX}]{Droid Sans}
  \setmonofont{CMU Typewriter Text}
  \defaultfontfeatures{Mapping=tex-text}
  % 中文字体
  \RequirePackage[CJKmath]{xeCJK}
  \setCJKmainfont[
   BoldFont={Adobe Heiti Std},
   ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
  \setCJKsansfont{Adobe Kaiti Std}
  \setCJKmonofont{Adobe Fangsong Std}
  \xeCJKsetup{PunctStyle=kaiming}

  \newcommand\ziju[2]{{\renewcommand{\CJKglue}{\hskip #1} #2}}
  \newCJKfontfamily\HEI{Adobe Heiti Std}
  \newCJKfontfamily\KAI{Adobe Kaiti Std}
  \newCJKfontfamily\FANGSONG{Adobe Fangsong Std}
  \newcommand{\hei}[1]{{\HEI #1}}
  \newcommand{\kai}[1]{{\KAI #1}}
  \newcommand{\fangsong}[1]{{\FANGSONG #1}}
\else\fi
\ifLuaTeX  % LuaTeX下使用luatex-ja处理字体 [推荐]
  \RequirePackage{luatexja-fontspec}
  % 英文字体
  \setmainfont[Ligatures={Common,TeX}]{Tex Gyre Termes}
  \setsansfont[Ligatures={Common,TeX}]{Droid Sans}
  \setmonofont{CMU Typewriter Text}
  \defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
  % 中文字体
  \setmainjfont[
   BoldFont={AdobeHeitiStd-Regular},
   ItalicFont={AdobeKaitiStd-Regular}]{AdobeSongStd-Light}
  \setsansjfont{AdobeKaitiStd-Regular}
  \defaultjfontfeatures{JFM=kaiming}

  \newcommand\ziju[2]{\vbox{\ltjsetparameter{kanjiskip=#1} #2}}
  \newjfontfamily\HEI{AdobeHeitiStd-Regular}
  \newjfontfamily\KAI{AdobeKaitiStd-Regular}
  \newjfontfamily\FANGSONG{AdobeFangsongStd-Regular}
  \newcommand{\hei}[1]{{\jfontspec{AdobeHeitiStd-Regular} #1}}
  \newcommand{\kai}[1]{{\jfontspec{AdobeKaitiStd-Regular} #1}}
  \newcommand{\fangsong}[1]{{\jfontspec{AdobeFangsongStd-Regular} #1}}
\else\fi
\RequirePackage{zhnumber}
\def\CJKnumber#1{\zhnumber{#1}} % 兼容CJKnumb
\linespread{1.3}\selectfont
\RequirePackage{geometry}
\geometry{
  top=1.2in,
  bottom=1.2in,
  left=1in,
  right=1in,
  includefoot
}
\ifthenelse{\isundefined{\pagewidth}}{
  \pdfpagewidth=\paperwidth
  \pdfpageheight=\paperheight
}{
  \pagewidth=\paperwidth
  \pageheight=\paperheight
}
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}
\setlength{\parskip}{0pt plus 2pt minus 1pt}
\RequirePackage{color}
\RequirePackage[table]{xcolor}
\RequirePackage[unicode]{hyperref}
\hypersetup{
  bookmarksnumbered=true,
  bookmarksopen=true,
  bookmarksopenlevel=1,
  breaklinks=true,
  colorlinks=true,
  allcolors=black,
  linktoc=all,
  plainpages=false,
  pdfpagelabels=true,
  pdfstartview={XYZ null null 1},
  pdfinfo={Template.Info={husttrans.cls v1.0 2014/03/01, Copyright (C) 2013-2014 by Xu Cheng 2014 by hust-latex, https://github.com/hust-latex/husttrans}}
}
\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage[amsmath,amsthm,thmmarks,hyperref,thref]{ntheorem}
\RequirePackage{fancynum}
\setfnumgsym{\,}
\RequirePackage[lined,boxed,linesnumbered,ruled,vlined,algochapter]{algorithm2e}
\RequirePackage{overpic}
\RequirePackage{graphicx,caption,subcaption}
\RequirePackage{array}
\RequirePackage{multirow,tabularx,ltxtable}
\RequirePackage{listings}
\RequirePackage[numbers,square,comma,super,sort&compress]{natbib}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{tocvsec2}
\RequirePackage[inline]{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{afterpage}
\RequirePackage{datenumber}
\RequirePackage{etoolbox}
\RequirePackage{appendix}
\RequirePackage[titles]{tocloft}
\RequirePackage{xstring}
\RequirePackage{perpage}
\def\title#1{\gdef\HUST@zhtitle{#1}\hypersetup{pdftitle={#1}}}
\title{}
\def\author#1{\gdef\HUST@zhauthor{#1}}
\author{}
\def\translator#1{\gdef\HUST@zhtranslator{#1}\hypersetup{pdfauthor={#1}}}
\translator{}

\def\date#1#2#3{
  \setdate{#1}{#2}{#3}
}
\setdatetoday
\def\dateformat{~\thedateyear~年~\thedatemonth~月~\thedateday~日}
\def\supervisor#1{\gdef\HUST@zhsupervisor{#1}}
\supervisor{}

\def\indexname{索引}
\def\figurename{图}
\def\tablename{表}
\AtBeginDocument{\def\listingscaption{代码}}
\def\bibname{参考文献}
\def\contentsname{目\hspace{1em}录}
\def\contentsnamenospace{目录}
\def\appendixname{附录}
\def\HUST@listfigurename{插图索引}
\def\HUST@listtablename{表格索引}
\def\equationautorefname{公式}
\def\footnoteautorefname{脚注}
\def\itemautorefname~#1\null{第~#1~项\null}
\def\figureautorefname{图}
\def\tableautorefname{表}
\def\appendixautorefname{附录}
\expandafter\def\csname\appendixname autorefname\endcsname{\appendixname}
\def\chapterautorefname~#1\null{第\zhnumber{#1}章\null}
\def\sectionautorefname~#1\null{#1~小节\null}
\def\subsectionautorefname~#1\null{#1~小节\null}
\def\subsubsectionautorefname~#1\null{#1~小节\null}
\def\FancyVerbLineautorefname~#1\null{第~#1~行\null}
\def\pageautorefname~#1\null{第~#1~页\null}
\def\lstlistingautorefname{代码}
\def\definitionautorefname{定义}
\def\propositionautorefname{命题}
\def\lemmaautorefname{引理}
\def\theoremautorefname{定理}
\def\axiomautorefname{公理}
\def\corollaryautorefname{推论}
\def\exerciseautorefname{练习}
\def\exampleautorefname{例}
\def\proofautorefname{证明}
\SetAlgorithmName{算法}{算法}{算法索引}
\SetAlgoProcName{过程}{过程}
\SetAlgoFuncName{函数}{函数}
\def\AlgoLineautorefname~#1\null{第~#1~行\null}
\long\def\HUST@zhtitletitle{华中科技大学\\文献综述\\[0.8cm]外文文献翻译}
\def\HUST@zhauthortitle{原文作者}
\def\HUST@zhtranslatortitle{翻译作者}
\def\HUST@zhsupervisortitle{指导教师}
\def\listfigurename{\HUST@listfigurename}
\def\listtablename{\HUST@listtablename}
\allowdisplaybreaks[4]
\abovedisplayskip=10bp plus 2bp minus 2bp
\abovedisplayshortskip=10bp plus 2bp minus 2bp
\belowdisplayskip=\abovedisplayskip
\belowdisplayshortskip=\abovedisplayshortskip
\numberwithin{equation}{chapter}
\theoremnumbering{arabic}
\theoremseparator{：}
\theorempreskip{1.2ex plus 0ex minus 1ex}
\theorempostskip{1.2ex plus 0ex minus 1ex}
\theoremheaderfont{\normalfont\bfseries\HEI}
\theoremsymbol{}

\theoremstyle{definition}
\theorembodyfont{\normalfont}
\newtheorem{definition}{定义}[chapter]

\theoremstyle{plain}
\theorembodyfont{\itshape}
\newtheorem{proposition}{命题}[chapter]
\newtheorem{lemma}{引理}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{axiom}{公理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{exercise}{练习}[chapter]
\newtheorem{example}{例}[chapter]
\def\proofname{\hei{证明}}
\setlength{\intextsep}{0.7\baselineskip plus 0.1\baselineskip minus 0.1\baselineskip}
\setlength{\textfloatsep}{0.8\baselineskip plus 0.1\baselineskip minus 0.2\baselineskip}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}}
\def\@cline#1-#2\@nil{%
  \omit
  \@multicnt#1%
  \advance\@multispan\m@ne
  \ifnum\@multicnt=\@ne\@firstofone{&\omit}\fi
  \@multicnt#2%
  \advance\@multicnt-#1%
  \advance\@multispan\@ne
  \leaders\hrule\@height\arrayrulewidth\hfill
  \cr
  \noalign{\nobreak\vskip-\arrayrulewidth}}
\newif\ifHUST@useoldtabular
\HUST@useoldtabularfalse
\def\TurnOffTabFontSetting{\HUST@useoldtabulartrue}
\def\TurnOnTabFontSetting{\HUST@useoldtabularfalse}
\AtBeginEnvironment{tabular}{
  \ifHUST@useoldtabular\else
    \fontsize{11pt}{15.4pt}\selectfont
  \fi
}
\AtBeginEnvironment{tabularx}{
  \ifHUST@useoldtabular\else
    \fontsize{11pt}{15.4pt}\selectfont
  \fi
}
\AtBeginEnvironment{longtable}{
  \ifHUST@useoldtabular\else
    \fontsize{11pt}{15.4pt}\selectfont
  \fi
}
\DeclareCaptionFont{HUST@captionfont}{\fontsize{11pt}{14.3pt}\selectfont}
\DeclareCaptionLabelFormat{HUST@caplabel}{#1~#2}
\captionsetup{
  font=HUST@captionfont,
  labelformat=HUST@caplabel,
  format=hang,
  labelsep=quad,
  skip=12pt
}
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\definecolor{HUST@lstgreen}{rgb}{0,0.6,0}
\definecolor{HUST@lstmauve}{rgb}{0.58,0,0.82}

\lstset{
  basicstyle=\footnotesize\ttfamily\linespread{1}\selectfont\FANGSONG,
  keywordstyle=\color{blue}\bfseries,
  commentstyle=\color{HUST@lstgreen}\itshape\KAI,
  stringstyle=\color{HUST@lstmauve},
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  numbers=left,
  numberstyle=\tiny\color{black},
  frame=lines,
  rulecolor=\color{black},
  breaklines=true
}
\setcounter{secnumdepth}{3}
\titleformat{\chapter}
  {
    \bfseries
    \HEI
    \centering
    \fontsize{18pt}{23.4pt}\selectfont
  }
  {
    \zhnumber{\thechapter}
  }
  {1em}
  {}
\titlespacing*{\chapter}{0pt}{0pt}{20pt}
\titleformat*{\section}{\bfseries\HEI\fontsize{16pt}{20.8pt}\selectfont}
\titlespacing*{\section}{0pt}{18pt}{6pt}
\titleformat*{\subsection}{\bfseries\HEI\fontsize{14pt}{18.2pt}\selectfont}
\titlespacing*{\subsection}{0pt}{12pt}{6pt}
\titleformat*{\subsubsection}{\bfseries\HEI\fontsize{13pt}{16.9pt}\selectfont}
\titlespacing*{\subsubsection}{0pt}{12pt}{6pt}
\setcounter{tocdepth}{1}
\contentsmargin{2.0em}
\newskip\HUST@oldcftbeforechapskip
\HUST@oldcftbeforechapskip=\cftbeforechapskip
\newskip\HUST@oldcftbeforesecskip
\HUST@oldcftbeforesecskip=\cftbeforesecskip
\let\HUST@oldl@chapter\l@chapter
\let\HUST@oldl@section\l@section
\let\HUST@oldl@subsection\l@subsection
\def\l@chapter#1#2{\HUST@oldl@chapter{#1}{#2}\cftbeforechapskip=3pt}
\def\l@section#1#2{\HUST@oldl@section{#1}{#2}\cftbeforechapskip=\HUST@oldcftbeforechapskip\cftbeforesecskip=3pt}
\def\l@subsection#1#2{\HUST@oldl@subsection{#1}{#2}\cftbeforesecskip=\HUST@oldcftbeforesecskip}
\renewcommand*\cftfigpresnum{\figurename~}
\newlength{\HUST@cftfignumwidth@tmp}
\settowidth{\HUST@cftfignumwidth@tmp}{\cftfigpresnum}
\addtolength{\cftfignumwidth}{\HUST@cftfignumwidth@tmp}
\renewcommand{\cftfigaftersnumb}{\quad~}
\renewcommand*\cfttabpresnum{\tablename~}
\newlength{\HUST@cfttabnumwidth@tmp}
\settowidth{\HUST@cfttabnumwidth@tmp}{\cfttabpresnum}
\addtolength{\cfttabnumwidth}{\HUST@cfttabnumwidth@tmp}
\renewcommand{\cfttabaftersnumb}{\quad~}
\pagestyle{plain}
\setlist{noitemsep,partopsep=0pt,topsep=.8ex}
\setlist[1]{labelindent=\parindent}
\setlist[enumerate,1]{label=\arabic*.,ref=\arabic*}
\setlist[enumerate,2]{label*=\arabic*,ref=\theenumi.\arabic*}
\setlist[enumerate,3]{label=\emph{\alph*}),ref=\theenumii\emph{\alph*}}
\setlist[description]{font=\bfseries\HEI}
\MakePerPage{footnote}
\def\frontmatter{
  \clearpage
  \@mainmatterfalse
  \pagenumbering{Roman}
}
\def\mainmatter{
  \clearpage
  \@mainmattertrue
  \pagenumbering{arabic}
}
\def\backmatter{
  \clearpage
  \@mainmatterfalse
  \settocdepth{chapter}
  \hypersetup{bookmarksopenlevel=0}
}
\def\HUST@titlepage{
  \begin{center}
  \null
  \vskip 2cm
  {\LARGE \HUST@zhtitletitle}\\[0.5cm]
  \rule{\linewidth}{0.5mm}\\[0.55cm]
  {\LARGE \bfseries \sffamily \HEI \HUST@zhtitle}\\[0.35cm]
  \rule{\linewidth}{0.5mm}\\[3.5cm]
  \begin{minipage}[t]{0.8\textwidth}
  \TurnOffTabFontSetting
  \Large
  \setlength{\extrarowheight}{5pt}
  \begin{tabular}{r@{：}l}
    \parbox[t][][t]{6em}{\raggedleft \emph{\HUST@zhauthortitle}} &
    \parbox[t][][t]{15em}{\HUST@zhauthor}
    \\
    \parbox[t][][t]{6em}{\raggedleft \emph{\HUST@zhtranslatortitle}} &
    \parbox[t][][t]{15em}{\HUST@zhtranslator}
    \ifthenelse{\equal{\HUST@zhsupervisor}{}}{}{
    \\
    \parbox[t][][t]{6em}{\raggedleft \emph{\HUST@zhsupervisortitle}} &
    \parbox[t][][t]{15em}{\HUST@zhsupervisor}
    }
  \end{tabular}
  \TurnOnTabFontSetting
  \end{minipage}
  \vfill
  {\Large \dateformat}
  \end{center}
}
\def\maketitle{
  \begingroup
  \hypersetup{allcolors=black}
  \let\HUST@oldthepage\thepage
  \def\thepage{封面}
  \begin{titlepage}
    \thispagestyle{empty}
    \HUST@titlepage
  \end{titlepage}
  \let\thepage\HUST@oldthepage
  \setcounter{page}{1}
  \endgroup
}
\let\makecover\maketitle

\let\HUST@tableofcontents\tableofcontents
\def\tableofcontents{
  \pdfbookmark{\contentsnamenospace}{\contentsnamenospace}
  \HUST@tableofcontents
  \clearpage
}
\def\thudot{\unskip.}
\def\thumasterbib{[Master Thesis]}
\def\thuphdbib{[Doctor Thesis]}
\bibliographystyle{thuthesis}
\let\HUST@bibliography\bibliography
\def\bibliography#1{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{\bibname}
  \begingroup
  \fontsize{10.5pt}{10.5pt}\selectfont
  \setlength\bibsep{0.5ex}
  \HUST@bibliography{#1}
  \endgroup
}
\newif\ifHUST@inappendix
\HUST@inappendixfalse
\newif\ifHUST@appendix@resetmainmatter
\HUST@appendix@resetmainmatterfalse
\renewenvironment{appendix}{
  \if@mainmatter
    \HUST@appendix@resetmainmatterfalse
  \else
    \HUST@appendix@resetmainmattertrue
    \@mainmattertrue
  \fi
  \appendixtitletocon
  \appendices
  \titleformat{\chapter}
  {
    \bfseries\HEI
    \centering
    \fontsize{18pt}{23.4pt}\selectfont
  }
  {\appendixname\,\thechapter}
  {1em}
  {}
  \HUST@inappendixtrue
}{
  \endappendices
  \HUST@inappendixfalse
  \ifHUST@appendix@resetmainmatter
    \HUST@appendix@resetmainmatterfalse
    \@mainmatterfalse
  \else\fi
}
\let\HUST@listoffigures\listoffigures
\def\listoffigures{
  \clearpage
  \ifHUST@inappendix
    \addtocounter{chapter}{1}
    \def\listfigurename{\appendixname\,\thechapter\hspace{1em}\HUST@listfigurename}
  \else
    \def\listfigurename{\HUST@listfigurename}
  \fi
  \phantomsection
  \ifHUST@inappendix
    \addcontentsline{toc}{chapter}{\thechapter\hspace{1em}\HUST@listfigurename}
  \else
    \addcontentsline{toc}{chapter}{\listfigurename}
  \fi
  \HUST@listoffigures
  \def\listfigurename{\HUST@listfigurename}
}
\let\HUST@listoftables\listoftables
\def\listoftables{
  \clearpage
  \ifHUST@inappendix
    \addtocounter{chapter}{1}
    \def\listtablename{\appendixname\,\thechapter\hspace{1em}\HUST@listtablename}
  \else
    \def\listtablename{\HUST@listtablename}
  \fi
  \phantomsection
  \ifHUST@inappendix
    \addcontentsline{toc}{chapter}{\thechapter\hspace{1em}\HUST@listtablename}
  \else
    \addcontentsline{toc}{chapter}{\listtablename}
  \fi
  \HUST@listoftables
  \def\listtablename{\HUST@listtablename}
}
\def\email#1{
  \href{mailto:#1}{\texttt{#1}}
}
\endinput
%%
%% End of file `husttrans.cls'.
