# Challenge 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which, a^2 + b^2 = c^2

# For example, 3^2 + 4^2 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000. Find the product abc.

:loop for($a = 1; $a -lt 333; $a++){
  
    for($b = 2; $b -lt 498; $b++){
  
        for($c = 3; $c -lt 997; $c++){
    
            if((($a + $b + $c) -eq 1000) -and (($a*$a + $b*$b) -eq $c*$c)){
        
                Write-Host "$a, $b, $c"
        
                break loop
            }
        }
    }
}

#Result is 200, 375, 425
