#!/usr/bin/perl -w

use strict;

open my $f, '-|', "wget -q -O- $ARGV[0]" or die;

while (my $line = <$f>){
	my @numbers = split /[^\d\- ]+/, $line;
	foreach my $number(@numbers){
		$number =~ s/\D//g;
		print "$number\n" if (length $number >= 8 && length $number <= 15);
	}
}
close $f;