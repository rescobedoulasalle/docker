#!/usr/bin/perl 

# Using predefined modules 
use warnings; 
use strict; 

# Providing path of file to a variable 
my $filename = '/home/pweb/scripts/GFG.txt'; 

# Checking for the file existence 
if(-e $filename) 
{ 
	
	# If File exists 
	print("File $filename exists\n"); 
} 

else
{ 
	
	# If File doesn't exists 
	print("File $filename does not exists\n"); 
} 

