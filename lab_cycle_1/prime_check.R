get_input <- function(prompt){
  cat(prompt)
  input <- scan(what = integer(), nmax = 1, quiet = TRUE)
  return(input)
}

check_prime <- function(p_num){
  if(p_num<=1){
    return(FALSE)
  }
  
  for(i in 2:sqrt(p_num)){
    if(p_num %% i == 0){
      return(FALSE)
    }
  }
  return(TRUE)
}

prime_range <- function(start, end){
  prime_set <- c()
  
  for(num in start:end){
    if(check_prime(num)){
      prime_set <- c(prime_set, num)
    }
  }
  return(prime_set)
}

p_num <- get_input("Enter number to check whether it's prime: ")

if(check_prime(p_num)){
  cat("The provided number is a prime number!")
}else{
  cat("The provided number is not a prime number!")
}

start <- get_input("Enter the start range: ")
end <- get_input("Enter the end range: ")
prime_set <- prime_range(start, end)

cat("The prime numbers in the range ",start," to ",end,": ", prime_set)
