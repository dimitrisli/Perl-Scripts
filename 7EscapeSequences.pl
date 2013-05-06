use strict;
use warnings;

$| = 1;

if ( "hello"  =~ /(\w*)/ ) { print "$1\n" }
if ( "hello"  =~ /(\w+)/ ) { print "$1\n" }
if ( "hel.lo" =~ /(\w+)/ ) { print "$1\n" }
if ( "hell o" =~ /(\w+)/ ) { print "$1\n" }

print "\n";

if ( " 123" =~ /(\d+)/ ) { print "$1\n" }
if ( " 123" =~ /(\d*)/ ) { print "$1\n" }
if ( "12.3" =~ /(\d+)/ ) { print "$1\n" }
if ( "12 3" =~ /(\d+)/ ) { print "$1\n" }
