#!/usr/bin/perl 

# Perl Program for creation of a 
# Class and its object 
use strict; 
use warnings; 
	
package student; 
	
# constructor 
sub student_data 
{ 
	
	# shift will take package name 'student' 
	# and assign it to variable 'class' 
	my $class_name = shift; 
	my $self = { 
				'StudentFirstName' => shift, 
				'StudentLastName' => shift
			}; 
	# Using bless function 
	bless $self, $class_name; 
		
	# returning object from constructor 
	return $self; 
} 
	
# Object creating and constructor calling 
my $Data = student_data student("Geeks", "forGeeks"); 
	
# Printing the data 
print "$Data->{'StudentFirstName'}\n"; 
print "$Data->{'StudentLastName'}\n"; 

