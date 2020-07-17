#!/usr/bin/perl

@array = &createArray;
@array = sort @array;
print "\@array = @array\n\n";

@array = &removeDuplicates (@array);
print "\@array = @array\n\n";


sub createArray {
	foreach (1..100) {
		@rndNums[$_] = int (rand(100));
	}
	@rndNums;
}


sub removeDuplicates {
	my @array = @_;
	my $i = 0;
	while ($i <= $#array) {
		if ($array[$i] == $array[$i+1]) {
			splice @array, $i, 1;
		} else {
			$i++;
		}
	}
	@array;
}
