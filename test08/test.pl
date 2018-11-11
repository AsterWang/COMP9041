#!/usr/bin/perl -w

use strict;

for(my $i = 0; $i < 5; $i ++){
	last if ($i eq 3);
	print("$i\n");
}