#!/usr/bin/perl -w

use strict;

my %bigrams;
my $last_word = "";
while (my $line = <STDIN>){
	foreach my $word(split(/\W+/, $line)){
		$word = lc $word;
		$bigrams{$last_word}{$word} ++ if ($last_word ne "");
		$last_word = $word;
	}
}

foreach my $fword (sort keys %bigrams){
	my $most_sword = "";
	my $most_sword_count = 0;
	my $total = 0;
	foreach my $sword(sort keys %{$bigrams{$fword}}){
		my $b = $bigrams{$fword}{$sword};
		$total += $	b;
		if ($b > $most_sword_count){
			$most_sword_count = $b;
			$most_sword = $sword;			
		}
	}
	print "$fword($total) $most_sword($most_sword_count)\n"
}
