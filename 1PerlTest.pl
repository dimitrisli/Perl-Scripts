use strict;    #imposes definition var restriction to use 'my'
use warnings;
use LWP::Simple;

$| = 1;        #turning off output buffering

print "Downloading...\n\n";
print get("http://www.google.com");

#Get page with http code to query back
my $code = getstore( "http://www.google.com", "test.html" );
if ( $code == 200 ) {
	print "\nSuccess\n";
}
else {
	print "\nFailed\n";
}
print "\nFinished!\n";

# File exists
my $file = 'test.html';
if ( -f $file ) {
	print "\nFound file: $file\n";
}
else {
	print "\nFile not found: $file\n";
}

#Iterating over an array of files
my @files = ( '1PerlTest.pl', 'test.html', );
foreach $file (@files) {
	print "$file\n";
}

