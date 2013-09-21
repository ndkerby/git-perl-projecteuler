#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 9:
#     The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17. 
# 
#     Find the sum of all the primes below two million.
#
# ANSWER: 
#    The sum of all primes below n is: 142913828922
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;


my $nth_prime = 2000000;
my @prime_numbers;
my $int = 1;
my $sum;

while ( $int < $nth_prime)
{
    $int++;
    print $int . "\n";
    isPrime($int);
}

foreach my $prime_numbers (@prime_numbers)
{
    $sum += $prime_numbers;
}
print "The sum of n primes numbers is: " . $sum . "\n";
print "The prime factors are: @prime_numbers\n";


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