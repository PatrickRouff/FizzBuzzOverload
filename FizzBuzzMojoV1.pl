use Mojolicious::Lite;


get '/fizzbuzz' => sub{
	my $c = shift;
	my $i = 1;
	my $j = 16;
	my $out = "";
	while ($i <= $j) {
		if ((($i % 3) == 0)&&(($i % 5) == 0)) {
			$out.="FizzBuzz<br>";
		} elsif (($i%3) == 0) {
			$out.="Fizz<br>";
		} elsif (($i%5)==0) {
			$out.="Buzz<br>";
		} else {
			$out.=$i."<br>";
		} 

		$i++;
	}

	$c->render(text=>$out);
};
app->start;
