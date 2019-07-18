# Challenge 6
# The sum of the squares of the first ten natural numbers is:
# 12 + 22 + ... + 102 = 385

# The square of the sum of the first ten natural numbers is:
# (1 + 2 + ... + 10)2 = 552 = 3025

# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

# Sum square numbers
for($i = 1; $i -lt 101; $i++){

$sum_squares += $i * $i

}

# Square sum numbers
for($i = 1; $i -lt 101; $i++){

$nums += $i

}

$nums_squared = $nums * $nums

# Difference
$nums_squared - $sum_squares

# Result is 25,164,150
