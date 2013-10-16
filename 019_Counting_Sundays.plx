#!/usr/bin/perl
#
# Project Euler.net
# 
# PROBLEM 19:
#     You are given the following information, but you may 
#     prefer to do some research for yourself.
#
#         -1 Jan 1900 was a Monday.
#         -Thirty days has September,
#          April, June and November.
#          All the rest have thirty-one,
#          Saving February alone,
#          Which has twenty-eight, rain or shine.
#          And on leap years, twenty-nine.
#         -A leap year occurs on any year evenly 
#          divisible by 4, but not on a century 
#          unless it is divisible by 400.
#      
#     How many Sundays fell on the first of the month during the 
#     twentieth century (1 Jan 1901 to 31 Dec 2000)?
#
# ANSWER: 
#    The number of Sunday's that fell on the 1st is: 171
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

use strict;
use warnings;
use MATH::Functions;
use Time::HiRes;

my $start = Time::HiRes::gettimeofday();

my $year = 1900;
my $day_of_week = 1;
my @number_of_days = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31); 
my $count = 0;

while($year <= 2000){
    if($year > 1900){
        foreach my $month(@number_of_days){
            if ($month == 28 && $year%4 == 0){
                $day_of_week += (29%7);
            } else {
                $day_of_week += ($month%7);
            }
        
            if( ($day_of_week + 1)%7 == 0){
                $count++;
            }
        }
    }
    $year++;
}
my $end = Time::HiRes::gettimeofday();
my $total_time = $end - $start;
print "The total time teh program took is: $total_time\n";
print "The number of Sunday's that fell on the 1st is: $count\n";