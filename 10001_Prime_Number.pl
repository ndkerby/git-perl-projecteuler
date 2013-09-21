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
#    The largest prime factor is: 6857
#    The prime factors are: 71 839 1471 6857
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;


my $nth_prime = 10001;
my @prime_numbers;
my $int = 1;

while ( scalar (@prime_numbers) != $nth_prime)
{
    $int++;
    isPrime($int);
}

print "The nth prime number is: " . $prime_numbers[$nth_prime-1] . "\n";
#print "The prime factors are: @prime_numbers\n";


sub isPrime
{
    my ($currentNumber) = @_;
    #print "Check Prime: " . $currentNumber . "\n";
    my $isPrime = 1;
    foreach my $prime_numbers (@prime_numbers) 
    {

        #print $currentNumber%$factor . "\n";
        if ( $currentNumber%$prime_numbers == 0 ) 
        {
            $isPrime = 0;
            #print "Not Prime: " . $currentNumber . "\n";
            #print "Divisible by: " . $prime_numbers . "\n";
            return $isPrime;
        }
    }
    
    if ( $isPrime == 1 ) 
    {
        push (@prime_numbers, $currentNumber);
        #print "The prime factors are: @factors\n";
    }
    
    return $isPrime;
}