#!/usr/bin/perl -w

use strict;

my $total = 0;
foreach my $file(glob("*.[ch]")) {
	open my $f, "<", $file or die;
	my @lines = <$f>;
	my $n_lines = @lines;

	printf "%7d %s\n", $n_lines, $file;
	$total += $n_lines;
	close $f;
}

printf "%7d total\n", $total;