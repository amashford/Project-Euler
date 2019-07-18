# Challenge 1
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all multiples of 3 or 5 below 1000.

# Use a for loop
For($i = 1; $i -lt 1000; $i++){

    if($i % 3 -eq 0 -or $i % 5 -eq 0){

        $result += $i

    }

}

# Print result 
$result

# Result is 233,168 as expected
