package Moose::Meta::Method::Accessor::Native::Hash::keys;
BEGIN {
  $Moose::Meta::Method::Accessor::Native::Hash::keys::AUTHORITY = 'cpan:STEVAN';
}
BEGIN {
  $Moose::Meta::Method::Accessor::Native::Hash::keys::VERSION = '2.0203';
}

use strict;
use warnings;

use Scalar::Util qw( looks_like_number );

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Reader' =>
    { -excludes => ['_maximum_arguments'] };

sub _maximum_arguments { 0 }

sub _return_value {
    my $self = shift;
    my ($slot_access) = @_;

    return 'keys %{ (' . $slot_access . ') }';
}

no Moose::Role;

1;
