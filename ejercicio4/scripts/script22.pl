# Perl program to illustrate the 
# Referencing and Dereferencing 
# of an Array 
	
# defining an array 
@array = ('1', '2', '3'); 
	
# making an reference to an array variable 
$reference_array = \@array; 
	
# Dereferencing 
# printing the value stored 
# at $reference_array by prefixing 
# @ as it is a array reference 
print @$reference_array;	 

