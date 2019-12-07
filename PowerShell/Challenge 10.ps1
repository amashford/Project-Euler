# Challenge 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

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

#Create list of primes below 2mil
$prime_list = Return-Primes -n 2000000

#Create results variable
$sum = 0

#Sum array values
$prime_list | foreach{$sum += $_}

$sum

#Result is 142,913,828,923 
