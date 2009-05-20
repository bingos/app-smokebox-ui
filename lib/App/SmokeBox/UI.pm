package App::SmokeBox::UI;

use strict;
use warnings;
use vars qw($VERSION);

$VERSION ='0.02';

use MooseX::POE;

with qw(App::SmokeBox::UI::Role);

sub spawn {
  shift->new(@_);
}

no MooseX::POE;

'Smoking!';

__END__
