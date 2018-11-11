#!/usr/bin/perl -w

use strict;
die "Usage: ./identical_files.pl <files>" if (@ARGV < 2);


sub read_file {
	my ($file) = @_;
	open my $f, "<", $file or die "Cannot open the file\n";
	my $lines = <$f>;
	close $f;
	return join "", $lines;
}

my $first_file_content = read_file($ARGV[0]);

for my $f(@ARGV[1..$#ARGV]){
	my $compare_lines = read_file($f);
	if ($compare_lines ne $first_file_content){
		print("$f is not idential\n");
		exit 0;
	}
}

print("All files are identical\n");