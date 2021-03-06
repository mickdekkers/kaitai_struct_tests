package io.kaitai.struct.spec;

import io.kaitai.struct.testformats.StrEos;
import org.testng.annotations.Test;

import static org.testng.Assert.assertEquals;

public class TestStrEos extends CommonSpec {
    @Test
    public void testStrEos() throws Exception {
        StrEos r = StrEos.fromFile(SRC_DIR + "term_strz.bin");

        assertEquals(r.str(), "foo|bar|baz@");
    }
}
