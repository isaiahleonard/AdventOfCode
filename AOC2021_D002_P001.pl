use strict;
use warnings;

#
# Advent Of Code - Day 002 Part 001
#

my $err1 = 'Invalid Input';

sub main 
{
  my $pos = 0;
  my $dep = 0;
  my $cmd;
  my @tmp;
  my $dir;
  my $len;

  foreach $cmd (<STDIN>)
  {
    # Split the command into direction and length.
    @tmp = split /\s/,$cmd; 
    $dir = substr $tmp[0],0,1; $len = $tmp[1];
    
    # Handle the command using direction as a key.
    if ($dir eq "f") 
    { 
      $pos += $len 
    }
    if ($dir eq "u") 
    { 
      $dep -= $len 
    }
    if ($dir eq "d") 
    { 
      $dep += $len 
    }
  }
  
  print $pos * $dep;
}

main();
