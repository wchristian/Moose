package Moose::Exception::MethodNameNotGiven;
our $VERSION = '2.2016';

use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Class';

sub _build_message {
    "You must define a method name to find";
}

__PACKAGE__->meta->make_immutable;
1;
