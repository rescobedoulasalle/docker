#!/usr/bin/perl 
# Program to print factorial of a number 
	
# Factorial of 0 
multi Factorial(0) 
{ 
	1; # returning 1 
} 
	
# Recursive Function 
# to calculate Factorial 
multi Factorial(Int $n where $n > 0) 
{ 
	$n * Factorial($n - 1); # Recursive Call 
} 
	
# Printing the result 
# using Function Call 
print Factorial(15); 

