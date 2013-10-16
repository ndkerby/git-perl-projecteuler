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
use warnings;
use MATH::Functions qw(isPrime);


my $number = 600851475143;
my $largest_prime_factor = 1;
my @prime_factors;
#print "The prime factors are: @factors\n";

for( my $int = 2 ; $int <= $number; $int++)
{
my $temp=0;

    if ( $number%$int == 0 ) 
    {
        $temp = MATH::Functions::isPrime($int);
        if ($temp) {
            push (@prime_factors, $int);
            $temp = $int;
            $number = $number/$temp;
        }  
    }
    
    if ( $temp > $largest_prime_factor)
    {
        $largest_prime_factor = $temp;
    }
}

print "The largest prime factor is: " . $largest_prime_factor . "\n";
print "The prime factors are: @prime_factors\n";


#sub isPrime
#{
#    my ($currentNumber) = @_;
#    print "Check Prime: " . $currentNumber . "\n";
#    my $isPrime = 1;
#    foreach my $factor (@factors) 
#    {
#
#        #print $currentNumber%$factor . "\n";
#        if ( $currentNumber%$factor == 0 ) 
#        {
#            $isPrime = 0;
#            print "Not Prime: " . $currentNumber . "\n";
#            print "Divisible by: " . $factor . "\n";
#            return $isPrime;
#        }
#    }
#    
#    if ( $isPrime == 1 ) 
#    {
#        push (@factors, $currentNumber);
#        #print "The prime factors are: @factors\n";
#    }
#    
#    return $isPrime;
#}