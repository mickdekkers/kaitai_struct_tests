<?php
namespace Kaitai\Struct\Tests;

class ExprModTest extends TestCase {
    public function testExprMod() {
        $r = ExprMod::fromFile(self::SRC_DIR_PATH . "/fixed_struct.bin");

        $this->assertEquals(1262698832, $r->intU);
        $this->assertEquals(-52947, $r->intS);

        $this->assertEquals(9, $r->modPosConst);
        $this->assertEquals(4, $r->modNegConst);
        $this->assertEquals(5, $r->modPosSeq);
        $this->assertEquals(2, $r->modNegSeq);
    }
}