# Challenge 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10,001st prime number?

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

# List of primes between 0 and 1,000,000
prime_numbers <- primes(1000000)

# Return prime 10,001
prime_numbers[10001]

# Result is 104,743
