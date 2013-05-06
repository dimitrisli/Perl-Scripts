use strict;
use warnings;

$| = 1;    #turn off output buffering

#greedy: as many as possible
#non-greedy: as few as possible
#by default * and + are greedy quantifiers by default referring to preceding character
#*?: zero or more of the char before match as many as possible
#=?: one or more of the char before match as many as possible

my $file = 'testInputFile.txt';

open( INPUT, $file ) or die("Not found: $file\n");

#by default quantifier '+' is greedy seeking as much of possible of this char
while ( my $line = <INPUT> ) {

	#turning it into non-greedy we use quantifier '+?'
	if ( $line =~ /(l+)/ ) {
		print "$1\n";
	}
}

close(INPUT);

