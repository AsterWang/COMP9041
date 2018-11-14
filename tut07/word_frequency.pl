#!/usr/bin/perl -w

while ($line = <>) {
    $line =~ tr/A-Z/a-z/;
    foreach $word ($line =~ /[a-z]+/g) {
        $count{$word}++;
    }
}
@words = keys %count;
@sorted_words = sort {$count{$a} <=> $count{$b}
						|| $b cmp $a} @words;
foreach $word (@sorted_words) {
    printf "%d %s\n", $count{$word}, $word;
}