use strict;
use warnings;

#String representation of array data
use Data::Dumper;

$| = 1;

my $input = 'testCSVInputFile.csv';
unless ( open( INPUT, $input ) ) {
	die "Cannot open file: $input\n";
}

#read off the header - puts into $_ but nothing happens
<INPUT>;

while ( my $line = <INPUT> ) {
	#removing trailing record separator chars
	chomp $line;
	#splitting on the comma
	my @values = split /\s*,\s*/, $line;
	#join is the opposite of split
	print join '-', @values;
	#another way to look at the data in a string format
	print Dumper(@values);
}

close INPUT;
