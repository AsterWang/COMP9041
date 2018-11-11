#!/bin/sh


direc_1=$1;
direc_2=$2;
for file in "$direc_1"/*
do
	if diff "$file" "$direc_2" > /dev/null 2>&1
	then
		basename "$file"
	fi
done
