for((i=1;i<=100;i++))
do
    #echo $i

i=($(printf "%s\n" "${IDS[@]}" | sort -u))
echo $i
done
