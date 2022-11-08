array=(1 3 5 7 9 -1 0 0 2 -3)
#3,0,-3
#1,0,-1
#1,2,-3
n="${#array[*]}"

for(( i=0;i<$n-2;i++ ))
do
for(( j=i+1;j<$n-1;j++ ))
do
for(( k=j+1;k<$n;k++ ))
do
if(( found == 1 ))
found=true
then
echo "$((arr[i]+arr[j]+arr[k]))"

fi
done
done
done


if ((found==false))
then
echo "not exist"
fi
