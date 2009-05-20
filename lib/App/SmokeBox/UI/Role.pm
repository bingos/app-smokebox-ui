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

sub START {
  my ($kernel,$self) = @_[KERNEL,OBJECT];
  $kernel->refcount_increment( $self->get_session_id, __PACKAGE__ );
  return;
}

event shutdown => sub {
  my ($kernel,$self) = @_[KERNEL,OBJECT];
  $kernel->refcount_decrement( $self->get_session_id, __PACKAGE__ );
  $kernel->post( $self->smokebox->session_id, 'shutdown' );
  return;
};

no MooseX::POE::Role;

'Smoking!';

__END__
