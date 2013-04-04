package Pod::Weaver::PluginBundle::SHARYANTO;

use 5.010001;

use Pod::Weaver::Config::Assembler;

our $VERSION = '0.01'; # VERSION

sub _exp { Pod::Weaver::Config::Assembler->expand_package($_[0]) }

sub mvp_bundle_config {
    return (
        [ '@SHARYANTO',                       _exp('@Default'),              {} ],
        [ '@SHARYANTO/EnsureUniqueSections',  _exp('-EnsureUniqueSections'), {} ],
        [ '@SHARYANTO/Perinci',               _exp('-Perinci'),              {} ],
    );
}

1;
# ABSTRACT: SHARYANTO's default Pod::Weaver config


__END__
=pod

=head1 NAME

Pod::Weaver::PluginBundle::SHARYANTO - SHARYANTO's default Pod::Weaver config

=head1 VERSION

version 0.01

=head1 SYNOPSIS

In C<weaver.ini>:

 [@SHARYANTO]

or in C<dist.ini>:

 [PodWeaver]
 config_plugin = @SHARYANTO

=head1 DESCRIPTION

Equivalent to:

 [@Default]
 [-EnsureUniqueSections]
 [-Perinci]

=for Pod::Coverage .*

=head1 SEE ALSO

L<Pod::Weaver>

L<Dist::Zilla::PluginBundle::SHARYANTO>

=head1 AUTHOR

Steven Haryanto <stevenharyanto@gmail.com>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Steven Haryanto.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

