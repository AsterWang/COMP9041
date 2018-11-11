#!/usr/bin/perl -w

use strict;


sub main {
	foreach my $file(sort glob "$ARGV[0]/*"){
		my $basename = $file;
		$basename =~ s/.*\///;
		my $file2 = "$ARGV[1]/$basename";
		if (compare_file($file, $file2)) {
			print "$basename\n" if -r $file2;
		}
	}
}

sub read_file {
	my ($file) = @_;
	open my $f, "<", $file or die "Cannot open the file\n";
	my @lines = <$f>;
	return join("", @lines);
}

sub compare_file {
	my ($f1, $f2) = @_;
	return 0 if(! -r $f1 or ! -r $f2);
	return read_file($f1) eq read_file($f2);
}

main();

