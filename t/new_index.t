#!perl

use strict;
use warnings;

use Test::More 0.88 tests => 9;

use enum qw(
	Ten=10	Forty=40	FortyOne	FortyTwo
	Zero=0	One			Two			Three=3	Four
);

cmp_ok Zero,  '==', 0, 'Zero';
cmp_ok One,   '==', 1, 'One';
cmp_ok Two,   '==', 2, 'Two';
cmp_ok Three, '==', 3, 'Three';
cmp_ok Four,  '==', 4, 'Four';

cmp_ok Ten,      '==', 10, 'Ten';
cmp_ok Forty,    '==', 40, 'Forty';
cmp_ok FortyOne, '==', 41, 'FortyOne';
cmp_ok FortyTwo, '==', 42, 'FortyTwo';
