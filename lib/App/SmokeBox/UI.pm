package App::SmokeBox::UI;

use strict;
use warnings;
use vars qw($VERSION);

$VERSION = '0.02';

use MooseX::POE::Role;

has smokebox => ( 
  is       => 'ro',
  isa      => 'POE::Component::SmokeBox',
  required => 1,
);  

no MooseX::POE::Role;

'Smoking!';

__END__
