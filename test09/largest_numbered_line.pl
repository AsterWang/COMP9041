#!/usr/bin/perl -w

use strict;
my @largest_numbers;
my @largest_lines;
while(my $line =<STDIN>){
	my @line_numbers = $line =~ /(\-?\d+(?:\.\d+)?)/g;
	print("numbers are @line_numbers\n");
	if (@line_numbers){
		my $largest_number = (sort {$b <=> $a} @line_numbers)[0];
		push @largest_numbers, $largest_number;
		push @largest_lines, $line;
	}
}

if(@largest_numbers){
	my $largest_numbers = (sort {$b <=> $a} @largest_numbers)[0];
	foreach my $i(0..$#largest_numbers){
		if ($largest_numbers[$i] == $largest_numbers){
			print $largest_lines[$i];
			exit 1;
		}
	}
}