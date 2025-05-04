using Microsoft.Identity.Client;
using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace project.orm.Business
{
    public class CityBusiness
    {
        private MallContext mallContext;

        public List<City> GetAll()
        {
            using (mallContext = new MallContext())
            {
                return 
                    mallContext.Cities.ToList();
            }
        }
        public City Get(int id)
        {
            using (mallContext=new MallContext())
            {
                return
                    mallContext.Cities.Find(id);
            }
        }
        public void Add(City city) 
        { 
            using (mallContext=new MallContext())
            {
                mallContext.Cities.Add(city);
                mallContext.SaveChanges();
            }
        }
        public void Update(City city) 
        {
            using (mallContext = new MallContext())
            {
                var item = mallContext.Cities.Find(city.CityId);
                if (item != null)
                {
                    mallContext.Entry(item).CurrentValues.SetValues(city);
                    mallContext.SaveChanges();
                }

            }

        }
        public void Delete(int id)
        {
            using (mallContext = new MallContext())
            {
                var city = mallContext.Cities.Find(id);
                if (city != null)
                {
                    mallContext.Cities.Remove(city);
                    mallContext.SaveChanges();
                }
            }
        }
    }
}
