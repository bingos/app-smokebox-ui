use strict;
use warnings;
use Test::More;

my @modules = qw(
	App::SmokeBox::UI::Role
	App::SmokeBox::UI
);

plan tests => scalar @modules;
use_ok($_) for @modules;
diag( "Testing App::SmokeBox::UI $App::SmokeBox::UI::VERSION, Perl $], $^X" );
