use strict;
use warnings;

$| = 1;        #turn off output buffering

my $file = 'testInputFile.txt';

open( INPUT, $file ) or die("Not found: $file\n");

while ( my $line = <INPUT> ) {
	if ( $line =~ /\b(\w{4})\b\s\b(\w{2})\b/ ) {    # any char per dot(.)
		print "$1 - $2\n";
	}
}

close(INPUT);

