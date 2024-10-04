# Opening the file 
open(fh, "GFG2.txt") or die "File '$filename' can't be opened"; 
	
# Reading First line from the file 
$firstline = <fh>; 
print "$firstline\n"; 

