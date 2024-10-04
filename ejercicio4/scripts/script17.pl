sub Student_data 
{ 
	my $self = shift; 
		
	# Calculating the result 
	my $result = $self->{'Marks_obtained'} / 
				$self->{'Total_marks'}; 
					
	print "Marks scored by the student are: $result"; 
} 

