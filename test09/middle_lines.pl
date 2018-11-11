#!/usr/bin/perl -w

use strict;
open my $f, "<", $ARGV[0] or die "Cannot open $ARGV[0]:$!\n";

my $num = 0;
my @lines = <$f>;
my $middle = @lines / 2;
if (@lines % 2 == 1){
	print $lines[$#lines / 2];
} else {
	print("$lines[0.255555]");
	print $lines[$#lines / 2];
	print $lines[$#lines / 2 + 1];
}