#!/usr/bin/perl -w 

use strict;

open my $f, "<", $ARGV[1] or die "Cannot open the file\n";

my $start = 1;
while (my $line = <$f>){
	if ($start == $ARGV[0]){
		print $line;
		exit 1;
	} else {
		$start ++;
	}
}