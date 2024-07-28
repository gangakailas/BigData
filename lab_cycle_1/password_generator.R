generate_password <- function(password_length){
  
  if(password_length<4){
    stop("Password length must be at least 4!")
  }
  
  uppercase_letters <- "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  lowercase_letters <- "abcdefghijklmnopqrstuvwxyz"
  digits <- "0123456789"
  special_characters <- "!@#$%^&*()-_=+[]{}|;:,.<>?/"
  
  all_characters <- paste0(uppercase_letters, lowercase_letters, digits, special_characters)
  
  password <- c(
    sample(strsplit(uppercase_letters,NULL)[[1]], 1),
    sample(strsplit(lowercase_letters, NULL)[[1]], 1),
    sample(strsplit(digits, NULL)[[1]], 1),
    sample(strsplit(special_characters, NULL)[[1]], 1)
  )
  
  if(password_length>4){
    for(i in 5:password_length){
      rand_char <- sample(strsplit(all_characters, NULL)[[1]],1)
      password <- c(password, rand_char)
    }
  }
  
  password <- sample(password)
  password <- paste0(password, collapse="")
  return(password)
}


password_length <- as.integer(readline(prompt = "Enter the desired password length: "))

generated_password <- generate_password(password_length)

cat("Generated Password: ", generated_password, "\n")