#!/usr/bin/perl

print "Enter a nuber.\n";
chomp (my $num1 = <STDIN>);

print "Enter a nuber.\n";
chomp (my $num2 = <STDIN>);

print "\$num1 + \$num2 = ", $num1 + $num2, "\n";
print "\$num1 - \$num2 = ", $num1 - $num2, "\n";
print "\$num1 / \$num2 = ", $num1 / $num2, "\n";
print "\$num1 * \$num2 = ", $num1 * $num2, "\n";
print "\$num1 % \$num2 = ", $num1 % $num2, "\n";
print "\$num1 . \$num2 = ", $num1 . $num2, "\n";
print "\$num1 x \$num2 = ", $num1 x $num2, "\n";