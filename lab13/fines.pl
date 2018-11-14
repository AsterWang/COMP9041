#!/usr/bin/perl -w

use strict;

my %records;
while (my $line = <STDIN>) {
	if ($line =~ /^(.*)\s+(\d+)/){
		$records{$1} += $2;
	}
}

my @sorted = sort {$records{$b} <=> $records{$a}} keys %records;
print "Expel $sorted[0] whose library fines total \$$records{$sorted[0]}\n";