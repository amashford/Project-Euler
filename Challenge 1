#Challenge 1
#
#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
#Find the sum of all the multiples of 3 or 5 below 1000.

#Potential method:
#Create vector of all numbers between 1 and 1000 (using seq function)
#Look through vector and check if each element is divisible by 3 or 5, return true or false (use lapply/sapply)
#Select indices of vector where true
#Sum them for the answer

###METHOD 1###
#1. Create vector of all numbers form 1 to 1000
nums <- seq(from = 1, to = 1000)

nums

#2. Create function to check if the result of dividing by 3 or 5 in an integer, return TRUE / FALSE
check <- function(x){
  if((x/3)%%1==0){res = TRUE}
  
  else if ((x/5)%%1==0) {res = TRUE}
  
  else {res = FALSE}
  
  return(res)
}

#3. Apply the function to each element of vector
test <- lapply(nums,check)

#4. Record indices where test is TRUE
inds <- which(test == TRUE)

nums[inds]

#5. Sum the values of those elements
sum(nums[inds])

#Answer is 234,168

####METHOD 2####
#Use a for loop
x <- 0
for (i in 1:1000){
  if((i/3)%%1==0){x = x + i}
  else if ((i/5)%%1==0){x = x + i}
  i <- i + 1
}

print(x)

#Also returns 234,168
