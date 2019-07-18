# Challenge 3
# The prime factors of 13,195 are 5, 7, 13 and 29.
# What is the largest prime factor of 600,851,475,143?

# Potential method:
# Create function to find primes
# Create function to check which primes are prime factors
# Largest is the answer

# Sieve of Eratosthenes for finding primes
primes <- function(n){
  p <- 2:n
  i <- 1
  while (p[i] <= sqrt(n)) {
    p <-  p[p %% p[i] != 0 | p == p[i]]
    i <- i + 1
  }
  p
}

# Prime Factors
# 600,851,475,143 is too large but only need to check up to SQRT of it which is manageable
prime_factors <- function (n) {
  factors <- c() 
  primes <- primes(floor(sqrt(n))) 
  d <- which(n %% primes == 0) 
  if (length(d) == 0) {n}
  for (i in primes[d]) { 
    while (n %% i == 0) { 
      factors <- c(factors, i)
      n <- n / i
      } 
    } 
  if (n > 1) factors <- c(factors, n)
  return(factors)
}

max(prime_factors(600851475143)) #6857
