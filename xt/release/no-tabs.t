use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.08

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Any/Moose.pm',
    't/00-report-prereqs.t',
    't/000-version.t',
    't/001-basic-moose.t',
    't/001-basic-mouse.t',
    't/001-basic.t',
    't/002-other-modules-moose.t',
    't/002-other-modules-mouse.t',
    't/003-is_moose_loaded.t',
    't/004-x-modules-moose.t',
    't/004-x-modules-mouse.t',
    't/005-aliases-moose.t',
    't/005-aliases-mouse.t',
    't/010-use_mouse_roles.t',
    't/011-use_moose_roles.t',
    't/012-use_moose_util.t',
    't/012-use_mouse_util.t',
    't/020-strict.t',
    't/100-canonicalize-fragments.t',
    't/101-localize-errvar.t',
    't/lib/AnyMooseTest.pm',
    'xt/author/00-compile.t',
    'xt/author/pod-spell.t',
    'xt/release/changes_has_content.t',
    'xt/release/cpan-changes.t',
    'xt/release/distmeta.t',
    'xt/release/eol.t',
    'xt/release/kwalitee.t',
    'xt/release/minimum-version.t',
    'xt/release/mojibake.t',
    'xt/release/no-tabs.t',
    'xt/release/pod-no404s.t',
    'xt/release/pod-syntax.t',
    'xt/release/portability.t'
);

notabs_ok($_) foreach @files;
done_testing;
