#!bin/bash

while (( num <= 20 ))
do
    echo "this is $num "
    (( num += 1 ))
done

while [ $num <= 20 ] ;
do
    echo "this is $num "
    (( $num += 1 ))
done

echo $num
while (( $num <= 10 ))
do
    echo "$num"
    (( num += 1 ))
done

num=0
while (($num <=20))
do
    echo $num
    (( num += 1 ))
done