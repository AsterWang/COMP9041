#!/usr/bin/perl -w
while ($line = <>) {
    my @numbers = $line =~ /(\d+\.\d+)/g;
    foreach $number (@numbers) {
        my $rounded_number = int($number + 0.5);
        $line =~ s/$number/$rounded_number/;
    }
    print $line;
}