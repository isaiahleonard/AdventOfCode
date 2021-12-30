use strict;
use warnings;

#
# Advent Of Code - Day 003 Part 002
#

sub main 
{
  my @nums1;
  my @nums2;
  my @temp;
  my @bit0;
  my @bit1;
  
  foreach my $num (<STDIN>)
  {
    push(@nums1,$num);
    push(@nums2,$num);
  }
  
  @bit0 = (0,0,0,0,0,0,0,0,0,0,0,0); 
  @bit1 = (0,0,0,0,0,0,0,0,0,0,0,0);
  
  for (my $pstn = 0; $pstn <= $#bit0; $pstn++)
  {
    # Collect metrics for 0s or 1s being used in the position.
    for (my $idx = 0; $idx <= $#nums1; $idx++)
    {
      @temp = split //,$nums1[$idx];
    
      if ($temp[$pstn] eq 0)
      {
        $bit0[$pstn] += 1; 
      }
      else
      {
        $bit1[$pstn] += 1;
      }
    }
    
    # Determine whether 0s or 1s are used most in the position.
    for (my $idx = 0; $idx <= $#nums1; $idx++)
    {
      @temp = split(//,$nums1[$idx]);
      
      if ($bit0[$pstn] > $bit1[$pstn])
      {
        if ($temp[$pstn] eq 1)
        {
          $nums1[$idx] = 'RMVE';
        }
      }
      
      if ($bit0[$pstn] < $bit1[$pstn])
      {
        if ($temp[$pstn] eq 0)
        {
          $nums1[$idx] = 'RMVE';
        }
      }
      
      if ($bit0[$pstn] == $bit1[$pstn])
      {
        if ($temp[$pstn] eq 0)
        {
          $nums1[$idx] = 'RMVE';
        }
      }
    }
    
    # Remove all of those numbers which are no longer needed.
    @temp = ();
    for my $num (@nums1)
    {
      if ($num ne 'RMVE')
      {
        push(@temp,$num);
      }
    }
    @nums1 = @temp;
      
    # We can stop when one number remains after this is done.
    if ($#nums1 == 0)
    {
      print $nums1[0];
    }
  }
  
  @bit0 = (0,0,0,0,0,0,0,0,0,0,0,0);
  @bit1 = (0,0,0,0,0,0,0,0,0,0,0,0);
  
  for (my $pstn = 0; $pstn <= $#bit0; $pstn++)
  {
    
    # Generate stats for 0s or 1s being used in the position.
    for (my $idx = 0; $idx <= $#nums2; $idx++)
    {
      @temp = split //,$nums2[$idx];
    
      if ($temp[$pstn] eq 0)
      {
        $bit0[$pstn] += 1; 
      }
      else
      {
        $bit1[$pstn] += 1;
      }
    }
    
    # Determine whether 0s or 1s are used most in the position.
    for (my $idx = 0; $idx <= $#nums2; $idx++)
    {
      @temp = split //,$nums2[$idx];
      
      if ($bit0[$pstn] > $bit1[$pstn])
      {
        if ($temp[$pstn] eq 0)
        {
          $nums2[$idx] = 'RMVE';
        }
      }
      if ($bit0[$pstn] < $bit1[$pstn])
      {
        if ($temp[$pstn] eq 1)
        {
          $nums2[$idx] = 'RMVE';
        }
      }
      if ($bit0[$pstn] == $bit1[$pstn])
      {
        if ($temp[$pstn] eq 1)
        {
          $nums2[$idx] = 'RMVE';
        }
      }
    }
    
    # Remove all of those numbers which are no longer needed.
    @temp = ();
    foreach my $num (@nums2)
    {
      if ($num ne 'RMVE')
      {
        push(@temp,$num);
      }
    }
    @nums2 = @temp;
    
    # We can stop when one number remains after this is done.
    if ($#nums2 == 0)
    {
      print $nums2[0];
    }
  }
}

main();
