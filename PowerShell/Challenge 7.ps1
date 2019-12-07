# Challenge 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10,001st prime number?

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

    for($i = 1; $i -lt $new_n + 1; $i++){

        if($marked[$i] -eq 0){$primes += @((2 * $i) + 1)}

    }

    return($primes)
    
}

#Create list of primes
$prime_list = Return-Primes -n 200000

#Return 10001st element
$prime_list[10000]

#Result is 104,743
