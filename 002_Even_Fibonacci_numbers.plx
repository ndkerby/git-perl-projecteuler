#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 2:
#     Each new term in the Fibonacci sequence is generated by adding the previous two 
#     terms. By starting with 1 and 2, the first 10 terms will be:
#
#         1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
#     By considering the terms in the Fibonacci sequence whose values do not exceed 
#     four million, find the sum of the even-valued terms.
#
# ANSWER: 
#    The sum is: 4613732
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;
use warnings;
use MATH::Functions qw(next_fibonacci_number);

my $currentNumber = 1;
my $previousNumber = 1;
my $sum = 0;
my $max = 4000000;

while ($currentNumber < $max){
    my $newNumber = MATH::Functions::next_fibonacci_number($currentNumber,$previousNumber);
    $previousNumber = $currentNumber;
    $currentNumber = $newNumber;
    
    if ($currentNumber%2 == 0){
        $sum += $currentNumber;
    }
}

print "The sum is: $sum\n";