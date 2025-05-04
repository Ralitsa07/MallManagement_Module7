using project.orm.Business;
using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace project.orm.Presentation
{
    public class CityDisplay
    {
        int Operation = 6;
        public int getOperation()
        {
            return Operation;
        }

        private CityBusiness cityBusiness=new CityBusiness();

        public CityDisplay() 
        {
            Input();
        }
        private void ListAll()
        {

            Console.WriteLine("CITIES");
            var cities=cityBusiness.GetAll();
            foreach(var item in cities)
            {
                Console.WriteLine("{0} {1}",item.CityId,item.CityName);
            }
        }

        private void Add()
        {
            City city = new City();
            Console.WriteLine("Enter ID: ");
            city.CityId = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter city name: ");
            city.CityName = Console.ReadLine();
            cityBusiness.Add(city);
        }

        private void Update()
        {
            Console.WriteLine("Enter ID to update: ");
            int id = int.Parse(Console.ReadLine());
            City city = cityBusiness.Get(id);
            if (city != null)
            {
                Console.WriteLine("Enter name: ");
                city.CityName = Console.ReadLine();
                cityBusiness.Update(city);
            }
            else
            {
                Console.WriteLine("City not found!");
            }
        }

        private void Fetch()
        {
            Console.WriteLine("Enter ID to fetch: ");
            int id = int.Parse(Console.ReadLine());
            City city = cityBusiness.Get(id);
            if (city != null)
            {
                Console.WriteLine(new string('-', 64));
                Console.WriteLine("ID: " + city.CityId);
                Console.WriteLine("Name: " + city.CityName);
                Console.WriteLine(new string('-', 64));
            }
        }
        private void Delete()
        {
            Console.WriteLine("Enter ID to delete: ");
            int id = int.Parse(Console.ReadLine());
            cityBusiness.Delete(id);
            Console.WriteLine("Done.");
        }
        private void ShowMenu() 
        {
            Console.WriteLine(new string('-',64));
            Console.WriteLine(new string(' ', 29)
            +"CITIES" + new string(' ', 18));
            Console.WriteLine(new string('-', 64));
            Console.WriteLine("1. List all entries");
            Console.WriteLine("2. Add new entry");
            Console.WriteLine("3. Update entry");
            Console.WriteLine("4. Fetch entry by ID");
            Console.WriteLine("5. Delete entry by ID");
            Console.WriteLine("6. Exit");
        }

        private void Input() 
        {
            int operation = 0;
            bool flag = true;
            do
            {
                ShowMenu();
                operation=int.Parse(Console.ReadLine());
                switch (operation)
                {
                    case 1:
                        ListAll(); 
                        break;
                    case 2:
                        Add();
                        break;
                    case 3:
                        Update();
                        break;
                    case 4:
                        Fetch();
                        break;
                    case 5:
                        Delete();
                        break;
                    case 6:
                        {
                            flag = false;
                            break;
                        }
                }
                if (flag == false) break;

            } while (true);
        }
       
    }
}
