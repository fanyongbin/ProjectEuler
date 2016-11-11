#=================================================
# Basic answer use loop
#=================================================

# Compute the sum of the even-valued terms in 
# the Fibonacci sequence whose values do not exceed n.

SumEvenFib <- function(n){
  sum <- 2
  fibn <- 1
  fibn1 <- 2
  i <- 3
  while( i<=n ){
    fibn <- fibn1
    fibn1 <- i
    if ( i %% 2 == 0){
      
      sum <- sum + i
    }
    i <- fibn + fibn1
  }
  return(sum)
}

# The answer
SumEvenFib(4000000)
