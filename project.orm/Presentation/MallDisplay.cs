using project.orm.Business;
using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace project.orm.Presentation
{
    public class MallDisplay
    {
        int Operation = 6;
        public int getOperation()
        {
            return Operation;
        }

        private MallBusiness mallBusiness = new MallBusiness();

        public MallDisplay()
        {
            Input();
        }
        private void ListAll()
        {
            Console.WriteLine("MALLS");
            var malls = mallBusiness.GetAll();
            foreach (var item in malls)
            {
                Console.WriteLine("{0} {1} {2} {3} {4} {5}", item.MallId, item.MallName,item.Address,item.Area,item.Floors,item.CityId);
            }
        }

        private void Add()
        {
            Mall mall = new Mall();
            Console.WriteLine("Enter ID: ");
            mall.MallId = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter name: ");
            mall.MallName = Console.ReadLine();
            Console.WriteLine("Enter adress: ");
            mall.Address = Console.ReadLine();
            Console.WriteLine("Enter area: ");
            mall.Area = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter floor: ");
            mall.Floors = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter cityId: ");
            mall.CityId = int.Parse(Console.ReadLine());
            mallBusiness.Add(mall);
        }

        private void Update()
        {
            Console.WriteLine("Enter ID to update: ");
            int id = int.Parse(Console.ReadLine());
            Mall mall = mallBusiness.Get(id);
            if (mall != null)
            {
                Console.WriteLine("Enter name: ");
                mall.MallName = Console.ReadLine();
                mallBusiness.Update(mall);
            }
            else
            {
                Console.WriteLine("Mall not found!");
            }
        }

        private void Fetch()
        {
            Console.WriteLine("Enter ID to fetch: ");
            int id = int.Parse(Console.ReadLine());
            Mall mall = mallBusiness.Get(id);
            if (mall != null)
            {
                Console.WriteLine(new string('-', 40));
                Console.WriteLine("ID: " + mall.MallId);
                Console.WriteLine("Name: " + mall.MallName);
                Console.WriteLine("Address: " + mall.Address);
                Console.WriteLine("Area: " + mall.Area);
                Console.WriteLine("Floors: " + mall.Floors);
                Console.WriteLine("City ID: " + mall.CityId);
                Console.WriteLine(new string('-', 40));
            }
        }
        private void Delete()
        {
            Console.WriteLine("Enter ID to delete: ");
            int id = int.Parse(Console.ReadLine());
            mallBusiness.Delete(id);
            Console.WriteLine("Done.");
        }
        private void ShowMenu()
        {
            Console.WriteLine(new string('-', 64));
            Console.WriteLine(new string(' ', 29)
            + "MALLS" + new string(' ', 18));
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
                operation = int.Parse(Console.ReadLine());
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
