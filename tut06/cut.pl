#!/usr/bin/perl -w

use strict;

open my $f, "<" ,$ARGV[2] or die;

while (my $line = <$f>){
	chomp $line;
	my @chars = split //, $line;
	print @chars[$ARGV[0]- 1 .. $ARGV[1] - 1], "\n";
}