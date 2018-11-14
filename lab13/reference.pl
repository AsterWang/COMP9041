#!/usr/bin/perl -w

use strict;

my @lines = <STDIN>;
foreach my $i(0..$#lines){
	if ($lines[$i] =~ /^#(\d+)/){
		$lines[$i] = $lines[$1 - 1];
	}
}
print @lines;