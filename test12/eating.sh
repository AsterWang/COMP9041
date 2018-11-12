#!/bin/sh

egrep '"name"' "$1" |
cut -d',' -f1 |
cut -d':' -f2 |
sort|
uniq|
cut -d'"' -f2