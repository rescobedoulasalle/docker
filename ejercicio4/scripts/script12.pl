#!/usr/bin/perl 

# Perl program to illustrate 
# Nested if statement 
	
$a = 10; 
	
if($a % 2 == 0) 
{ 
	# Nested - if statement 
	# Will only be executed 
	# if above if statement 
	# is true 
	if($a % 5 == 0) 
	{ 
		printf "Number is divisible by 2 and 5\n"; 
	} 
} 

