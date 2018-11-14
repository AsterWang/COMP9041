#!/usr/bin/perl -w

use strict;

my %words;
foreach my $arg(@ARGV){
	$words{$arg} ++;
}

my @sorted = sort {$words{$b} <=> $words{$a}} keys %words;
print $sorted[0]."\n";