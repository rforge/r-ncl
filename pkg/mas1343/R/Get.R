#'Generate random vectors
#'
#' These functions create vectors of numerics, logicals or characters.
#' Given a student id, the functions will always return the 
#' same subset.
#' @param student_id, a student id, i.e. b1234567
#' @export
GetNumericVector = function(student_id){
  student_number = GetStudentID(student_id)
  set.seed(student_number)
  l = sample(50000:60000, 1)
  m = runif(1, -5, 5)
  v = round(rnorm(l, m, 20), 1)
  return(v)
}

#' @export
#' @rdname GetNumericVector
GetLogicalVector = function(student_id){
  student_number = GetStudentID(student_id)
  set.seed(student_number)
  l = sample(52000:60000, 1)
  v = sample(c(TRUE, FALSE), l, replace=TRUE)
  return(v)
}

#' @export
#' @rdname GetNumericVector
GetCharacterVector = function(student_id){
  student_number = GetStudentID(student_id)
  set.seed(student_number)
  l = sample(51000:60000, 1)
  v = sample(LETTERS, l, replace=TRUE)
  return(v)
}

