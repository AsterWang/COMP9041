#!/usr/bin/perl -w

use strict;

while (my $line = <STDIN>) {
	my @elements = split /\|/, $line;
	@elements[2] =~ s/(.*), (.*)/$2 $1/;
	print join("|", @elements);
}