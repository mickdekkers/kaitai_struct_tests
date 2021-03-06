package io.kaitai.struct.spec;

import io.kaitai.struct.testformats.Enum0;
import org.testng.annotations.Test;

import static org.testng.Assert.assertEquals;

public class TestEnum0 extends CommonSpec {
    @Test
    public void testEnum0() throws Exception {
        Enum0 r = Enum0.fromFile(SRC_DIR + "enum_0.bin");

        assertEquals(r.pet1(), Enum0.Animal.CAT);
        assertEquals(r.pet2(), Enum0.Animal.CHICKEN);
    }
}
