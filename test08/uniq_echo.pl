#!/usr/bin/perl -w

use strict;
use Data::Dumper;

my %seen;
foreach my $arg(@ARGV){
	next if $seen{$arg};
	print "$arg ";
	$seen{$arg} = 1;
}

print "\n";