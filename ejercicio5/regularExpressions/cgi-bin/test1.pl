#!/usr/bin/perl

$cadena = "richart.escobedo";

$cadena =~ m/\./;

#print "Izquierda: $`\n";
print "Izquierda: $`\n";
print "Patron: $&\n";
print "Derecha: $'\n";
