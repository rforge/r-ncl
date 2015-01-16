\docType{data}
\name{footie}
\title{Results from matches in the Premier League.}
\value{
  A data frame with 1520 rows and 6 variables.
}
\description{
  Results from matches in the English Premier League 
  from the 2007/08 season to the 2010/11 season
}
\details{
  The Premier League is an English professional league for 
  men's association football clubs.
}
\note{
  The data set contains the following
  fields: \describe{ \item{Date.}{Date of match.}
  \item{HomeTeam.}{Name of the home team.}
  \item{AwayTeam.}{Name of the away team.}
  \item{FTR.}{Full time result; a factor with levels 
  A, D, H representing an away win, draw or home win.}
  \item{HY.}{Number of home team yellow cards.}
  \item{AY.}{Number of away team yellow cards.}}
}
\examples{
data(footie)
}
\keyword{datasets}

