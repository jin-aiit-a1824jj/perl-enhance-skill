#!/usr/bin/perl

use strict;

my $i = 1;
my @array;

while ($i++ <= 20) {
	my $random_number = int(rand(20)) + 1;
	push @array, $random_number;
}

print "12345678901234567890\n";

foreach (@array) {
	printf "%${_}d\n", $_;
}
