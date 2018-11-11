#!/usr/bin/perl -w
use strict;

my @words;
foreach my $arg(@ARGV){
	push @words,$arg if ($arg =~ /.*[aeiouAEIOU]{3}.*/);
}

print join(" ", @	words), "\n";