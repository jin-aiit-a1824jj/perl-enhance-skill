#!/usr/bin/perl

use strict; 
use File::Basename qw(dirname);

my $file = 'command_list';

my $dir = dirname($file);
my $basename = File::Basename::basename($file);

print "\nDirectory name:\t$dir\nFilename:\t$basename\n";
