# Perl Program to illustrate the Operators 
	
# Operands 
$a = 10; 
$b = 4; 
$c = true; 
$d = false; 
	
# using arithmetic operators 
print "Addition is: ", $a + $b, "\n"; 
print "Subtraction is: ", $a - $b, "\n" ; 

# using Relational Operators 
if ($a == $b) 
{ 
print "Equal To Operator is True\n"; 
} 
else
{ 
print "Equal To Operator is False\n"; 
} 

# using Logical Operator 'AND' 
$result = $a && $b; 
print "AND Operator: ", $result, "\n"; 

# using Bitwise AND Operator 
$result = $a & $b; 
print "Bitwise AND: ", $result, "\n"; 

# using Assignment Operators 
print "Addition Assignment Operator: ", $a += $b, "\n"; 

