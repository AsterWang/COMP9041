#!/usr/bin/perl -w

use strict;

my %words;
while(my $word = <STDIN>){
	$words{$word} ++;
	if ($words{$word} eq $ARGV[0]){
		print("Snap: $word");
		exit 1;
	}
}