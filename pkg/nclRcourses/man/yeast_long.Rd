\docType{data}
\name{yeast_long}
\alias{yeast_long}
\alias{yeast_wide}
\title{Movie information and user ratings from IMDB.com.}
\value{
  A data frame
}
\description{
  The data set we are going to use in the next few chapters
  comes from Gillespie et al., 2010. This paper is a
  tutorial for analysing time-course data in Bioconductor.
  The paper and associated R code can be downloaded from
  \url{https://github.com/csgillespie/bmc-microarray} The
  data were collected according to the experimental
  protocol described in Greenal et al.. Briefly, three
  biological replicates were studied on each of a wild-type
  (WT) yeast strain and a strain carrying the cdc13-1
  temperature sensitive mutation (in which telomere
  uncapping is induced by growth at temperatures above
  around 27 degrees C). These replicates were sampled
  initially at 23 degrees C (at which cdc13-1 has
  essentially WT telomeres) and then at 1, 2, 3 and 4 hours
  after a shift to 30 degrees C to induce telomere
  uncapping. The thirty resulting RNA samples were
  hybridised to Affymetrix yeast2 arrays. The microarray
  data are available in the ArrayExpress database under
  accession numberE-MEXP-1551.
}
\details{
  The two data sets contain the same data, but in wide and
  long data frames.
}
\note{
  The values in the data frame have been normalised using
  the rma procedure. To reduce the memory footprint, only
  the first 500 probes are included in this data set. The
  columns in data_wide are \describe{ \item{ID.}{Probe ID}
  \item{value.}{Normalised log expression level}
  \item{type.}{Mutant or wild-type} \item{rep.}{Replication
  number: 1, 2, 3} \item{tps.}{Time point: 0, 60, 120, 180,
  240 minutes} }
}
\references{
  Gillespie, C. S., et al, 2010. Analysing yeast time
  course microarray data using BioConductor: a case study
  using yeast2 Affymetrix arrays. BMC Research Notes, 3:81.
}
\keyword{datasets}

