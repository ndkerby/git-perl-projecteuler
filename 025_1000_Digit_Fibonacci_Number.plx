#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 25:
#    The Fibonacci sequence is defined by the recurrence relation:
#
#    Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
#    Hence the first 12 terms will be:
#
#        F1 = 1
#        F2 = 1
#        F3 = 2
#        F4 = 3
#        F5 = 5
#        F6 = 8
#        F7 = 13
#        F8 = 21
#        F9 = 34
#        F10 = 55
#        F11 = 89
#        F12 = 144
#    
#    The 12th term, F12, is the first term to contain three digits.
#
#    What is the first term in the Fibonacci sequence to contain 1000 digits?
#
# ANSWER: 
#    The first term to contain a 1000 digits is: 4782
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;
use warnings;
use bignum;
use MATH::Functions qw(next_fibonacci_number);

my $currentNumber = 1;
my $previousNumber = 1;
my @fibonacciNumber = ();
my $max = 1000;
my $size = 0;
my $count = 2;


while ($size != $max){
    $count++;
    my $newNumber = MATH::Functions::next_fibonacci_number($currentNumber,$previousNumber);
    @fibonacciNumber = split(//, $newNumber);
    $size = scalar @fibonacciNumber;
    #print "Length: $size - @fibonacciNumber\n";
    $previousNumber = $currentNumber;
    $currentNumber = $newNumber;
    
}

print "The first term to contain a 1000 digits is: $count\n";