#!/usr/bin/perl

use strict;

if (@ARGV != 2) {
	print "./rename.pl <original_filename>  <new_filename>\n";
	exit;
}

my $file = pop @ARGV;

unlink $file or die "Couldn't unlink $file: $!";

