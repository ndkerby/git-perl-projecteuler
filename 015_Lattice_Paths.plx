#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 15:
#     Starting in the top left corner of a 2×2 grid, and 
#     only being able to move to the right and down, there 
#     are exactly 6 routes to the bottom right corner. 
# 
#     How many such routes are there through a 20×20 grid?
#
# ANSWER: 
#    The total number of lattic paths are: 137846528820
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;
use warnings;
use MATH::Functions qw(factorial);

my $grid_size = 20;
my $top = $grid_size*2;
my $bottom = $grid_size;

my $total = (MATH::Functions::factorial($top))/(MATH::Functions::factorial($top-$bottom)*MATH::Functions::factorial($bottom));
print "The total number of lattic paths are: $total\n";

#sub factorial{
#    my $currentNumber = shift;
#    my $factorial = 1;
#    while ($currentNumber != 1){
#        $factorial *= $currentNumber;
#        $currentNumber--;
#    }
#    return $factorial; 
#}





