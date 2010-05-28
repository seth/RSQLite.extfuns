\name{RSQLite.extfuns-package}
\alias{RSQLite.extfuns-package}
\alias{RSQLite.extfuns}
\docType{package}
\title{
Math and String Extension Functions for RSQLite
}
\description{
  
This package uses SQLite's loadable extension feature to provide a
number of additional SQL functions and aggregates.  The package is a
wrapper of extension functions written by Liam Healy and made available
through the SQLite website (http://www.sqlite.org/contrib).

}
\section{Available extension functions}{
  You can enable all of the following extension functions by calling the
  \code{init_extensions} function on an RSQLite database connection object.


\subsection{Math functions}{
  
\tabular{lll}{
 acos          \tab  radians  \tab  log    \cr
 asin          \tab  cos      \tab  log10  \cr
 atan          \tab  sin      \tab  power  \cr
 atn2          \tab  tan      \tab  sign   \cr
 atan2         \tab  cot      \tab  sqrt   \cr
 acosh         \tab  cosh     \tab  square \cr
 asinh         \tab  sinh     \tab  ceil   \cr
 atanh         \tab  tanh     \tab  floor  \cr
 difference    \tab  coth     \tab  pi     \cr
 degrees       \tab  exp      \tab         \cr
}
}

\subsection{String functions}{

\tabular{ll}{
replicate  \tab  replace  \cr
charindex  \tab  reverse  \cr
leftstr    \tab  proper   \cr
rightstr   \tab  padl     \cr
ltrim      \tab  padr     \cr
rtrim      \tab  padc     \cr
trim       \tab  strfilter\cr
}
}

\subsection{Aggregate functions}{

\tabular{l}{
stdev         \cr
variance      \cr
mode          \cr
median        \cr
lower_quartile\cr
upper_quartile\cr
}
}
}

\author{
Seth Falcon <seth@userprimary.net>
Maintainer: Seth Falcon <seth@userprimary.net>
}
\references{
See \url{http://www.sqlite.org/contrib/} for the original source of the
SQLite extension function source code written by Liam Healy.
}

\keyword{ package }

\examples{
## basic usage looks like this
db <- dbConnect(SQLite(), dbname = ":memory:")
init_extensions(db)

## now you can use any of the extension functions listed above in
## SQL queries.
dbDisconnect(db)
}
