#!/usr/bin/perl -w

use strict;

open my $f, "<", $ARGV[0] or die "Cannot open the file\n";

my $curr_date = "";
my $curr_count = 0;
my $curr_species = "";
while(my $line =<$f>){
	if ($line =~ /^(\S+)\s+(\d+)\s+(.+)$/){
		my $date = $1;
		my $num = $2;
		my $species = $3;
		if ($curr_species eq $species && $curr_date eq $1){
			$curr_count += $num;
		} else{
			print("$curr_date $curr_count $curr_species\n") if $curr_count;
			$curr_species = $species;
			$curr_date = $date;
			$curr_count = $num;
		}

	} else {
		print("Sorry couldn't parse: $line\n");
	}
}

print "$curr_date $curr_count $curr_species\n" if $curr_count;