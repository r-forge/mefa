\name{nameAlnum}
\alias{nameAlnum}
\alias{pasteDate}
\alias{paste0date}
\title{
Utility functions, mostly for character manipulation
}
\description{
Utility functions, mostly for character manipulation.
}
\usage{
pasteDate(..., sep = " ", collapse = NULL, sep.date = sep)
paste0date(..., collapse = NULL)
nameAlnum(x, capitalize=c("asis", "first", "none", "all", "mixed"), 
    collapse=" ")
}
\arguments{
  \item{x}{
a (character) vector.
}
  \item{\dots}{
one or more R objects, to be converted to character vectors.
}
  \item{sep}{
a character string to separate the terms.
}
  \item{collapse}{
an optional character string to separate the results.
For \code{nameAlnum} it is the separator between the words in the output.
}
  \item{sep.date}{
a character string to separate the terms from the data itself.
}
  \item{capitalize}{
character, which letter of each words should be capitalized.
\code{"mixed"} capitalizes the first letter and case is unchanged
for the rest. \code{"first"} capitalizes first letter and
uses lower case for the rest. Other options are self explanatory.
}
}
\value{
Character vector.
}
\author{
Peter Solymos <solymos@ualberta.ca>
}
\seealso{
\code{\link{paste}}, \code{\link{paste0}}, 
\code{\link{strsplit}}, \code{\link{gsub}}
}
\examples{
paste0(pasteDate("file", "name", sep="-", sep.date="_"), ".csv")
paste0(paste0date("file", "name", sep.date="_"), ".csv")

data(abmibirds)
x <- data.frame(Name=levels(abmibirds[["Common.Name"]]),
    NameAlnum=nameAlnum(levels(abmibirds[["Common.Name"]])))
x[grep("'", x$Name),]
}
\keyword{ manip }

