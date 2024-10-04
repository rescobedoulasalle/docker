#!/usr/bin/perl 

# Perl program to illustrate 
# the use of foreach Loop 

# while loop 
$count = 3; 

print("While Loop:\n"); 
while ($count >= 0) 
{ 
	$count = $count - 1; 
	print "GeeksForGeeks\n"; 
} 

print("\ndo...while Loop:\n"); 
$a = 10; 
	
# do..While loop 
do { 
	
	print "$a "; 
	$a = $a - 1; 
} while ($a > 0); 

