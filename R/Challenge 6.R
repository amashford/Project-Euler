# Challenge 6
# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# Vector of natural numbers
nat_nums <- seq(1,100)

# Vector of squared natural numbers
sqr_nums <- nat_nums^2

# Sum of squares
sum_sqr <- sum(sqr_nums)

# Square of sum
sqr_sum <- (sum(nat_nums))^2

# Difference
sqr_sum - sum_sqr

# Answer is 25,164,150
