\name{GetDataFrame}
\alias{GetDataFrame}
\title{Subset of the movie data set}
\usage{
  GetDataFrame(student_id)
}
\arguments{
  \item{student_id,}{a student id, i.e. b1234567}
}
\value{
  A data frame with a random numer of rows
}
\description{
  This function creates a subset (of random rows) of the
  IMDB movie data frame. Given a student id, this function
  will always return the same subset.
}
\examples{
##Given the same student id
##the same data set is returned
d1 = GetDataFrame("b1234567")
d2 = GetDataFrame("b1234567")
identical(d1, d2)
##Different ids get different data
d3 = GetDataFrame("b1234568")
identical(d1, d3)
}

