#!/usr/bin/perl -w

use strict;

while (my $line = <STDIN>){
	if ($line =~ /\s(\d{2}):/){
		my $hour = $1;
		my $hour_1 = sprintf "%02d", $hour - 12;
		$line =~ s/$hour/$hour_1/ if $hour > 12;
		$line =~ s/00:/12:/ if $hour == 0;
		my $suffix = 'pm';
		$suffix = 'am' if $hour < 12;
		$line =~ s/:(\d{2}) /:$1$suffix /;
	}
	print $line;
}