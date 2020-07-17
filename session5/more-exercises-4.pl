#!/usr/bin/perl

foreach $num (1..100) {
	@randomNumbers[$num] = int (rand (100));
}

print "@randomNumbers";


print "\n\n";
foreach $num (sort @randomNumbers) {
	print "$num ";
}
print "\n";
