
package Moose::Meta::TypeConstraint::Registry;

use strict;
use warnings;
use metaclass;

use Scalar::Util 'blessed';
use Carp         'confess';

our $VERSION   = '0.01';
our $AUTHORITY = 'cpan:STEVAN';

use base 'Class::MOP::Object';

__PACKAGE__->meta->add_attribute('type_constraints' => (
    reader  => 'type_constraints',
    default => sub { {} }
));

sub new { 
    my $class = shift;
    my $self  = $class->meta->new_object(@_);
    return $self;
}

sub has_type_constraint {
    my ($self, $type_name) = @_;
    exists $self->type_constraints->{$type_name} ? 1 : 0
}

sub get_type_constraint {
    my ($self, $type_name) = @_;
    $self->type_constraints->{$type_name}
}

sub add_type_constraint {
    my ($self, $type) = @_;
    $self->type_constraints->{$type->name} = $type;
}

1;

__END__


=pod

=head1 NAME

Moose::Meta::TypeConstraint::Registry

=head1 DESCRIPTION

=head1 METHODS

=over 4

=item B<meta>

=item B<new>

=item B<type_constraints>

=item B<has_type_constraint>

=item B<get_type_constraint>

=item B<add_type_constraint>

=back

=head1 BUGS

All complex software has bugs lurking in it, and this module is no 
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 AUTHOR

Stevan Little E<lt>stevan@iinteractive.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2006, 2007 by Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
