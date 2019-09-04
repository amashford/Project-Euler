# Challenge 6
# The sum of the squares of the first ten natural numbers is 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# List of the natural numbers
nat_nums = list(range(1,101))

# Function to square elements of a list
def square(list):
    return [i ** 2 for i in list]

# Squared numbers
sqr_nums = square(nat_nums)

# Sum of squares
sum_sqr = sum(sqr_nums) # 338350

# Square of sum
sqr_sum = sum(nat_nums) ** 2 # 25,502,500

# Difference
sqr_sum - sum_sqr 

# Result is 25,164,150
