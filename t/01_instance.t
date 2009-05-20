use strict;
use warnings;
use Test::More tests => 1;
use POE qw(Component::SmokeBox);
use App::SmokeBox::UI;

my $smokebox = POE::Component::SmokeBox->spawn();
my $ui = App::SmokeBox::UI->spawn( smokebox => $smokebox );
isa_ok( $ui, 'App::SmokeBox::UI' );

$poe_kernel->post( $ui->get_session_id, 'shutdown' );

$poe_kernel->run();
exit 0;
