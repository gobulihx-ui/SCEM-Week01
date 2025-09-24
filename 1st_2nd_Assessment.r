x_vect <- seq(12,2,-2)
X <- matrix(x_vect,2,3)

Y <- matrix(seq(1,4),2)
Z <- matrix(seq(4,10,2),2)
trans_Y <- t(Y)
trans_X <- t(X)
Z%*%Y
Y%*%X
solve(Y) %*% Y
solve(Y) %*% X
solve(Y,X)
# one more try

myFirstRFunc <- function(n){
  stopifnot(is.numeric(n), n%%1==0, n>0) # make sure input is a positive integer number
  total <- 0 # set initial summation
  seq <- seq(n)
  for(i in seq[1:length(seq)-1]){
    if(i %% 2 == 0){
      total <- total + i
    }else if(i %% 7 == 0){
      total <- total + i
    }
  }
  
  return(total)
}
myFirstRFunc(1000)