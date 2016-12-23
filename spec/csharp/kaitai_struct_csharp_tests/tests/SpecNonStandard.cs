using NUnit.Framework;

namespace Kaitai
{
    [TestFixture]
    public class SpecNonStandard : CommonSpec
    {
        [Test]
        public void TestNonStandard()
        {
            var r = NonStandard.FromFile(SourceFile("fixed_struct.bin"));
            Assert.AreEqual(r.Foo, 0x50);
        }
    }
}
