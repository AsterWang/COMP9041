#!/usr/bin/perl -w

use strict;

open my $f, "<", $ARGV[0] or die "Cannot open $ARGV[0]";

my $total_price = 0;
while (my $line =<$f>){
	if ($line =~ /"price"\s*:\s*"\$(\d+(?:\.\d+)?)/){
		# print("the price is $1\n");
		$total_price += $1;
	}
}

close $f;
printf("\$%.2f\n", $total_price);