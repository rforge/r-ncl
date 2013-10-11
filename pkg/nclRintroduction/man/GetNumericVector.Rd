\name{GetNumericVector}
\alias{GetCharacterVector}
\alias{GetLogicalVector}
\alias{GetNumericVector}
\title{Generate random vectors}
\usage{
  GetNumericVector(seed = 1)

  GetLogicalVector(seed = 1)

  GetCharacterVector(seed = 1)
}
\arguments{
  \item{seed}{A positive interger for the random number
  generator. Default 1.}
}
\description{
  These functions create vectors of numerics, logicals or
  characters. Given a seed, the functions will always
  return the same subset.
}

