#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 7:
#     By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
#     we can see that the 6th prime is 13.
#
#     What is the 10 001st prime number?
#
# ANSWER: 
#    The nth prime number is: 104743
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;
use warnings;
use MATH::Functions qw(isPrime);

my $nth_prime = 10001;
my @prime_numbers = (2);
my $int = 2;

while ( scalar (@prime_numbers) != $nth_prime)
{
    $int++;
    my $isPrime = MATH::Functions::isPrime($int);
    if($isPrime){
        push(@prime_numbers, $int);
    }
}

print "The nth prime number is: " . $prime_numbers[$nth_prime-1] . "\n";