#!/usr/bin/perl
use vars qw($VERSION);
my $APP  = '';
$VERSION = '0.001';

use strict;
use Data::Dumper;

{
  package Data::Dumper;
  no strict 'vars';
  $Terse = $Indent = $Useqq = $Deparse = $Sortkeys = 1;
  $Quotekeys = 0;
}





=pod

=head1 NAME

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 OPTIONS

=head1 SEE ALSO

=head1 AUTHOR

  Magnus Woldrich
  CPAN ID: WOLDRICH
  magnus@trapd00r.se
  http://japh.se

=head1 REPORTING BUGS

Report bugs on rt.cpan.org or to magnus@trapd00r.se

=head1 CONTRIBUTORS

None required yet.

=head1 COPYRIGHT

Copyright 2011 B<THIS MODULE>s L</AUTHOR> and L</CONTRIBUTORS> as listed above.

=head1 LICENSE

This library is free software; you may redistribute it and/or modify it under
the same terms as Perl itself.

=cut

1;

# vim: set ts=2 et sw=2: