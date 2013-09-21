#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 3:
#     The prime factors of 13195 are 5, 7, 13 and 29. 
#     What is the largest prime factor of the number 600851475143 ?
#
# ANSWER: 
#    The largest prime factor is: 6857
#    The prime factors are: 71 839 1471 6857
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;


my $number = 600851475143;
my $largest_prime_factor = 1;
my @factors;
#print "The prime factors are: @factors\n";

for( my $int = 2 ; $int <= $number; $int++)
{
my $temp;

    if ( $number%$int == 0 ) 
    {
        $temp = isPrime($int);
        if ($temp) {
            $temp = $int; 
            $int = 2;
            $number = $number/$temp;
            print $number . "\n"; 
        }  
    }
    
    if ( $temp > $largest_prime_factor)
    {
        $largest_prime_factor = $temp;
    }
}

print "The largest prime factor is: " . $largest_prime_factor . "\n";
print "The prime factors are: @factors\n";


sub isPrime
{
    my ($currentNumber) = @_;
    print "Check Prime: " . $currentNumber . "\n";
    my $isPrime = 1;
    foreach my $factor (@factors) 
    {

        #print $currentNumber%$factor . "\n";
        if ( $currentNumber%$factor == 0 ) 
        {
            $isPrime = 0;
            print "Not Prime: " . $currentNumber . "\n";
            print "Divisible by: " . $factor . "\n";
            return $isPrime;
        }
    }
    
    if ( $isPrime == 1 ) 
    {
        push (@factors, $currentNumber);
        #print "The prime factors are: @factors\n";
    }
    
    return $isPrime;
}