# Challenge 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2

# For example, 3^2 + 4^2 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

for(a in 1:333){
  
  for(b in (a + 1):499){
  
      for(c in (b + 1):997){
    
          if((a + b + c == 1000) & (a^2 + b^2 == c^2)){
        
            print(c(a, b, c))
        
            break
      }
    }
  }
}
