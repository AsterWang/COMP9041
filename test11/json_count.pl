#!/usr/bin/perl -w


use strict;

my $target_species = $ARGV[0];
my $file_name = $ARGV[1];

my $num = 0;
my $how_many = 0;
open my $f, "<", $file_name or die "Cannot open $file_name";

while (my $line = <$f>){
	if ($line =~ /"how_many": (\d+)/i){
		$how_many = $1;
	} elsif ($line =~ /"species": "([A-Za-z\s]*)"/i){
		my $species = $1;
		if ($species eq $target_species) {
			$num += $how_many;
		}
	}
}

close $f;
print($num."\n");