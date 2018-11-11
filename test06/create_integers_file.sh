#!/bin/sh

start=$1
while test $start -le $2
do
	echo $start
	start=$((start + 1))
done > $3