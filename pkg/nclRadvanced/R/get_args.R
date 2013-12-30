print_dots = function(...) {
    dots_list = eval(substitute(alist(...)))
    dots_vec = unlist(g)
    for(n in names(dots_vec))
      message(n, " = ", dots_vec[n])
    invisible(dots_vec)
}

