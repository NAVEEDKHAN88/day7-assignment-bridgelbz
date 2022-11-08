# write a program to show sum of three integers adds to ZERO


#!/bin/bash -x

read -a array
sum=0
for i in ${array[@]}
 do
  let sum+=$i
done
echo "Sum: $sum"
