# Challenge 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

#Create function for sieve of Sudaram
Function Return-Primes{param([int]$n)

    $primes = @()

    [int] $new_n = ($n - 2) / 2

    [array] $marked = @(0) * ($new_n + 1)

    for($i = 1; $i -lt $new_n + 1; $i++){

        $j = $i

        while(($i + $j + 2 * $i *$j) -le $new_n){

            $marked[$i + $j + 2 * $i *$j] = 1

            $j += 1

        }
    }

    if($n -gt 2){$primes += @(2)}

    for($i = 0; $i -lt $new_n + 1; $i++){

        if($marked[$i] -eq 0){$primes += @((2 * $i) + 1)}

    }

    return($primes)
    
}

#Function to find prime factors
Function Return-Highest_Prime_Factor{param([int64]$n)
    
    $factors = @()

    [int] $n2 = [Math]::SQRT($n)
    
    $primes = Return-Primes -n $n2
    
    $inds = @()

    $prime_facts = @()

    foreach($prime in $primes){ 
        
        if($n % $prime -eq 0){$prime_facts += @($prime)}

    }
    
    return($prime_facts[-1]) 
}

Return-Highest_Prime_Factor 600851475143

#Result is 6857
