#!/usr/bin/perl -w

use strict;

open my $f, "<", $ARGV[0];

my %last_seen;
while(my $line = <$f>){
	if ($line =~ /^(\S+)\s+\d+\s+(.*)$/){
		my $date = $1;
		my $species = $2;
		$last_seen{$species} = $1;
	} else {
		print "Sorry couldn't parse: $line\n";
	}
}

foreach my $s(sort keys %last_seen){
	print "$s $last_seen{$s}\n";
}