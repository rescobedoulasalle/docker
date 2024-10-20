#!/usr/bin/perl -w
use strict;
use warnings;
use CGI;
use utf8;

my $q  = CGI->new;
my $var1;

if ( not defined $q->param('cadena') ) {
    $var1  = '';
}else{
	$var1  = $q->param('cadena');
}

my @tokens;

sub addTokens {
	my $cadena = $_[0];
	my $patron = $_[1];
	
	if( $cadena =~ m/$patron/ ) {
		push(@tokens, $`);
		addTokens($',$patron);	
	}else {
		push(@tokens, $');
	}
}

my $var2 = '\.';

addTokens($var1, $var2);

print $q->header('text/html');
print "<!DOCTYPE html>";
print "<html lang=\"es\">";
print "<head>";
print "<title>LAB 00 - Expresiones regulares</title>";
#print "<meta charset=\"UTF-8\">";
print "<link rel=\"stylesheet\" href=\"../css/mystyle.css\">";
print "</head>";
print "<body>";

print "<div class=\"header\">";
print "<h2>Laboratorio # 00: Expresiones regulares</h2>";
print "<p class=\"description\">Formulario html donde se evalua una cadena de caracteres mediante expresiones regulares.</p>";
print "</div>";
	
print "<div class=\"content\">";
	
print "<div class=\"container\">";
print "<form action=\"evalToken.pl\" method=\"get\">";
print "<fieldset>";
print "<legend>Expresiones regulares:</legend>";
print "<div class=\"row\">";
print "<div class=\"col-25\">";
print "<label for=\"tall\">Cadena:</label>";
print "</div>";
print "<div class=\"col-75\">";
print "<input type=\"text\" id=\"cadena\" name='cadena' placeholder=\"Ingrese cadena. Ejemplo: richart.escobedo\" value=\"" . $var1 . "\">";
print "</div>";
print "</div>";

print "<br>";
print "<div class=\"row\">";
print "<input type=\"submit\" value=\"Evaluar cadena\">";
print "</div>";
print "</fieldset>";
print "</form>";
print "</div>";

if( (scalar @tokens)>0 ) {	
	print "<div class=\"container\">";
	print "<form>";
	print "<fieldset>";
	print "<legend>Tokens encontrados:</legend>";
	for (my $i=0; $i < (scalar @tokens); $i++) {
		print "<div class=\"row\">";
		print "<div class=\"col-25\">";
		print "<label>Token " . $i . ":</label>";
		print "</div>";
		print "<div class=\"col-75\">";
		print "<span>" . @tokens[$i] . "</span>";
		print "</div>";
		print "</div>";
	}
	print "</fieldset>";
	print "</form>";
	print "</div>";
}

print "<p class=\"footer links\">";
			
print "<a href=\"https://validator.w3.org/#validate_by_input\" class=\"image-link\" target=\"_blank\">";
 print "<img style=\"border:0;width:88px;height:31px\"
        			src=\"../img/W3C_HTML5_certified.png\"
        		alt=\"Markup Validation\" />";
print "</a>";
print "<a href=\"https://jigsaw.w3.org/css-validator/#validate_by_input\" class=\"image-link\" target=\"_blank\">";
print "<img style=\"border:0;width:88px;height:31px\"
        			src=\"../img/Valid_CSS_(blue).svg.png\"
        		alt=\"CSS Validation\" />";
print "</a>";
print "<a href=\"https://www.w3.org/WAI/test-evaluate/tools/list/\" class=\"image-link\" target=\"_blank\">";
print "<img style=\"border:0;width:88px;height:31px\"
        			src=\"../img/wcag2.2AAA-blue.png\"
        		alt=\"Web Accessibility\" />";
print "</a>";
print "</p>";
		
print "<footer class=\"footer\">";
print "Escobedo Quispe, Richart Smith &copy; 2024/10/18 - Programación Web Lab. Grupo Z.";	  		
print "</footer>";
		
print "</div>";
	
print "</body>";
print "</html>";
