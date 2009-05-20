package App::SmokeBox::UI::Role;

use strict;
use warnings;
use vars qw($VERSION);

$VERSION = '0.02';

use MooseX::POE::Role;

has smokebox => ( 
  is       => 'ro',
  isa      => 'POE::Component::SmokeBox',
  required => 1,
  handles  => [ qw(queues add_smoker del_smoker submit) ],
);  

no MooseX::POE::Role;

'Smoking!';

__END__
