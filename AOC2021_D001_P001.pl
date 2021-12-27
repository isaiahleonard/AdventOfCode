use strict;
use warnings;

#
# Advent Of Code - Day 001 Part 001
#

sub main 
{
  my $idx = 0;
  my $ttl = 0;
  my $nm1;
  my $nm2;

  foreach $nm2 (<STDIN>)
  {
    # We only perform checks with pairs of numbers.
    if ($idx > 0 && $nm2 > $nm1)
    {
      $ttl += 1;
    }
    # Shift forward to get the next pair of numbers.
    $nm1 = $nm2;
    $idx += 1;
  }

  print $ttl;
}

main();
