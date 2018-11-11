#!/usr/bin/perl -w

use strict;

open my $f, ">", $ARGV[2] or die "Cannot open $ARGV[2]: $!\n";
my $start = $ARGV[0];	
while($start <= $ARGV[1]){
	print $f "$start\n"	;
	$start += 1;
}