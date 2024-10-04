#!/usr/bin/perl 

# An array of integers from 1 to 10 
@list = (1..10); 
	
# Non-interpolated string 
$strng1 = 'Using Single quotes: @list'; 
	
# Interpolated string 
$strng2 = "Using Double-quotes: @list"; 
print("$strng1\n$strng2"); 

