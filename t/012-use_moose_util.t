#!/usr/bin/env perl
use strict;
use warnings;
use Test::More;

BEGIN { delete $ENV{ANY_MOOSE} }

BEGIN {
    eval 'require Moose';
    plan skip_all => 'Moose not available' if $@;
    plan tests => 2;
}

{
    package My::Package;
    use Any::Moose '::Util::TypeConstraints' => [qw(type)];

    ::ok defined(&type);

    no Any::Moose '::Util::TypeConstraints';
}

ok !My::Package->can('type');
