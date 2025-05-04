using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace project.orm.Business
{
    public class MallBusiness
    {
        private MallContext mallContext;

        public List<Mall> GetAll()
        {
            using (mallContext = new MallContext())
            {
                return
                    mallContext.Malls.ToList();
            }
        }
        public Mall Get(int id)
        {
            using (mallContext = new MallContext())
            {
                return
                    mallContext.Malls.Find(id);
            }
        }
        public void Add(Mall mall)
        {
            using (mallContext = new MallContext())
            {
                mallContext.Malls.Add(mall);
                mallContext.SaveChanges();
            }
        }
        public void Update(Mall mall)
        {
            using (mallContext = new MallContext())
            {
                var item = mallContext.Malls.Find(mall.MallId);
                if (item != null)
                {
                    mallContext.Entry(item).CurrentValues.SetValues(mall);
                    mallContext.SaveChanges();
                }

            }

        }
        public void Delete(int id)
        {
            using (mallContext = new MallContext())
            {
                var mall = mallContext.Malls.Find(id);
                if (mall != null)
                {
                    mallContext.Malls.Remove(mall);
                    mallContext.SaveChanges();
                }
            }
        }
    }
}
