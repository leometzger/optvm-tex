\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{configuracoes/utfpr-abntex2}[2016/07/07 v1.0]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abntex2}}

\PassOptionsToClass{%
    12pt,
    a4paper,
    sumario=tradicional,
    brazil
}{abntex2}

\ProcessOptions\relax
\LoadClass{abntex2}

\RequirePackage[brazilian, hyperpageref]{backref}
\RequirePackage{makeidx}
\RequirePackage{chngcntr}

\frenchspacing

\renewcommand{\backrefpagesname}{Citado na(s) p\'agina(s):~}

\renewcommand{\backref}{}

\setlist{noitemsep, topsep=0pt, parsep=0pt, partopsep=0pt}

\renewcommand*{\backrefalt}[4]
{%
    \ifcase #1
        Nenhuma cita\c{c}\~ao no texto.
    \or
        Citado na p\'agina #2.
    \else
        Citado #1 vezes nas p\'aginas #2.
    \fi
}

\counterwithout{equation}{chapter}

\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

\providecommand{\imprimirsubtitulo}{}
\newcommand{\subtitulo}[1]{\renewcommand{\imprimirsubtitulo}{#1}}

\providecommand{\imprimirinstOrientador}{}
\newcommand{\instOrientador}[1]{\renewcommand{\imprimirinstOrientador}{#1}}

\providecommand{\imprimirinstCoorientador}{}
\newcommand{\instCoorientador}[1]{\renewcommand{\imprimirinstCoorientador}{#1}}

\providecommand{\imprimirprojeto}{}
\newcommand{\projeto}[1]{\renewcommand{\imprimirprojeto}{#1}}

\providecommand{\imprimirtituloAcademico}{}
\newcommand{\tituloAcademico}[1]{\renewcommand{\imprimirtituloAcademico}{#1}}

\providecommand{\imprimirautorcitacao}{}
\newcommand{\autorcitacao}[1]{\renewcommand{\imprimirautorcitacao}{#1}}

\providecommand{\imprimirtitleabstract}{}
\newcommand{\titleabstract}[1]{\renewcommand{\imprimirtitleabstract}{#1}}

\newcommand{\imprimirareaconcentracaoRotulo}{\'Area de concentra\c{c}\~ao: }
\providecommand{\imprimirareaconcentracao}{}
\newcommand{\areaconcentracao}[1]{\renewcommand{\imprimirareaconcentracao}{#1}}

\newcommand{\imprimirlinhapesquisaRotulo}{Linha de pesquisa: }
\providecommand{\imprimirlinhapesquisa}{}
\newcommand{\linhapesquisa}[1]{\renewcommand{\imprimirlinhapesquisa}{#1}}

\providecommand{\imprimirtextopadraofolhadeaprovacao}{}
\newcommand{\textopadraofolhadeaprovacao}[1]{\renewcommand{\imprimirtextopadraofolhadeaprovacao}{#1}}

\providecommand{\imprimirlogoinstituicao}{}
\newcommand{\logoinstituicao}[2]{\renewcommand{\imprimirlogoinstituicao}{\includegraphics[width={#1}\textwidth]{#2}}}

\renewcommand{\pretextual}
{%
    \pagenumbering{gobble}
    \aliaspagestyle{chapter}{empty}
    \pagestyle{empty}
    \aliaspagestyle{cleared}{empty}
    \aliaspagestyle{part}{empty}
}

\renewcommand{\textual}
{%
    \pagenumbering{arabic}
    \pagestyle{abntheadings}
    \aliaspagestyle{chapter}{abntchapfirst}
    \nouppercaseheads
    \bookmarksetup{startatroot}
}

\renewcommand{\postextual}
{%
    \chapterstyle{abnt}
    \phantompart
}

\renewcommand{\fonte}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \centering\small{Fonte: #1}
}

\renewcommand{\nota}[1]
{%
    \begin{SingleSpacing}\par\end{SingleSpacing}
    \begin{tabular}{l p{.85\textwidth}}%
        Nota: & #1
    \end{tabular}
}

\setlength{\parindent}{1.5cm}

\setlength{\parskip}{0cm}

\renewcommand{\ABNTEXchapterfont}{\normalfont\bfseries}
\renewcommand{\ABNTEXchapterfontsize}{\normalsize}

\renewcommand{\ABNTEXpartfont}{\normalfont}
\renewcommand{\ABNTEXpartfontsize}{\ABNTEXchapterfontsize}

\renewcommand{\ABNTEXsectionfont}{\normalfont}
\renewcommand{\ABNTEXsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsectionfontsize}{\normalsize}

\renewcommand{\ABNTEXsubsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\normalsize}

\renewcommand{\cftchapteraftersnum}{\hfill\textendash\hfill}

\setlength{\cftbeforechapterskip}{1.0em \@plus\p@}

\addto\captionsbrazil{%
    \renewcommand{\listadesiglasname}{LISTA DE ABREVIATURAS E SIGLAS}
    \renewcommand{\listadesimbolosname}{LISTA DE S\'{I}MBOLOS}
    \renewcommand{\listfigurename}{LISTA DE FIGURAS}
    \renewcommand{\listtablename}{LISTA DE TABELAS}
    \renewcommand{\indexname}{\'{I}NDICE REMISSIVO}
    \renewcommand{\pageautorefname}{p\'agina}
    \renewcommand{\sectionautorefname}{Se\c{c}\~ao}
    \renewcommand{\subsectionautorefname}{Subse\c{c}\~ao}
    \renewcommand{\subsubsectionautorefname}{Subsubse\c{c}\~ao}
    \renewcommand{\paragraphautorefname}{Subse\c{c}\~ao}
}

\newcommand{\listofquadrosname}{Lista de Quadros}
\newcommand{\quadroname}{Quadro}
\newfloat[chapter]{quadro}{loq}{\quadroname}
\newlistof{listofquadros}{loq}{\listofquadrosname}
\newlistentry{quadro}{loq}{0}
\counterwithout{quadro}{chapter}
\renewcommand{\cftquadroname}{\quadroname\space}
\renewcommand*{\cftquadroaftersnum}{\hfill--\hfill}

\makeatletter
\renewcommand{\imprimircapa}{
    \begin{capa}
        \begin{center}
		\begin{SingleSpacing}
            		\large\MakeUppercase{\imprimirinstituicao} \\
	    		\abntex@ifnotempty{\imprimirdepartamento}
            		{
                		\MakeUppercase{\imprimirdepartamento} \\
            		}
           		\large\MakeUppercase{\imprimirprograma} \\
		\end{SingleSpacing}
        \end{center}
        \vspace{60pt}
	\begin{center}
		\large\MakeUppercase{\imprimirautor}\\
	\end{center}
	\vspace{120pt}
        \begin{center}
            \ABNTEXchapterfont\large\MakeUppercase{\imprimirtitulo}
            \abntex@ifnotempty{\imprimirsubtitulo}
	    {%
                {\ABNTEXchapterfont: }{\large{\imprimirsubtitulo}}
            }
        \end{center}
	\vspace{120pt}
	\begin{center}
		\large\MakeUppercase{\imprimirprojeto}
	\end{center}
	\vfill
        \begin{center}
		\begin{SingleSpacing}
            		\large\MakeUppercase{\imprimirlocal}\\
            		\large\MakeUppercase{\imprimirdata}
		\end{SingleSpacing}
    	\end{center}

    \end{capa}

}
\makeatother

\makeatletter
\renewcommand{\folhaderostocontent}
{%
    \setcounter{page}{2}
    \begin{center}
        \large\MakeUppercase{\imprimirautor}\\
    \end{center}

    \vspace*{96pt}

    \begin{center}
        \ABNTEXchapterfont\large\MakeUppercase{\imprimirtitulo}
        \abntex@ifnotempty{\imprimirsubtitulo}
	{%
        	{\ABNTEXchapterfont: }{\large{\imprimirsubtitulo}}
        }
    \end{center}

    \vspace*{60pt}

    \abntex@ifnotempty{\imprimirpreambulo}
    {%
        \SingleSpacing
        \begin{tabular}{p{.25\textwidth}p{.13\textwidth}p{.44\textwidth}}
            & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirpreambulo}} \\ & & \\
            \abntex@ifnotempty{\imprimirareaconcentracao}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirareaconcentracaoRotulo\imprimirareaconcentracao}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirlinhapesquisa}
            {%
                & \multicolumn{2}{p{.6\textwidth}}{\small\hyphenpenalty=10000{\imprimirlinhapesquisaRotulo\imprimirlinhapesquisa}} \\ & & \\
            }
            \abntex@ifnotempty{\imprimirorientador}
            {%
                & \small\imprimirorientadorRotulo & \imprimirorientador \\
                & & \small\imprimirinstOrientador \\ & & \\
            }
            \abntex@ifnotempty{\imprimircoorientador}
            {%
                & \small\imprimircoorientadorRotulo & \imprimircoorientador \\
                & & \small\imprimirinstCoorientador
            }
        \end{tabular}
    }

    \vspace*{\fill}

    \begin{center}
	\begin{SingleSpacing}
            \large\MakeUppercase{\imprimirlocal}\\
            \large\MakeUppercase{\imprimirdata}
	\end{SingleSpacing}
    \end{center}
}
\makeatother

\makeatletter
\newcommand{\imprimirfolhadeaprovacao}
{%
    \begin{folhadeaprovacao}
        \vspace*{\fill}

        \begin{tabular}{p{.45\textwidth}p{.45\textwidth}}
            & \imprimirtextopadraofolhadeaprovacao \\
        \end{tabular}

        \vspace*{\fill}
    \end{folhadeaprovacao}
}
\makeatother

\renewenvironment{dedicatoria}[1][]
{%
    \ifthenelse{\equal{#1}{}}{%
        \PRIVATEbookmarkthis{\dedicatorianame}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}

\renewenvironment{epigrafe}[1][]
{%
    \ifthenelse{\equal{#1}{}}
    {%
        \PRIVATEbookmarkthis{\epigraphname}
    }{\pretextualchapter{#1}}

    \vspace*{\fill}

    \begin{flushright}
        \begin{minipage}{.5\textwidth}
            \begin{SingleSpacing}
                \setlength\parindent{0pt}
                \setlength\parskip{12pt}
}
{%
            \end{SingleSpacing}
        \end{minipage}
    \end{flushright}
}
