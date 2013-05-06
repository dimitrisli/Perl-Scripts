use strict;
use warnings;

$| = 1;

my $input = 'testInputFile.txt';
open( INPUT, $input ) or die("Not found: $input\n");

my $output = 'output.txt';
open( OUTPUT, '>' . $output ) or die("Cannot create file: $output.\n");

while ( my $line = <INPUT> ) {

	if ( $line =~ /\bhello\b/ ) {

		#replace case insensitive(i) and all occurences(g)
		$line =~ s/hello/goodbye/ig;
		print OUTPUT $line;
	}
}

close(INPUT);
close(OUTPUT);
