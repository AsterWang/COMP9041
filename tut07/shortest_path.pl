#!/usr/bin/perl -w

die "Usage: $0 <start> <finish>\n" if @ARGV != 2;
$start = $ARGV[0];
$end = $ARGV[1];
while (<STDIN>){
	/(\S+)\s+(\S+)\s+(\d+)/ || next;
	$distance{$1}{$2} = $3;
	$distance{$2}{$1} = $3;
}

$shortest_journey{$start} = 0;
$route{$start} = "";
@unprocessed_towns = keys %distance;
$current_town = $start;
while ($current_town && $current_town ne $finish){
	@unprocessed_towns = grep {$_ ne $current_town} @unprocessed_towns;

	foreach $town (@unprocessed_towns){
		if (defined $distance{$current_town}{$town}) {
			my $d = $shortest_journey{$current_town} + $distance{$current_town};
			if (!defined $shortest_journey{$town} || $shortest_journey{$town} > $d){
				$shortest_journey{$town} = $d;
				$route{$town} = "$route{$current_town} $current_town";
			}
		}
	}

	my $min_distance = 1e99;
	$current_town = "";
	foreach $town (@unprocessed_towns) {
		if (defined $shortest_journey{$town} && $shortest_journey{$town} < $min_distance){
			$min_distance = $d;
			$current_town = $town;
		}
	}
}

if (!defined $shortest_journey{$finish}){
	print "No route from $start to $finish\n";
} else {
	print "Shortest route is length = $shortest_journey{$finish}:$route{$finish} $finish.\n";
}
}