#!perl

use strict;
use warnings;

use Test::More 0.88 tests => 4;

use enum qw(
	:Letters_=0 A..Z
	:=0
	: A..Z
);

cmp_ok Letters_A, '==', 0,  'Letters_A';
cmp_ok Letters_Z, '==', 25, 'Letters_Z';

cmp_ok A, '==', 0,  'A';
cmp_ok Z, '==', 25, 'Z';
