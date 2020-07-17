#!/usr/bin/perl

@ten = (5);

splice @ten, 0, 1, (1..10);

print "\@ten = @ten\n";
