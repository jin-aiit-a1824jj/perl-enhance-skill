#!/usr/bin/perl

sub getNumbers {
  print "What number would you like to count from?\n";
  chomp ($startingNum = <STDIN>);

  print "What number would you like to count to?\n";
  chomp ($endingNum = <STDIN>);

  ($startingNum, $endingNum);
}

sub countNumers {
  my $startingNum = shift @_;
  my $endingNum = shift @_;

  print "\n";
  while ($currentNum <= $endingNum){
    print "$startingNum\n";
    $startingNum++;
  }
}

($num1, $num2) = getNumbers;
countNumers($num1, $num2);