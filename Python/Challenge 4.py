# Challenge 4
# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# Palindrome check function
def Pal_Check(x):
    x = str(x)
    y = x[::-1]

    if x == y:
        return True

# Create the list of multiples
list = []

for i in range(100,1000):
    
    for j in range(100,1000):
        
        list.append(i*j)

# Filter list to find palindromes
palindromes = []

for i in list:
    if Pal_Check(i) == True:
        palindromes.append(i)

# Return the largets palindromes
max(palindromes)

# Result is 906609
