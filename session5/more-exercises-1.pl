#!/usr/bin/perl

@numbers = (1..100);
$sum;

foreach $num (@numbers) {
	$sum += $num;
	print "$num + ";
}

print "0 = \n$sum\n\n";
