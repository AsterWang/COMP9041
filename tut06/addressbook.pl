#!/usr/bin/perl -w

use strict;

open my $phones, "<", "phone.txt" or die;

my %phones;
while (my $line = <$phones>){
	chomp $line;
	my ($id, $type, $number) = split /,/, $line;
	$phones{$id}{$type} = $number;
}

close $phones;

open my $people, "<", "people.txt" or die;

while (my $line = <$people>){
	chomp $line;
	my ($id, $name, $street, $suburb) = split /,/, $line;
	print "$name\n$street, $suburb\nPhone: ";
	my $nPhones = 0;
	foreach my $t('mobile', 'hone', 'work') {
		if (defined($phones{$id}{$t})) {
			print ", " if ($nPhones ++ > 0);
			print "$phones{$id}{$t} ($t)"; 
		}
	}
	print "?" if ($nPhones == 0);
	print "\n\n";
}

close $people;