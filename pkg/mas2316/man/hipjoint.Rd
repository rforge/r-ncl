\docType{data}
\name{hipjoint}
\alias{hipjoint}
\title{The hip joint data set}
\value{
  A data frame
}
\description{
  The location of the hip joint centre (HJC) is required
  for calculations of hip moments, the location and
  orientation of the femur, and muscle lengths and lever
  arms. In clinical gait analysis, the HJC is normally
  estimated using linear regression equations based on
  normative data obtained from adult populations. There is
  limited relevant anthropometric data available for
  children, despite the fact that clinical gait analysis is
  predominantly used for the assessment of children with
  cerebral palsy.
}
\details{
  The data set has 32 rows and 10 columns. Each row
  corresponds to a patient and columns to a variable of
  interest. The variables are: \describe{ \item{Cer}{does
  the patient have cerebral palsy.} \item{Sex, Age,
  Mass}{Patient variables} \item{PW}{Pelvic width.}
  \item{PD}{Pelvic depth.} \item{LL}{Leg length.}
  \item{x,y,z}{the coordinates of the HJC.}}
}
\examples{
data(hipjoint)
}
\keyword{datasets}

