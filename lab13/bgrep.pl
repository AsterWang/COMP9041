#!/usr/bin/perl -w

use strict;

open my $f, "<", $ARGV[0] or die;
while (my $line = <$f>){
	if ($line =~ /$ARGV[1]/){
		$line =~ s/$ARGV[1]/($ARGV[1])/g;
		print $line;
	}
}