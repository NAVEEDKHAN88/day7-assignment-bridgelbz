declare -A nums
while [[ ${#nums[@]} -ne 10 ]]
 do
 nums[$((RANDOM % 20 + 1))]=1
done
arr=( "${!nums[@]}
