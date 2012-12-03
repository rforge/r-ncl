#' Subset of the movie data set
#' 
#' This function creates a subset (of random rows) of the IMDB movie 
#' data frame. Given a student id, this function will always return the 
#' same subset.
#' @param student_id, a student id, i.e. b1234567
#' @return A data frame with a random numer of rows
#' @export
#' @examples
#' ##Given the same student id
#' ##the same data set is returned
#' d1 = GetDataFrame("b1234567") 
#' d2 = GetDataFrame("b1234567") 
#' identical(d1, d2)
#' ##Different ids get different data
#' d3 = GetDataFrame("b1234568") 
#' identical(d1, d3)
GetDataFrame = function(student_id) {
  student_number = GetStudentID(student_id)
  set.seed(student_number)
  data(movies, envir=environment())
  d = movies
  l = round(runif(1, 4000, 4500))
  del_rows = sample(1:nrow(d), l)
  
  d = d[-del_rows,]
  rownames(d) = 1:nrow(d)

  return(d)
}






