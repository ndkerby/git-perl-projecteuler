#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 16:
#     2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#     What is the sum of the digits of the number 2^1000?
#
# ANSWER: 
#    The sum is: 1366
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use bignum;

my @numbers;
my $exponent = 1000;
my $exponent_total;
my $sum_of_digits;

$exponent_total = 2**$exponent;
#print "$exponent_total\n";

@numbers = split(//, $exponent_total);

foreach $number (@numbers){
    $sum_of_digits += $number;
}

print "$sum_of_digits\n";