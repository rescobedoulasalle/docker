#!/usr/bin/perl -w
use strict;
use warnings;
use CGI;
use utf8;
#use Switch;

my $q  = CGI->new;
my $var1;
my $var2;

if ( not defined $q->param('tall') ) {
    $var1  = '';
}else{
	$var1  = $q->param('tall');
}

if ( not defined $q->param('weight') ) {
    $var2  = '';
}else{
	$var2  = $q->param('weight');
}

sub imc($$) {
	my($a, $b ) = @_;
	my $c = 0;
	if( !$a=='' ) {
		my $aa = $a/100;
		$c = $b/($aa*$aa);
	}
	return($c); 
};

sub evaluate {
	my $a = $_[0];
	#my($a) = @_;
		
	my $result = '';	
	if( $a>39.9 ) {
		$result = 'Obesidad grado III. :(';
	}elsif( $a>=35 ) {
		$result = 'Obesidad grado II. :(';
	}elsif( $a>=30 ){
		$result = 'Obesidad grado I. :(';
	}elsif( $a>=25 ){
		$result = 'Sobrepeso. :(';
	}elsif( $a>=18.5 ){
		$result = 'Peso normal. :)';
	}else{
		$result = 'Bajo de peso. :(';
	}
	
	return($result); 
};

my $imc = imc($var1, $var2);
my $status = evaluate($imc);

print $q->header('text/html');
print "<!DOCTYPE html>";
print "<html lang=\"es\">";
print "<head>";
print "<title>LAB 00 - IMC</title>";
#print "<meta charset=\"UTF-8\">";
print "<link rel=\"stylesheet\" href=\"../css/mystyle.css\">";
print "</head>";
print "<body>";

print "<div class=\"header\">";
print "<h2>Laboratorio # 00: Html, Css y Cgi Perl</h2>";
print "<p class=\"description\">Formulario html donde se puede ingresar estatura y peso, para enviar los a través del método get hacia un cgi perl que calcula el índice de masa corporal.</p>";
print "</div>";
	
print "<div class=\"content\">";
	
print "<div class=\"container\">";
print "<form action=\"imc.pl\" method=\"get\">";
print "<fieldset>";
print "<legend>Índice de masa corporal:</legend>";
print "<div class=\"row\">";
print "<div class=\"col-25\">";
print "<label for=\"tall\">Estatura:</label>";
print "</div>";
print "<div class=\"col-75\">";
print "<input type=\"text\" id=\"tall\" name='tall' placeholder=\"Estatura en centímetros. Ejemplo: 170\" value=\"" . $var1 . "\">";
print "</div>";
print "</div>";
print "<div class=\"row\">";
print "<div class=\"col-25\">";
print "<label for=\"weight\">Peso:</label>";
print "</div>";
print "<div class=\"col-75\">";
print "<input type=\"text\" id=\"weight\" name='weight' placeholder=\"Peso en kilogramos. Ejemplo: 89\" value=\"" . $var2 . "\">";
print "</div>";
print "</div>";
print "<br>";
print "<div class=\"row\">";
print "<input type=\"submit\" value=\"Calcular IMC\">";
print "</div>";
print "</fieldset>";
print "</form>";
print "</div>";

if( $imc!=0 ) {	
	print "<div class=\"container\">";
	print "<form>";
	print "<fieldset>";
	print "<legend>Resultado:</legend>";
	print "<div class=\"row\">";
	print "<div class=\"col-25\">";
	print "<label>IMC:</label>";
	print "</div>";
	print "<div class=\"col-75\">";
	print "<span>";
	printf("%.2f", $imc);
	print "</span>";
	print "</div>";
	print "</div>";
	print "<div class=\"row\">";
	print "<div class=\"col-25\">";
	print "<label>Situación:</label>";
	print "</div>";
	print "<div class=\"col-75\">";
	print "<span>";
	print $status;
	print "</span>";
	print "</div>";
	print "</div>";
}
							
print "</fieldset>";
print "</form>";
print "</div>";
		
		
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
