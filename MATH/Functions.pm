#!/usr/bin/perl
#
# @author
# Natalie Kerby :: ndkerby@gmail.com

package MATH::Functions;

use strict;
use warnings;

my @prime_numbers = (2);

sub isPrime{
    my ($currentNumber) = @_;
    #print "Check Prime: " . $currentNumber . "\n";
    my $isPrime = 1;
    foreach my $prime_number (@prime_numbers) {
        if($prime_number <= $currentNumber){
        #print $currentNumber%$prime_numbers . "\n";
            if ( $currentNumber%$prime_number == 0 ){
                $isPrime = 0;
                #print "Not Prime: " . $currentNumber . "\n";
                #print "Divisible by: " . $prime_numbers . "\n";
                return $isPrime;
            }
        }
    }
    
    if ( $isPrime == 1 && grep($currentNumber, @prime_numbers)){
        push (@prime_numbers, $currentNumber);
        #print "The prime factors are: \@factors\n";
    }
    
    return $isPrime;
}

sub factorial{
    my $currentNumber = shift;
    my $factorial = 1;
    while ($currentNumber != 1){
        $factorial *= $currentNumber;
        $currentNumber--;
    }
    return $factorial; 
}

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

sub number_of_divisors{
    my ($triangle_sum ) = @_;
    my $count;
    my $square_root = sqrt($triangle_sum);
    my @divisors = ();
    for( my $int = 1; $int <= $square_root; $int++){
        if ( $triangle_sum%$int == 0 ){
            my $mod = ($triangle_sum/$int);
            if ((!grep /^$int$/, @divisors)){ 
                push(@divisors, $int);
                push(@divisors, $mod) if ($int != $mod);
            }
        }
    }
    $count = scalar @divisors;
    return $count; 
}

sub factors{
    my ($number) = @_;
    my @factors = ();
    for( my $int = 2; $int < $number; $int++){
        if ( $number%$int == 0 ){
            my $mod = ($number/$int);
            if ((!grep /^$int$/, @factors)){ 
                push(@factors, $int);
                push(@factors, $mod) if ($int != $mod);
            }
        }
    }
    return @factors; 
}

sub next_fibonacci_number{
    my ($currentFibonacci, $previousFibonacci) = @_;
    my $nextFibonacci = $currentFibonacci + $previousFibonacci;
    
    return $nextFibonacci;
}

1;