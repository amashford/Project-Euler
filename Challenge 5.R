#Challenge 5
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?



#Check Function
divide_function <- function(i) {
  
  for(j in 11:20){
    
    if(i%%j == 0){
      
      result <- TRUE
      
    } else {
      
      result <- FALSE
      
      break
      
    }
    
  }
  
  print(result)
  
}


#Setup
step <- 2560

i <- 2560

solution <-  FALSE


#Loop
while(solution == FALSE){
  
  if(divide_function(i) == TRUE) {
    
    solution <-  TRUE
    
    break
    
    print(i)
    
  } else {
    
    i <- i + step
    
  }
  
}

#232792560
