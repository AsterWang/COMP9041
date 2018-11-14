#!/usr/bin/perl -w

use strict;

open my $f1, "<", $ARGV[0] or die;

my %f1_words;
$f1_words{$_} ++ while (<$f1>);
close $f1;

open my $f2, "<", $ARGV[1] or die;
delete $f1_words{$_} while <$f2>;
close $f2;

print sort keys %f1_words;
