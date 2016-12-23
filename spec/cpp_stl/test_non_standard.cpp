#include <boost/test/unit_test.hpp>

#include <non_standard.h>

#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_non_standard) {
    std::ifstream ifs("src/fixed_struct.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    non_standard_t* r = new non_standard_t(&ks);

    BOOST_CHECK_EQUAL(r->foo(), 0x50);

    delete r;
}
