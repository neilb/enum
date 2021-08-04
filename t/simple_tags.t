#!perl

use strict;
use warnings;

use Test::More 0.88 tests => 5;

use enum qw(Foo Bar Cat Dog);

my @foo;
$foo[Foo] = "Foo";
$foo[Bar] = "Bar";
$foo[Cat] = "Cat";
$foo[Dog] = "Dog";

cmp_ok Foo, '==', 0, 'Foo';
cmp_ok Bar, '==', 1, 'Bar';
cmp_ok Cat, '==', 2, 'Cat';
cmp_ok Dog, '==', 3, 'Dog';

is_deeply \@foo, [qw(Foo Bar Cat Dog)], '@foo';
