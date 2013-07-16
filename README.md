LaTeX for Lawyers
=================

Introduction
------------
This is the beginnings of a LaTeX source for common file classes needed by lawyers. I began with simple comments to an Administrative Agency but am welcome to pull requests including expansion on that class or other useful classes.

Installation
------------
For a comprehensive look at installing new class files, see http://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages

Options
-------
The class file creates five variables that can be set as follows:

```
\setagency{*text*}
\setcity{*text*}
\settopic{*text*}
\setauthor{*text*}
\setdocket{*text*}
```
These variables will be used to fill in the header on the first page of the comments. Author in this case can be either an individual or an organizational name. Topic is the "name" of the proceeding that comes after "In the matter of". Docket is the docket number.