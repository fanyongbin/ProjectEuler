# Basic answer use loop
SumMulti <- function(n,x,y){
num <- 0
for (i in 1:n-1){
  
  if (i %% x == 0 | i %% y == 0){
    #print(i)
    num <- num + i
  }
}
print(num)
}
SumMulti(1000)

# Better answer user Inclusion–exclusion principle 
# Compute the sum of natural numbers below n
Sum1toN <- function(n){
  
  return(n*(n+1)/2)
}

# Compute the sum of natural numbers below n that are multiples of x or y. 
SumMultiples <- function(n,x,y){
  
  return(Sum1toN((n-1) %/% x) * x + Sum1toN((n-1) %/% y) * y - Sum1toN((n-1) %/% (x*y)) * (x*y))
}
SumMultiples(1000)
