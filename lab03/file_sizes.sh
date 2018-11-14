#!/bin/sh

for file in *
do
	lines=`wc -l < $file`
	if test $lines -lt 10
	then
		small_files="$small_files $file"
	elif test $line -lt 100
	then
		medium_files="$medium_files $file"
	else
		large_files="$large_files $file"
	fi
done

echo "Small files: $small_files"
echo "Medium files: $medium_files"
echo "Large files: $large_files"

exit 0