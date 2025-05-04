using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projectorm.Business
{
    public class CustomerBusiness
    {
        private MallContext mallContext;
        public List<Customer> GetAll()
        {
            using (mallContext = new MallContext())
            {
                return mallContext.Customers.ToList
                    ();
            }
        }
        public Customer Get(int id)
        {
            using (mallContext = new MallContext())
            {
                return mallContext.Customers.Find
                    (id);
            }
        }
        public void Add(Customer customer)
        {
            using (mallContext = new MallContext())
            {
                mallContext.Customers.Add(customer);
                mallContext.SaveChanges();
            }
        }
        public void Update(Customer customer)
        {
            using (mallContext = new MallContext())
            {
                var item = mallContext.Customers.Find(customer.CustomerId);
                if (item != null)
                {
                    mallContext.Entry(item).CurrentValues.SetValues(customer);
                    mallContext.SaveChanges();
                }
            }
        }
        public void Delete(int id)
        {
            using (mallContext = new MallContext())
            {
                var customer = mallContext.Customers.Find(id);
                if (customer != null)
                {
                    mallContext.Customers.Remove(customer);
                    mallContext.SaveChanges();
                }
            }
        }
    }
}

