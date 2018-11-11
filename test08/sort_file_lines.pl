#!/usr/bin/perl -w

use strict;

open my $f, "<", $ARGV[0];
my @lines = <$f>;
my @s_lines1 = sort @lines;
my @s_lines2 = sort {length $a <=> length $b} @s_lines1;

foreach my $line (@s_lines2){
	print($line);
}