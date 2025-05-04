using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projectorm.Business
{
    public class PersonnelBusiness
    {
        private MallContext mallContext;
        public List<Personnel> GetAll()
        {
            using (mallContext = new MallContext())
            {
                return mallContext.Personnels.ToList
                    ();
            }
        }
        public Personnel Get(int id)
        {
            using (mallContext = new MallContext())
            {
                return mallContext.Personnels.Find(id);
            }
        }
        public void Add(Personnel personnel)
        {
            using (mallContext = new MallContext())
            {
                mallContext.Personnels.Add(personnel);
                mallContext.SaveChanges();
            }
        }
        public void Update(Personnel personnel)
        {
            using (mallContext = new MallContext())
            {
                var item = mallContext.Personnels.Find(personnel.PersonnelId);
                if (item != null)
                {
                    mallContext.Entry(item).CurrentValues.SetValues(personnel);
                    mallContext.SaveChanges();
                }
            }
        }
        public void Delete(int id)
        {
            using (mallContext = new MallContext())
            {
                var personnel = mallContext.Personnels.Find(id);
                if (personnel != null)
                {
                    mallContext.Personnels.Remove(personnel);
                    mallContext.SaveChanges();
                }
            }
        }
    }
}

