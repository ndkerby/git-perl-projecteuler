#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 4:
#     A palindromic number reads the same both ways. The largest   
#     palindrome made from the product of two 2-digit numbers 
#     is 9009 = 91 × 99.
#
# ANSWER: 
#    The largest palindrome is: 906609 
#    The two 3-digit numbers are: 993, 913
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;

my $largest_palindrome;
my $number_1;
my $number_2;
my $max = 999;
my $min = 100;

for( my $number_one = $max ; $number_one > $min ; $number_one--){
    for( my $number_two = $max ; $number_two > $min ; $number_two--){
        my $number = $number_one * $number_two;
        my $temp = isPalindrome($number);
        if ($temp) {
            if( $number > $largest_palindrome){
                $largest_palindrome = $number;
                $number_1 = $number_one;
                $number_2 = $number_two;
            }
        }
    }
}

print "The largest palindrome is: " . $largest_palindrome . "\n";
print "The two 3-digit numbers are: " . $number_1 . ", " . $number_2 . "\n";


sub isPalindrome{
    my ($currentNumber) = @_;
    my @palindrome;
    #print "Check Palindrome: " . $currentNumber . "\n";
    
    push(@palindrome, split(//,$currentNumber));
    my $isPalindrome = 1;
    for( my $int = 0 ; $int < @palindrome ; $int++){
        my $index = (scalar(@palindrome)-1)-$int;
        
        if ($int == $index || $int > $index){
            $isPalindrome = 1;
            return $isPalindrome;
        } 

        if ($palindrome[$int] ne $palindrome[$index] ) {
            $isPalindrome = 0;
            return $isPalindrome;
        }
    }   
    return $isPalindrome;
}

