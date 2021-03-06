#' Checks file name 
#' 
#' This function is used in practical 3 and checks that the file has been name correctly.
#' @param path the path to where the file is located on your computer
#' @return A message describing whether the file has been named correctly.
#' @export
#' @examples
#' \dontrun{
#' CheckFunctionName("/tmp/practical3.R")
#' }
CheckFunctionName = function(path) {
    if(!file.exists(path))
        stop("File does not exist. Is your path correct")
    
    f_ext = substr(path, nchar(path)-1, nchar(path))
    if(f_ext != ".R")
        stop("Correct file extension is .R you have ", f_ext)
    
    fname = substr(path, nchar(path)-11, nchar(path))
    if(fname != "practical3.R")
        stop("Correct file name is practical3.R you have ", fname)

    message("File name is correct.")
    invisible(TRUE)
}

#' @export
#' @rdname CheckFunctionName
CheckFunctionLoading = function(path) {
    
    CheckFunctionName(path)
    y = try(sys.source(path, new.env() ), TRUE)
    if(class(y) == "try-error") {
        stop("\nError when loading your file: \n", y[1])
    } 
    message("File can be loaded.")
}


