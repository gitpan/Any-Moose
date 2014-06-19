use strict;
use warnings;
use Test::More;

# generated by Dist::Zilla::Plugin::Test::PodSpelling 2.006008
use Test::Spelling 0.12;
use Pod::Wordlist;


add_stopwords(<DATA>);
all_pod_files_spelling_ok( qw( bin lib  ) );
__DATA__
Shawn
Moore
sartak
Florian
Ragwitz
rafl
Stevan
Little
stevan
Tokuhiro
Matsuno
tokuhirom
Goro
Fuji
gfuji
Ricardo
Signes
rjbs
Best
Practical
Solutions
Chris
BinGOs
Williams
chris
Karen
Etheridge
ether
code
gfx
lib
Any
Moose
