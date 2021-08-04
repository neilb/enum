#!perl

use strict;
use warnings;

use Test::More 0.88 tests => 4;

use enum qw(Foo Bar Cat Dog);

my @foo;
$foo[Foo] = "Foo";
$foo[Bar] = "Bar";
$foo[Cat] = "Cat";
$foo[Dog] = "Dog";

{
	package main::F;
	use enum qw(Foo Bar Cat Dog);
}

is $foo[F::Foo], 'Foo', 'F::Foo';
is $foo[F::Bar], 'Bar', 'F::Bar';
is $foo[F::Cat], 'Cat', 'F::Cat';
is $foo[F::Dog], 'Dog', 'F::Dog';
