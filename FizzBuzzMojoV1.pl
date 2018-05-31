use Mojolicious::Lite;

my @test = ("Fizz", "Buzz");
my $t = scalar @test;
my $i = 0;

get '/fizzbuzz' => {
	text => print @test
};
app->start;
