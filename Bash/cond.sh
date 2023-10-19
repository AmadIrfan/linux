#!/bin/bash

# read -p "Enter a number: " num
# echo $num
# echo "$num"

# if(( num == 12 ))
# then
#     echo "The number is 12"
# else
#     echo "The number is not 12"
# fi

# if [ $num == 12 ]
# then
#     echo "The number is 12"
# else
#     echo "The number is not 12"
# fi

# if [[ $num == 12 ]]
# then
#     echo "The number is 12"
# else
#     echo "The number is not 12"
# fi

#String comparision

# read -p "Enter Name " name

# if [ $name == "amad" ]
# then
#     echo "The name is Amad "
# else
#     echo "The name is =====> $name "
# fi

# if [[ $name == "amad" ]]
# then
#     echo "The name is Amad "
# else
#     echo "The name is =====> $name "
# fi

read -p "Enter a number " input

if [[ $input == "amad" ]]
then
    echo $input
else
    echo 'oops'
fi

# if [ $input == "amad" ]
# then
#     echo $input
# else
#     echo 'oops'
# fi


num=12
if (($num!=12))
then
    echo $num
else
    echo "Wrong"
fi

