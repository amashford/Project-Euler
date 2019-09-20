# Challenge 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

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

# List of primes below 2,000,000
prime_nums <- primes(2000000)

# Sum of primes
sum(prime_nums)

# Result is 142,913,828,922
