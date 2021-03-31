package Moose::Exception::InvalidTypeGivenToCreateParameterizedTypeConstraint;
our $VERSION = '2.2016';

use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::TypeConstraint';

sub _build_message {
    my $self = shift;
    "Could not parse type name (".$self->type_name.") correctly";
}

__PACKAGE__->meta->make_immutable;
1;
