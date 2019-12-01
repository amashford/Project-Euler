# Challenge 5
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# Step by 2520 as it's the smallest number divisible by 1:10
$i = 2520

$solution = $False

# Only need to check divisible by 11:20 as any number will also be divisble by 1:10
while($solution -eq $False){
    if(($i % 11 -eq 0) -and ($i % 12 -eq 0) -and ($i % 13 -eq 0) -and ($i % 14 -eq 0) -and ($i % 15 -eq 0) -and
       ($i % 16 -eq 0) -and ($i % 17 -eq 0) -and ($i % 18 -eq 0) -and ($i % 19 -eq 0) -and ($i % 20 -eq 0)){
        $solution = $True
        Write-Host $i
    }

    $i += 2520
}

# Result is 232,792,560
