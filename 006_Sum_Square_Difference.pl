#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 6:
#     The sum of the squares of the first ten natural numbers is,   
#         1^2 + 2^2 + ... + 10^2 = 385
#
#     The square of the sum of the first ten natural numbers is, 
#         (1 + 2 + ... + 10)^2 = 552 = 3025
#
#     Hence the difference between the sum of the squares of the 
#     first ten natural numbers and the square of the sum is 
#     3025 − 385 = 2640.
#
#     Find the difference between the sum of the squares of the first 
#     one hundred natural numbers and the square of the sum.
#
# ANSWER: 
#     The square of sums is: 25502500
#     The sum of squares is: 338350
#     The difference of between the two is: 25164150
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

my $max = 100;
my @numbers = (1 .. $max);
my $sum_of_squares = 0;
my $square_of_sum = 0;
my $sum_of_numbers = 0;

foreach my $number (@numbers)
{
    $sum_of_squares += ($number * $number);
    $sum_of_numbers += $number;
}
    
$square_of_sum = ($sum_of_numbers * $sum_of_numbers);


print "The sum of squares is: " . $sum_of_squares . "\n";
print "The square of sums is: " . $square_of_sum . "\n";
print "The difference of between the two is: " . ($square_of_sum - $sum_of_squares) . "\n";

