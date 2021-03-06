#include <boost/test/unit_test.hpp>

#include <nested_types.h>

#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_nested_types) {
    std::ifstream ifs("src/fixed_struct.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    nested_types_t* r = new nested_types_t(&ks);

    BOOST_CHECK_EQUAL(r->one()->typed_at_root()->value_b(), 80);
    BOOST_CHECK_EQUAL(r->one()->typed_here()->value_c(), 65);
    BOOST_CHECK_EQUAL(r->two()->value_b(), 67);

    delete r;
}
