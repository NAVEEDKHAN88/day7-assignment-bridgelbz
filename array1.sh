#!/bin/bash
# Generate a random using `shuf` command
echo "How many random numbers do you want to generate?:" number
read number
i=0
#Print the generated random numbers
echo "The generated random numbers are:"
while [ $i -le $number ]
do
randomNumber=$(shuf -i 100-1000 -n1)
array[$i]=$randomNumber
i=$((i+1))
done
echo "${arr[*]}"
