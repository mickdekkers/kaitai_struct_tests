using NUnit.Framework;

namespace Kaitai
{
    [TestFixture]
    public class SpecEnumOfValueInst : CommonSpec
    {
        [Test]
        public void TestEnumOfValueInst()
        {
            var r = EnumOfValueInst.FromFile(SourceFile("enum_0.bin"));
            Assert.AreEqual(r.Pet1, EnumOfValueInst.Animal.Cat);
            Assert.AreEqual(r.Pet2, EnumOfValueInst.Animal.Chicken);
            Assert.AreEqual(r.Pet3, EnumOfValueInst.Animal.Dog);
            Assert.AreEqual(r.Pet4, EnumOfValueInst.Animal.Dog);
        }
    }
}
