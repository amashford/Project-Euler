# Challenge 4
# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# 1. Palindrome check function
pal_check <- function(x){
  
  # Convert x to string
  str_x <- strsplit(as.character(x), NULL)[[1]]
  
  # Reverse string
  rev_x <- rev(str_x)
  
  x_rev <- as.integer(paste0(rev_x, collapse = ""))
  
  if(x == x_rev){TRUE} else {FALSE}
}

# 2. Create List of numbers
f <-NULL
a <- 1
for(i in 100:999){
  
  for(j in 100:999){
    
    f$Num[a] <- i * j
    
    f$i[a] <- i
    
    f$j[a] <- j
    
    a <- a + 1
    
  }
}

# 3. Apply the function to each element of vector
test <- lapply(f$Num,pal_check)

# 4. Record indices where test is TRUE
inds <- which(test == TRUE)

# 5. Find largest number where test is true
max(f$Num[inds]) #906609

which(f$Num == 906609) #804514

f$i[804514] #993

f$j[804514] #913
