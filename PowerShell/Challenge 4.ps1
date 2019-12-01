# Challenge 4
# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# 1. Create a function to check whether a number is palindromic

# Create function to return the reverse of a number
Function Reverse-Number{param([int]$num)

    $string = $num.ToString()
    
    $string_arr = $string.ToCharArray()
    
    [array]::Reverse($string_arr)
    
    $rev_num = -join($string_arr)
    
    return($rev_num)

}

# Create function to check if a number is a palindrome using reverse function
Function Check-Palindrome{param([int]$num)

    $rev_num = Reverse-Number $num

    if($num -eq $rev_num){

        return($true)

    } else { 

        return($false)
    
    }
}

# 2. Create list of all multiples of two three digit numbers that are palindromes

$Palindromes = @()

for($i = 100; $i -lt 1000; $i ++){
    
    for($j = 100; $j -lt 1000; $j++){
   
        if(Check-Palindrome ($i * $j) -eq $true){

         $Palindromes += ($i * $j)

        }       

    }

}        

# 3. Retrieve largest palindrome
($Palindromes | Measure -Maximum).Maximum

# Result is 906,609
