#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2

#For example, 3^2 + 4^2 = 5^2.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

#Create empty list
nums = list()

#Add all permuations of a, b, c that sum to 1000 to list
for a in range(1,333):
        for b in range((a + 1), 500):
                for c in range((b + 1), 998):
                        if (a + b + c) == 1000:
                            nums.append([a, b, c])

#Check each set of numbers in list for a Pythagorean triplet
for i in nums:
    if i[0]**2 + i[1]**2 == i[2]**2:
        print(i)
        break
        
#Result is [200, 375, 425]
