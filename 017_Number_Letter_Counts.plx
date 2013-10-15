#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 17:
#     If the numbers 1 to 5 are written out in words: 
#     one, two, three, four, five, then there are 
#     3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
#     If all the numbers from 1 to 1000 (one thousand) 
#     inclusive were written out in words, how many 
#     letters would be used?
#
#     NOTE: Do not count spaces or hyphens. For example, 
#     342 (three hundred and forty-two) contains 23 letters 
#     and 115 (one hundred and fifteen) contains 20 letters. 
#     The use of "and" when writing out numbers is in compliance 
#     with British usage.
#
# ANSWER: 
#    The total number of characters are: 21124
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;
use warnings;

my $total = 0;
my $max = 1000;
my @numbers;

for( my $int = 1; $int <= $max; $int++){
    my $number_string = build_string($int);
}
$total += count_characters(@numbers);
print "The total number of characters are: $total\n";

sub build_string {

    my @ones = ("one", "two", "three", "four", "five", "six", "seven", "eight", "nine");
    my @tens = ("twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety");
    my $hundreds = " hundred ";
    my @teens = ("ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen");

    my $number = shift;
    my $temp_string = "";
    my $length = 1;
    while ($length != 0) {
        if ( length($number) == 4 ){
            $temp_string = "one thousand";
            $length = 0;
        } elsif ( length($number) == 3 ){
            my $temp = substr($number, 0, 1);
            $temp_string .= $ones[($temp-1)] . $hundreds;
            $temp = substr($number, 1);
            if ( !($temp =~ /^[0][0]$/)) {
                $temp_string .= "and "
            }      
        } elsif ( length($number) == 2 ){
            my $temp = substr($number, 0, 1);
                if ( $temp == 1) {
                    $temp = substr($number, 1, 1);
                    $temp_string .= $teens[($temp)] . " ";
                    $length = 0;
                } elsif ($temp != 0) {
                    $temp_string .= $tens[($temp-2)] . " ";   
                }  
        } else {
                my $temp = substr($number, 0, 1);
                if($temp != 0){
                    $temp_string .= $ones[$temp-1];
                }
                $length = 0;
        }
        $number = substr($number, 1);      
    }
        
    #print "$temp_string\n";
    push(@numbers, split(//, $temp_string));
 
}

sub count_characters {
    my @characters = @_;
    my $sum;
    
    foreach my $char (@characters){
        if ($char ne ' '){
            $sum++;
        }
    } 
    
    return $sum; 
}