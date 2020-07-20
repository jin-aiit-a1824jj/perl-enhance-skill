#!/usr/bin/perl

use strict;
use Cwd;

if (@ARGV != 1) {
	print "./excercise-printRelativeFilePaths.pl <starting dir>>\n";
	exit;
} else {
	my $startingDir = $ARGV[0];
	&find($startingDir, $startingDir);
} 

sub find
{
my $startingDir = shift @_;
my $relativePath = shift @_;

chdir "$startingDir" or die "Couldn't chdir into $startingDir: $!";
opendir my $dh, '.' or die "opendir failed to open '.': $!";

while (readdir $dh) {
	if (/^\./) {
		next;
	} elsif (-d) {
		$relativePath = "$relativePath/$_";
#		print "$relativePath\n";
		# Recursive call.
		$relativePath = &find($_, $relativePath);

		next;
	} elsif (-f) {
		print "$relativePath/$_\n";
	}
}
chdir '..';	# Go back to working directory you started in.
$relativePath =~ s/(\.?.*)\/.*/$1/;
$relativePath;
}
