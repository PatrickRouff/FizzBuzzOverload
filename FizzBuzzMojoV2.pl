#!/usr/bin/env perl
use Mojolicious::Lite;

# Documentation browser under "/perldoc"
plugin 'PODRenderer';

get '/' => sub {
  my $c = shift;
  $c->render(template => 'index');
};

app->start;
__DATA__

@@ index.html.ep
% layout 'default';
% title 'Welcome';
%	my $i = 1;
%        my $j = 16;
%        while ($i <= $j) {
%                if ((($i % 3) == 0)&&(($i % 5) == 0)) {
                        FizzBuzz<br>
%                } elsif (($i%3) == 0) {
                        Fizz<br>
%                } elsif (($i%5)==0) {
			Buzz<br>
%                } else {
			<%= $i%><br>
%                } 

%                $i++;
%	}

@@ layouts/default.html.ep
<!DOCTYPE html>
<html>
  <head><title><%= title %></title></head>
  <body><%= content %></body>
</html>
