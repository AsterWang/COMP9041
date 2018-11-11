#!/usr/bin/perl -w

use strict;

while (my $line = <STDIN>){
	my @words = split /\s+/,$line;
	my @sorted_words = sort @words;
	print join(" ", @sorted_words), "\n";
}