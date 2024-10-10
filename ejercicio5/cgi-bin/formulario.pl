#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $q  = CGI->new;
my $name = $q->param('nombre');
print $q->header('text/html');
print<<BLOCK;
<!DOCTYPE html>
<html><head><title>Hello world</title></head>
<body><h2>Hello $name! Soy Richart.</h2>
</body></html>
BLOCK

