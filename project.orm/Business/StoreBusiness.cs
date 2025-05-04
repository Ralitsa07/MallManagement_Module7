using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace project.orm.Business
{
    public class StoreBusiness
    {
        private MallContext mallContext;

        public List<Store> GetAll()
        {
            using (mallContext = new MallContext())
            {
                return
                    mallContext.Stores.ToList();
            }
        }
        public Store Get(int id)
        {
            using (mallContext = new MallContext())
            {
                return
                    mallContext.Stores.Find(id);
            }
        }
        public void Add(Store store)
        {
            using (mallContext = new MallContext())
            {
                mallContext.Stores.Add(store);
                mallContext.SaveChanges();
            }
        }
        public void Update(Store store)
        {
            using (mallContext = new MallContext())
            {
                var item = mallContext.Stores.Find(store.StoreId);
                if (item != null)
                {
                    mallContext.Entry(item).CurrentValues.SetValues(store);
                    mallContext.SaveChanges();
                }

            }

        }
        public void Delete(int id)
        {
            using (mallContext = new MallContext())
            {
                var store = mallContext.Stores.Find(id);
                if (store != null)
                {
                    mallContext.Stores.Remove(store);
                    mallContext.SaveChanges();
                }
            }
        }
    }
}
