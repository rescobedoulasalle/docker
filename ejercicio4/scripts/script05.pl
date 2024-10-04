#!/usr/bin/perl 

# Perl Program for array creation 
# and accessing its elements 

# Define an array 
@arr1 = (1, 2, 3, 4, 5); 

# using qw function 
@arr2 = qw /This is a Perl Tutorial by GeeksforGeeks/; 

# Accessing array elements 
print "Elements of arr1 are:\n"; 
print "$arr1[0]\n"; 
print "$arr1[3]\n"; 

# Accessing array elements 
# with negative index 
print "\nElements of arr2 are:\n"; 
print "$arr2[-1]\n"; 
print "$arr2[-3]\n"; 

