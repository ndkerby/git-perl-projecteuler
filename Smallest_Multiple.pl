#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 5:
#     2520 is the smallest number that can be divided by each   
#     of the numbers from 1 to 10 without any remainder.
#
#     What is the smallest positive number that is evenly 
#     divisible by all of the numbers from 1 to 20?
#
# ANSWER: 
#    The smallest number  is: 232792560
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

my $max = 10;
my @multiple = (1 .. $max);
my $number = $max;
my $number_found = 0;

while (!$number_found)
{
    $number += $max;
    my $count = 0;
    foreach my $multiple (@multiple)
    {  
        if ( $number % $multiple == 0)
        {
            $count++;
        }
    }
    if ( $count == $max )
    {
        $number_found = 1;
    } 
}

print "The smallest number  is: " . $number . "\n";