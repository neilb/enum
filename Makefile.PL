use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'	=> 'enum',
    'VERSION_FROM' => 'lib/enum.pm', # finds $VERSION
);
