#!/usr/bin/perl -w

use strict;

my @sorted_array = sort {$b <=> $a} @ARGV;	
print $sorted_array[$#sorted_array / 2], "\n";