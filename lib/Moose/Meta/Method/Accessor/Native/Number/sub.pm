package Moose::Meta::Method::Accessor::Native::Number::sub;
our $VERSION = '2.2016';

use strict;
use warnings;

use Moose::Role;

with 'Moose::Meta::Method::Accessor::Native::Writer';

sub _minimum_arguments { 1 }

sub _maximum_arguments { 1 }

sub _potential_value {
    my $self = shift;
    my ($slot_access) = @_;

    return $slot_access . ' - $_[0]';
}

sub _inline_optimized_set_new_value {
    my $self = shift;
    my ($inv, $new, $slot_access) = @_;

    return $slot_access . ' -= $_[0];';
}

no Moose::Role;

1;
