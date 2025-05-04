using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projectorm.Business
{
    public class PersonnelStoreMallBusiness
    {
        private MallContext mallContext;
        public List<PersonnelStoreMall> GetAll()
        {
            using (mallContext = new MallContext())
            {
                return mallContext.PersonnelStoreMalls.ToList
                    ();
            }
        }
        public PersonnelStoreMall Get(int id)
        {
            using (mallContext = new MallContext())
            {
                return mallContext.PersonnelStoreMalls.Find
                    (id);
            }
        }
        public void Add(PersonnelStoreMall personnelStoreMalls)
        {
            using (mallContext = new MallContext())
            {
                mallContext.PersonnelStoreMalls.Add(personnelStoreMalls);
                mallContext.SaveChanges();
            }
        }
        public void Update(PersonnelStoreMall personnelStoreMalls)
        {
            using (mallContext = new MallContext())
            {
                var item = mallContext.PersonnelStoreMalls.Find(personnelStoreMalls.PersonnelId);
                if (item != null)
                {
                    mallContext.Entry(item).CurrentValues.SetValues(personnelStoreMalls);
                    mallContext.SaveChanges();
                }
            }
        }
        public void Delete(int id)
        {
            using (mallContext = new MallContext())
            {
                var personnelStoreMalls = mallContext.PersonnelStoreMalls.Find(id);
                if (personnelStoreMalls != null)
                {
                    mallContext.PersonnelStoreMalls.Remove(personnelStoreMalls);
                    mallContext.SaveChanges();
                }
            }
        }
    }
}

