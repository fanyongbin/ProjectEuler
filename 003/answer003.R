#=================================================
# Basic answer
#=================================================

# Compute the largest prime factor of the number n

MaxPrimeFactor <- function(n){
  
  A <- c()
  j = 1
  
  # Find the factors of the number n
  for(i in 2:round(sqrt(n))){
   
    if(n %% i == 0){
     
     A[j] <- i
     j <- j + 1
    }
  }

  # Find the largest prime factor in the factors
  for(i in 1:length(A)){
    
    x <- A[length(A)-i+1]
    
    for(j in 2:(x-1)){
      
      if(x %% j == 0){
        
        break
      }
    }
    if(j == x-1){
      break
    }else{
      next
    }
  }
  return(x)
}

# The answer
MaxPrimeFactor(600851475143)



