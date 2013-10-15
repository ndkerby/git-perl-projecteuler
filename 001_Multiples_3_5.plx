#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 1:
#     If we list all the natural numbers below 10 that are multiples of 3  
#     or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# ANSWER: 
#    The sum is: 233168
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;
use warnings;

my @numbers = (0 .. 999);
my $total = 0;

foreach my $number ( @numbers ){
    if ( $number%3 == 0 || $number%5 == 0 ){
        $total += $number;
    }
}

print "The sum is: " . $total . "\n";