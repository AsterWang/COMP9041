#!/bin/sh

array=(1 2 3 4 5);
echo ${#array[*]};
echo ${array[@]}

i=4
z=`expr $i + 1`
echo $z
i=`expr $i + 1`
echo "i = $i"