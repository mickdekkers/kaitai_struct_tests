using NUnit.Framework;

namespace Kaitai
{
    [TestFixture]
    public class SpecBcdUserTypeBe : CommonSpec
    {
        [Test]
        public void TestBcdUserTypeBe()
        {
            var r = BcdUserTypeBe.FromFile(SourceFile("bcd_user_type_be.bin"));
            Assert.AreEqual(r.Ltr.AsInt, 12345678);
            Assert.AreEqual(r.Ltr.AsStr, "12345678");
            Assert.AreEqual(r.Rtl.AsInt, 87654321);
            Assert.AreEqual(r.Rtl.AsStr, "87654321");
            Assert.AreEqual(r.LeadingZeroLtr.AsInt, 123456);
            Assert.AreEqual(r.LeadingZeroLtr.AsStr, "00123456");
        }
    }
}
