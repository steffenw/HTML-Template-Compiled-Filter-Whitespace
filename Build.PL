use strict;
use warnings;

use Module::Build;

Module::Build->new(
    module_name       => 'HTML::Template::Compiled::Filter::Whitespace',
    license           => 'perl',
    dist_abstract     => 'HTML::Template::Compiled::Filter::Whitespace - whitespace filter for HTML output',
    dist_author       => 'Steffen Winkler <steffenw at cpan.org>, Volker Voit <volker.voit at googlemail.com>',
    dist_version_from => 'lib/HTML/Template/Compiled/Filter/Whitespace.pm',
    requires          => {
        perl             => '5.006',
        parent           => 0,
        version          => 0,
        Carp             => 0, # perl dist
        Cwd              => 0, # perl dist
        English          => 0, # perl dist
        'Exporter::Tiny' => 0,
    },
    build_requires => {
        'Test::Differences'        => '0.60',
        'Test::More'               => 0, # dist Test-Simple
        'Test::NoWarnings'         => 0,
        'HTML::Template::Compiled' => '0.84',
    },
    recommends => {
        'Test::Pod'           => '1.14',
        'Test::Pod::Coverage' => '1.04',
    },
    create_makefile_pl   => 'traditional',
    recursive_test_files => 0,
    add_to_cleanup       => [ qw(
        META.yml *.bak *.gz Makefile.PL
    ) ],
)->create_build_script;
