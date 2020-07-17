#!/usr/bin/perl

use strict;
use warnings;


while (1) {
	chomp (my $num1 = <STDIN>);
	if ($num1 eq 'q') {
		exit;
	}
	chomp (my $operator = <STDIN>);
	if ("$operator" eq 'q') {
		exit;
	}
	chomp (my $num2 = <STDIN>);
	if ("$num2" eq 'q') {
		exit;
	}
	my $result;
	if ($operator eq '+') {
		$result = $num1 + $num2;
	} elsif ($operator eq '-') {
		$result = $num1 - $num2;
	} elsif ($operator eq '*') {
		$result = $num1 * $num2;
	} elsif ($operator eq '**') {
		$result = $num1 ** $num2;
	} elsif ($operator eq '/') {
		$result = $num1 / $num2;
	} elsif ($operator eq '%') {
		$result = $num1 % $num2;
	} elsif ($operator eq '.') {
		$result = $num1 . $num2;
	} elsif ($operator eq 'x') {
		$result = $num1 x $num2;
	}

print "= $result\n\n\n";
}
