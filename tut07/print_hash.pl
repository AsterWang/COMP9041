#!/usr/bin/perl -w
sub print_hash {
	my (%tab) = @_;
	while ((my $key, my $value) = each %tab){
		print "[$key] => $value\n";
	}
}

%h = (
    "David" => "green",
    "Phil" => "blue",
    "Andrew" => "red",
    "John" => "blue"
);

print_hash(%h);