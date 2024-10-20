#!/usr/bin/perl

my @tokens;

sub addTokens {
	my $cadena = $_[0];
	my $patron = $_[1];
	
	if( $cadena =~ m/$patron/ ) {
		push(@tokens, $`);
		addTokens($',$patron);	
	}else{
		push(@tokens, $');
	}
}


my $var1 = "richart.escobedo.quispe";
my $var2 = '\.';

addTokens($var1, $var2);

print "Cantidad de tokens: ",scalar @tokens,"\n";
for (my $i=0; $i < scalar @tokens; $i++) {
   print "[$i] : @tokens[$i]\n";
}
