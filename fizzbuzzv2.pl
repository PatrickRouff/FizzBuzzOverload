use strict;
use warnings;

my $i = 1;
my $j = 2;

print "Start: ";
$i = <STDIN>;
print "End: ";
$j = <STDIN>;

while ($i <= $j) {
	if ((($i % 3) == 0)&&(($i % 5) == 0)) {
		print "FizzBuzz\n";
	} elsif (($i%3) == 0) {
		print "Fizz\n";
	} elsif (($i%5)==0) {
		print "Buzz\n";
	} else {
		print $i."\n";
	} 

	$i++;
}
