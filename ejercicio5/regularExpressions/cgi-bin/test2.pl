#!/usr/bin/perl

#$cadena = "richart.escobedo";
$cadena = "richartescobedo";
$patron = '\.';

if( $cadena =~ m/$patron/ ) { 
    print "Izquierda: $`\n";
    print "Patron: $&\n";
    print "Derecha: $'\n";
}else{
    print "No se ha encontrado el patrón.";
}
