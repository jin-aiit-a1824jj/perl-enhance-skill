#!/usr/bin/perl

$answer = "y";
while("$answer" eq "y"){
  ($principal, $intRate, $num, $years) = &getInfo;
  $value = &compoundinterest($principal, $intRate, $num, $years);
  print "\nThe value of your investment after $years years will be $value.\n";
  print "\nWould you like to run another compound interest calulation (y/n)?\n";
  chomp ($answer = <STDIN>);
}

sub getInfo {
  print "What is the principal investment amount?\n";
  chomp ($principal = <STDIN>);
  print "What is the anual interest rate?\n";
  chomp ($intRate = <STDIN>);
  print "How many times is the interest compounded per year?\n";
  chomp ($num = <STDIN>);
  print "How many years is the money invested or borrowed for?\n";
  chomp ($years = <STDIN>);

  ($principal, $intRate, $num, $years);
}

sub compoundinterest {
  print "Num of entires in @_ array is $#_\n";
  my $p = shift;
  my $r = shift;
  my $r = $r/100;
  my $n = shift;
  my $t = shift;

  $p*(1 + $r/$n)**($n*$t);
}