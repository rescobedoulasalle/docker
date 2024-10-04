# Opening file Hello.txt in write mode 
open (fh, ">", "Hello.txt"); 

# Getting the string to be written 
# to the file from the user 
print "Enter the content to be added\n"; 
$a = <>; 

# Writing to the file 
print fh $a; 

# Closing the file 
close(fh) or "Couldn't close the file"; 

