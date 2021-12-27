use strict;
use warnings;

#
# Advent Of Code - Day 003 Part 001
#

sub main 
{
  my @gmma = (0,0,0,0,0,0,0,0,0,0,0,0);
  my @epsn = (0,0,0,0,0,0,0,0,0,0,0,0);
  my @bit1 = (0,0,0,0,0,0,0,0,0,0,0,0);
  my @bit0 = (0,0,0,0,0,0,0,0,0,0,0,0);
  my @tmp;
  my $pos;
  my $bit;
  
  foreach my $num (<STDIN>)
  {
    # Split the number into individual bits and positions.
    @tmp = split //,$num;
    $pos = 0;
    
    # Determine whether a 1 or 0 is used in each position.
    foreach $bit (@tmp)
    {
      if ($bit eq 1)
      {
        $bit1[$pos] += 1; 
      }
      else
      {
        $bit0[$pos] += 1;
      }
      $pos += 1;
    }
  }
  
  # Determine whether a 1 or 0 is used most in each position.
  for ($pos = 0; $pos <= 11; $pos++)
  {
    if ($bit1[$pos] > $bit0[$pos])
    {
      $gmma[$pos] = 1;
    }
    else 
    {
      $epsn[$pos] = 1;
    }
  }

  print @gmma; print "\n"; print @epsn;
  
}

main();
