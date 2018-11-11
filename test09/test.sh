#!/bin/sh

while read line
do
	echo $line | egrep -o "\-?[0-9]+(\.[0-9]+)?"
done