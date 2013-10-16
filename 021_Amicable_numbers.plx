#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 21:
#     Let d(n) be defined as the sum of proper divisors of n 
#     (numbers less than n which divide evenly into n).
#
#     If d(a) = b and d(b) = a, where a ≠ b, then a and b are 
#     an amicable pair and each of a and b are called amicable 
#     numbers.
#
#         For example, the proper divisors of 220 are 
#             1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; 
#         therefore d(220) = 284. The proper divisors of 284 are 
#             1, 2, 4, 71 and 142; so d(284) = 220.
#
#     Evaluate the sum of all the amicable numbers under 10000.
#
# ANSWER: 
#    The sum of all the amicable numbers under 10000: 31626
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;
use MATH::Functions;
use Time::HiRes;

my $start = Time::HiRes::gettimeofday();

my @amicable_numbers;
my $max = 10000;
my $total = 0;
my $sum = 1;

for(my $int = 1; $int < $max; $int++){
    my @factors = MATH::Functions::factors($int);
    $sum = 1;
    foreach my $factors (@factors){
        $sum += $factors;
    }
    if($sum > $int && $sum < $max){
        my $second_number = $sum;
        my @factors = MATH::Functions::factors($second_number);
        $sum = 1;
        foreach my $factors (@factors){
            $sum += $factors;
        }
        if($sum == $int){
            push(@amicable_numbers, $int);
            push(@amicable_numbers, $second_number);
        }
    }
}
foreach my $amicable_number(@amicable_numbers){
    $total += $amicable_number;
}

my $end = Time::HiRes::gettimeofday();
my $total_time = $end - $start;
print "The total time teh program took is: $total_time\n";
print "The sum of all the amicable numbers under 10000: $total\n";