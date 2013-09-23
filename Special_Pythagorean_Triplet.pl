#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 9:
#     A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,  
#         (a*a) + (b*b) = (c*c)
#
#     There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#     Find the product abc.
#
# ANSWER: 
#    The product of abc is: 31875000
#    A: 200, B:375, C:245
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;

my $sum_a_b_c = 1000;
my $product_a_b_c;
my $a;
my $b;
my $c;

#my $c = $sum_a_b_c/2;
for( my $c = 1 ; $c < $sum_a_b_c ; $c++){
    for( my $int = 1 ; $int < $sum_a_b_c-$c ; $int++){
        $a = $int;
        $b = $sum_a_b_c-$c-$int;
        my $temp = isPythagorean($a, $b, $c);
        if ($temp){
            $product_a_b_c = $a * $b * $c;
            my $sum = $a+$b+$c;
            print "The sum of abc is: " . $sum . "\n";
            print "The product of abc is: " . $product_a_b_c . "\n";
            print $a . ", " . $b . ", " . $c . "\n";
            exit(0);
        }
    }
}
print "Not Found\n";

sub isPythagorean{
    my ($currentA, $currentB, $currentC ) = @_;
    #print $currentA . ", " . $currentB . ", " . $currentC . "\n";
    my $isPythagorean = 0;
    if (($currentA**2 + $currentB**2) eq $currentC**2){
            $isPythagorean = 1;
            return $isPythagorean;
    } 
    return $isPythagorean;
}
