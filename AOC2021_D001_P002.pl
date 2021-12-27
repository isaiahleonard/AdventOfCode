use strict;
use warnings;

#
# Advent Of Code - Day 001 Part 002
#

sub main 
{
  my $idx = 0;
  my $ttl = 0;
  my $nm1;
  my $nm2;
  my $nm3;
  my $nm4;

  foreach $nm4 (<STDIN>)
  {
    # We only perform checks with windows of numbers.
    my $sm1 = $nm1 + $nm2 + $nm3;
    my $sm2 = $nm2 + $nm3 + $nm4;
    if ($idx > 2 && $sm2 > $sm1)
    {
      $ttl += 1;
    }
    # Shift forward to get the next window of numbers.
    $nm1 = $nm2;
    $nm2 = $nm3;
    $nm3 = $nm4;
    $idx += 1;
  }

  print $ttl;
}

main();
