#=================================================
# Basic answer
#=================================================

# Find the largest palindrome made from the product of two n-digit numbers.

LarPal <- function(n){
  
  a <- 1 * 10^(n-1)
  b <- 1 * 10^n - 1
  
  pal <- c()
  kk <- 1
  
  for(i in b:a){
    
    for(j in b:i){
    
    num <- i * j
    #x <- c(i,j,num)
    #print(x)
    m <- nchar(num)
    for(k in 1:(round(m/2) + 1)){
      
      if(substr(num,k,k) != substr(num,m-k+1,m-k+1)){
        
        break
      }else{
        next
      }
    }
    if(k == round(m/2) + 1){
      
      pal[kk] <- num
      kk <- kk + 1
    }
    }
  }
  return(max(pal))
}

# The answer
LarPal(3)


