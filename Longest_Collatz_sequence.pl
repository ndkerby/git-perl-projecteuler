#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 14:
#     The following iterative sequence is defined for the set of positive integers:
#
#         n → n/2 (n is even)
#         n → 3n + 1 (n is odd)
#
#     Using the rule above and starting with 13, we generate the following sequence:
#
#         13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1 
#     
#     It can be seen that this sequence (starting at 13 and finishing at 1) contains 
#     10 terms. Although it has not been proved yet (Collatz Problem), it is thought 
#     that all starting numbers finish at 1.
#
#     Which starting number, under one million, produces the longest chain?
#
#     NOTE: Once the chain starts the terms are allowed to go above one million.
#
# ANSWER: 
#    Starting Number: 837799
#    Length: 524
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

my $longest_chain_number = 0;
my $longest_starting_number;
my $number = 0;
my $max = 1000000;
my $count;

for( my $starting_number = 1 ; $starting_number < $max; $starting_number++){
    my $count;
    $number = $starting_number;
    my $chain = $number . "->";

    while ($number != 1){
        $count++;
        
        if ( $number%2 == 0){
            $number = is_even($number);
            $chain = $number . "->";
        } else {
            $number = is_odd($number);
            $chain = $number . "->";
        }
    }

    if ( $count > $longest_chain_number){
        $longest_chain_number = $count;
        $longest_starting_number = $starting_number;
    }
}

print "Starting Number: " . $longest_starting_number . " Length: " . $longest_chain_number . "\n";

sub is_odd{
    my ($odd_number) = @_;
    $odd_number = ($odd_number*3)+1;
    return $odd_number; 
}

sub is_even{
    my ($even_number) = @_;
    $even_number = $even_number/2;
    return $even_number; 
}