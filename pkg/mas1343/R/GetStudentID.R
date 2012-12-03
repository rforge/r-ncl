GetStudentID = function(student_number){
  str_split = unlist(strsplit(student_number, ""))
  if(!is.element(str_split[1], c("a", "b", "A", "B"))){
    message("Error in student id")
    message("Your student id starts with an 'a' or a 'b'")
    stop()
  }

  if(length(str_split) != 8){
    cat("Error in student id\n")
    cat("The length of your student id should be 8.\n")
    stop()
  }
  return(paste(as.numeric(str_split[2:8]), collapse=""))
}
