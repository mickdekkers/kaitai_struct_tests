#include <boost/test/unit_test.hpp>

#include <term_strz.h>

#include <iostream>
#include <fstream>
#include <vector>

BOOST_AUTO_TEST_CASE(test_term_strz) {
    std::ifstream ifs("src/term_strz.bin", std::ifstream::binary);
    kaitai::kstream ks(&ifs);
    term_strz_t* r = new term_strz_t(&ks);

    BOOST_CHECK_EQUAL(r->s1(), "foo");
    BOOST_CHECK_EQUAL(r->s2(), "bar");
    BOOST_CHECK_EQUAL(r->s3(), "|baz@");

    delete r;
}
