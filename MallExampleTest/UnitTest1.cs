using Microsoft.Data.SqlClient;
using project.orm.Presentation;
using Projectorm.Presentation1;

namespace MallExampleTest
{
    public class Tests
    {
        /*[SetUp]
        public void Setup()
        {
        }*/

        [Test]
        public void CityDisplayTestCityDisplayInputOperation()
        {
            CityDisplay cityDisplay = new CityDisplay();
            int operation = cityDisplay.getOperation();
            Assert.That(operation, Is.InRange(1, 6));
        }
        [Test]
        public void CutomerDisplayTestCustomerDisplayInputOperation()
        {
            CustomerDisplay customerDisplay = new CustomerDisplay();
            int operation = customerDisplay.getOperation();
            Assert.That(operation, Is.InRange(1, 6));
        }
        [Test]
        public void MallDisplayTestMallDisplayInputOperation()
        {
            MallDisplay mallDisplay = new MallDisplay();
            int operation = mallDisplay.getOperation();
            Assert.That(operation, Is.InRange(1, 6));
        }
        [Test]
        public void PersonnelDisplayTestPersonnelDisplayInputOperation()
        {
            PersonnelDisplay personnelDisplay = new PersonnelDisplay();
            int operation = personnelDisplay.getOperation();
            Assert.That(operation, Is.InRange(1, 6));
        }
        [Test]
        public void PersonnelStoreMallDisplayTestPersonnelStoreMallDisplayInputOperation()
        {
            PersonnelStoreMallDisplay personnelStoreMallDisplay = new PersonnelStoreMallDisplay();
            int operation = personnelStoreMallDisplay.getOperation();
            Assert.That(operation, Is.InRange(1, 6));
        }
        [Test]
        public void SaleDisplayTestSaleDisplayInputOperation()
        {
            SaleDisplay saleDisplay = new SaleDisplay();
            int operation = saleDisplay.getOperation();
            Assert.That(operation, Is.InRange(1, 6));
        }
        [Test]
        public void StoreDisplayTestStoreDisplayInputOperation()
        {
            StoreDisplay storeDisplay = new StoreDisplay();
            int operation = storeDisplay.getOperation();
            Assert.That(operation, Is.InRange(1, 6));
        }

        [Test]
        public void Should_Connect_To_Database_Successfully()
        {
            string connectionString = "Server=(localdb)\\MSSQLLocalDB;Database=Mall;Trusted_Connection=True;";

            using (var connection = new SqlConnection(connectionString))
            {
                connection.Open();
                Assert.Equals(System.Data.ConnectionState.Open, connection.State);
            }
        }
    }
}