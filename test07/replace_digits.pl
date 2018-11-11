#!/usr/bin/perl -w

use strict;

open my $f, "<", "$ARGV[0]" or die "Cannot open the file\n";
my @lines =  <$f>;
close $f;
open my $out, ">", "$ARGV[0]" or die "Cannot open the file\n";
foreach my $line(@lines){
	$line =~ s/[0-9]/#/g;
	print $out 	"$line";
}

close $out;