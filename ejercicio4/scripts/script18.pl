use warnings; 

# Creating class using package 
package A; 
sub poly_example 
{ 
print("This corresponds to class A\n"); 
} 

package B; 
sub poly_example 
{ 
print("This corresponds to class B\n"); 
} 

B->poly_example(); 
A->poly_example(); 

