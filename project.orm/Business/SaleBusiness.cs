using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace project.orm.Business
{
    public class SaleBusiness
    {
        private MallContext mallContext;

        public List<Sale> GetAll()
        {
            using (mallContext = new MallContext())
            {
                return
                    mallContext.Sales.ToList();
            }
        }
        public Sale Get(int id)
        {
            using (mallContext = new MallContext())
            {
                return
                    mallContext.Sales.Find(id);
            }
        }

        public void Add(Sale sale)
        {
            using (mallContext = new MallContext())
            {
                mallContext.Sales.Add(sale);
                mallContext.SaveChanges();
            }
        }

        public void Update(Sale sale)
        {
            using (mallContext = new MallContext())
            {
                var item = mallContext.Sales.Find(sale.SaleId);
                if (item != null)
                {
                    mallContext.Entry(item).CurrentValues.SetValues(sale);
                    mallContext.SaveChanges();
                }

            }

        }

        public void Delete(int id)
        {
            using (mallContext = new MallContext())
            {
                var sale = mallContext.Sales.Find(id);
                if (sale != null)
                {
                    mallContext.Sales.Remove(sale);
                    mallContext.SaveChanges();
                }
            }
        }
    }
}
