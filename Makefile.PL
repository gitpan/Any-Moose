
# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.019.
use strict;
use warnings;

use 5.006_002;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "*deprecated* - use Moo instead!",
  "AUTHOR" => "Shawn M Moore <code\@sartak.org>, Florian Ragwitz <rafl\@debian.org>, Stevan Little <stevan\@iinteractive.com>, Tokuhiro Matsuno <tokuhirom\@gmail.com>, Goro Fuji <gfuji\@cpan.org>, Ricardo Signes <rjbs\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Any-Moose",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Any::Moose",
  "PREREQ_PM" => {
    "Carp" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "File::Spec::Functions" => 0,
    "List::Util" => 0,
    "Test::More" => 0,
    "version" => 0
  },
  "VERSION" => "0.24",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec::Functions" => 0,
  "List::Util" => 0,
  "Test::More" => 0,
  "strict" => 0,
  "version" => 0,
  "warnings" => 0
);

if (eval { require Moose }) {
# we have any version of Moose; good enough! -- rjbs, 2011-09-15
# This should fix a crufty edge-case with cpantesting -- bingos, 2011-11-07
$WriteMakefileArgs{PREREQ_PM}{'Moose'} = $FallbackPrereqs{'Moose'} = '0';
} else {
# No Moose?  Well, we need *something* to test with, so we'll ask for the
# lighter-weight one, Mouse. -- rjbs, 2011-09-15
$WriteMakefileArgs{PREREQ_PM}{'Mouse'} = $FallbackPrereqs{'Mouse'} = '0.40';
}



unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);


