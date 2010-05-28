\name{init_extensions}
\alias{init_extensions}

\title{
Initialize SQLite extension functions on a SQLite DB connection
}
\description{
This function loads extension functions to make them available to an
RSQLite database connection.  The databse connection needs to have been
created by passing \code{loadable.extensions = TRUE} to \code{dbConnect}
(this is the default as of RSQLite 0.9-1).
}
\usage{
init_extensions(db)
}

\arguments{
  \item{db}{
    An RSQLite database connection as returned by \code{dbConnect}.
}
}
\value{
  TRUE if the extensions were successfully loaded.
}
\references{
 For details on loadable extensions in SQLite, see
 \url{http://www.sqlite.org/cvstrac/wiki?p=LoadableExtensions}.
 
 The extensions functions included in this package were written by Liam
 Healy and made available in the contrib section of the SQLite website
 (\url{http://www.sqlite.org/contrib}).
}
\author{
Seth Falcon
}

\seealso{
  The package manual page has a complete list of the extension
  functions: \code{\link{RSQLite.extfuns}}
}
\examples{
db <- dbConnect(SQLite(), dbname = ":memory:",
                loadable.extensions = TRUE)

init_extensions(db)

data(USArrests)
dbWriteTable(db, "t1", USArrests)
dbGetQuery(db, "select variance(Murder) from t1")[[1]]
}
