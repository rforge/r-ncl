globalVariables("yeast_long")
#' Subset of the yeast data set
#' 
#' This function creates a subset (of random rows) of the yeast data set
#' data frame. The seed argument resets the random number generator.
#' @param seed a positive interger for the random number generator. Default 1.
#' @return A data frame with a random numer of rows
#' @export
#' @examples
#' ##Given the same student id
#' ##the same data set is returned
#' d1 = GetDataFrame() 
#' d2 = GetDataFrame(10) 
#' identical(d1, d2)
GetDataFrame = function(seed=1) {
  set.seed(seed)
  data(yeast_long,envir = environment())
  d = yeast_long
  l = sample(50:100, 1)
  del_rows = sample(1:nrow(d), l)
  
  d = d[-del_rows,]
  rownames(d) = 1:nrow(d)

  return(d)
}






