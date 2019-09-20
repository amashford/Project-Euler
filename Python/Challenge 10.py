# Challenge 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# Packages 
import math
import numpy as np

# Sieve of Atkin
def Sieve_Of_Atkin(n):
    primes = [2,3]
    sieve = [False] * (n + 1) #list of vhich values are prime

    for x in range(1, int(math.sqrt(n)) + 1): #loop through x to sqrt(n)
        for y in range(1, int(math.sqrt(n)) + 1): #loop through y to sqrt(n)
            z = 4*x**2 + y**2 #Atkins first equation
            if z <= n and (z % 12 == 1 or z % 12 == 5): sieve[z] = not sieve[z]
            z = 3*x**2+y**2 #Atkins second equation
            if z <= n and z % 12 == 7: sieve[z] = not sieve[z]
            z = 3*x**2 - y**2 #Atkins third equation
            if x > y and z <= n and z % 12 == 11: sieve[z] = not sieve[z]

    for x in range(5, int(math.sqrt(n))): #remove composite numbers
        if sieve[x]:
            for y in range(x**2, n+1, x**2):
                sieve[y] = False

    for p in range(5, n): #add primes to list
        if sieve[p]: 
            primes.append(p)
    return primes #return list of primes

# sum primes below 2 million
sum(Sieve_Of_Atkin(2000000))

# Result is 142,913,828,922
