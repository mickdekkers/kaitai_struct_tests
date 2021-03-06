package spec::perl::TestEnum0;

use strict;
use warnings;
use base qw(Test::Class);
use Test::More;
use Enum0;

sub test_enum_0: Test(2) {
    my $r = Enum0->from_file('src/enum_0.bin');

    is($r->pet_1(), $Enum0::ANIMAL_CAT, 'Equals');
    is($r->pet_2(), $Enum0::ANIMAL_CHICKEN, 'Equals');
}

Test::Class->runtests;
