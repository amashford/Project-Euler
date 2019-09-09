# Challenge 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Step by 2520 as it's the smallest number divisible by 1:10
i = 2520

solution = False

# Only need to check divisible by 11:20 as any number will also be divisble by 1:10
while  solution == False:
    if i % 11 == 0 and i % 12 == 0 and i % 13 == 0 and i % 14 == 0 and i % 15 == 0 and i % 16 == 0 and i % 17 == 0 and i % 18 == 0 and i % 19 == 0 and i % 20 == 0:
        solution = True
        print(i)
    i += 2520

# Result is 232,792,560
