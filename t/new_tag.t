#!perl

use strict;
use warnings;

use Test::More 0.88 tests => 4;

use enum qw(
	:Months_=0 Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
	:Days_     Sun=0 Mon Tue Wed Thu Fri Sat
);

cmp_ok Months_Apr, '==', 3,  'Months_Apr';
cmp_ok Months_Dec, '==', 11, 'Months_Dec';

cmp_ok Days_Thu, '==', 4, 'Days_Thu';
cmp_ok Days_Sat, '==', 6, 'Days_Sat';
