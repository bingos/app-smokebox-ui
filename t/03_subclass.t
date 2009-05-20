use strict;
use warnings;

use Test::More tests => 1;

{ 
  package App::SmokeBox::UI::TESTCLASS;

  use MooseX::POE;

  extends 'App::SmokeBox::UI';

  no MooseX::POE;

}

package main;

use POE qw(Component::SmokeBox);

my $smokebox = POE::Component::SmokeBox->spawn();
my $ui = App::SmokeBox::UI::TESTCLASS->spawn( smokebox => $smokebox );
isa_ok( $ui, 'App::SmokeBox::UI' );

$poe_kernel->post( $ui->get_session_id, 'shutdown' );

$poe_kernel->run();
exit 0;
