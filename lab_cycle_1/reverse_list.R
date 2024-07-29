reverse_list <- function(lst){
  if(length(lst)<=1){
    return(lst)
  }else{
    return(c(reverse_list(lst[-1]), lst[1]))
  }
}

my_list <- list(5, 4, 3, 2, 1)
reversed_list <- reverse_list(my_list)
cat("The reversed list: \n")
print(reversed_list)