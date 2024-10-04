#!/usr/bin/perl 

# Assigning a variable with an email 
# address using double-quotes 

# String without an escape sequence 
$email = "GeeksforGeeks0402@gmail.com"; 
	
# Printing the interpolated string 
print("$email\n"); 
	
# Using '' to escape the 
# interpolation of '@' 
$email = "GeeksforGeeks0402\@gmail.com"; 
	
# Printing the interpolated string 
print($email); 

