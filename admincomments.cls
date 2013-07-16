% admincomments.cls
%  
% 2013-July-01 Ross Schulman rschulman@gmail.com

% --- Class structure: identification part
% ---
\ProvidesClass{admincomments}[2013/07/01 version 0.10 Administrative agency comments]
\NeedsTeXFormat{LaTeX2e}

% --- Class structure: initial code part
% ---

% --- Which agency?

\def\@agency{}
\DeclareRobustCommand{\setagency}[1]{\def\@agency{#1}}
\DeclareRobustCommand{\show@agency}{\@agency}

\def\@city{}
\DeclareRobustCommand{\setcity}[1]{\def\@city{#1}}
\DeclareRobustCommand{\show@city}{\@city}

% --- Docket caption and number?

\def\@topic{}
\DeclareRobustCommand{\settopic}[1]{\def\@topic{#1}}
\DeclareRobustCommand{\show@topic}{\@topic}

\def\@docket{}
\DeclareRobustCommand{\setdocket}[1]{\def\@docket{#1}}
\DeclareRobustCommand{\show@docket}{\@docket}

% --- Author or organization submitting?

\def\@author{}
\DeclareRobustCommand{\setauthor}[1]{\def\@author{#1}}
\DeclareRobustCommand{\show@author}{\@author}

% --- Not declaring any special options for this class, so we pass them all on to article

\LoadClassWithOptions{article}

\newenvironment{comment}{%
\begin{center}
	\textit{Before the} \\
	\textbf{\show@agency} \\
	\show@city
\end{center}

\begin{tabular}{l r}
	 & ) \\
	 \textit{In the matter of} & ) \\
	 \show@topic & ) \\
	 {Docket No.} \show@docket & ) \\
	 & ) \\
	 \cline{1-1} &  \\
\end{tabular}

\begin{center}
	{COMMENTS OF} \\
	\MakeUppercase{\@author}
\end{center}
}



