use strict;
use warnings;

$| = 1;

my $file = 'testInputFile.txt';

#open file resources
open( INPUT, $file ) or die("Not found: $file\n");

while ( my $line = <INPUT> ) {
	if ( $line =~ /hello/ ) {
		print $line;
	}
}

#close file resources
close(INPUT);
