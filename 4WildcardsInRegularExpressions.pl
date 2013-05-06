use strict;
use warnings;

$| = 1;

my $file = 'testInputFile.txt';

open( INPUT, $file ) or die("Not found: $file\n");

while ( my $line = <INPUT> ) {
	if ( $line =~ /h.l.o/ ) {    # any char per dot(.)
		print $line;
	}
}

close(INPUT);
