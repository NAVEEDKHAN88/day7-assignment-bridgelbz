N=10
i=0

while [ $i -lt $N ]
do
   num=$(shuf -i 100-1000 -n1)
   arr[$i]=$num
   i=$((i+1))
done

echo "${arr[*]}"
echo  "${#arr[*]}"

for ((i = 0; i<$N; i++))
do

    for((j = 0; j<$N-i-1; j++))
    do

        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "The sorted array is:"
echo "${arr[*]}"

echo "second smallest number is : ${arr[1]}"
echo "second largest number is : ${arr[$N-2]}"
