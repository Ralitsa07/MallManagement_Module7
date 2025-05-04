using project.orm.Models;
using Projectorm.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projectorm.Presentation1
{
    public class PersonnelStoreMallDisplay
    {
        int Operation = 6;
        public int getOperation()
        {
            return Operation;
        }

        private PersonnelStoreMallBusiness personnelStoreMallBusiness = new PersonnelStoreMallBusiness();
        public PersonnelStoreMallDisplay()
        {
            Input();
        }
        private void show()
        {
            Console.WriteLine(new string('-', 64));
            Console.WriteLine(new string(' ', 29) + "PERSONELLS STORE MALL" + new string(' ', 18));
            Console.WriteLine(new string('-', 64));
            Console.WriteLine("1. List all entries");
            Console.WriteLine("2. Add new entry");
            Console.WriteLine("3. Update entry");
            Console.WriteLine("4. Fetsch entry by ID");
            Console.WriteLine("5. Delete entry by ID");
            Console.WriteLine("6. Exit");
        }
        private void ListAll()
        {
           
            Console.WriteLine("PERSONELLS STORE MALL");
            
            var personnelStoreMalls = personnelStoreMallBusiness.GetAll();
            foreach (var item in personnelStoreMalls)
            {
                Console.WriteLine("{0} {1} {2}", item.PersonnelId, item.StoreId, item.MallId);
            }
        }
        private void Add()
        {
            PersonnelStoreMall personnelStoreMall = new PersonnelStoreMall();
            Console.WriteLine("Enter ID: ");
            personnelStoreMall.PersonnelId = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter store ID: ");
            personnelStoreMall.StoreId = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter mall ID: ");
            personnelStoreMall.MallId = int.Parse(Console.ReadLine());
            personnelStoreMallBusiness.Add(personnelStoreMall);
        }
        private void Delete()
        {
            Console.WriteLine("Enter ID to delete: ");
            int id = int.Parse(Console.ReadLine());
            personnelStoreMallBusiness.Delete(id);
            Console.WriteLine("Done.");
        }

        private void Fetch()
        {
            Console.WriteLine("Enter ID to fetch: ");
            int id = int.Parse(Console.ReadLine());
            PersonnelStoreMall personnelStoreMall = personnelStoreMallBusiness.Get(id);
            if (personnelStoreMall != null)
            {
                Console.WriteLine(new string('-', 40));
                Console.WriteLine("Personnel ID: " + personnelStoreMall.PersonnelId);
                Console.WriteLine("Store ID: " + personnelStoreMall.StoreId);
                Console.WriteLine("Mall ID: " + personnelStoreMall.MallId);
                Console.WriteLine(new string('-', 40));
            }
        }

        private void Update()
        {
            Console.WriteLine("Enter ID to update: ");
            int id = int.Parse(Console.ReadLine());
            PersonnelStoreMall personnelStoreMall = personnelStoreMallBusiness.Get(id);
            if (personnelStoreMall != null)
            {
                Console.WriteLine("Enter store ID: ");
                personnelStoreMall.StoreId = int.Parse(Console.ReadLine());
                Console.WriteLine("Enter mall ID: ");
                personnelStoreMall.MallId = int.Parse(Console.ReadLine());
                personnelStoreMallBusiness.Update(personnelStoreMall);
            }
            else
            {
                Console.WriteLine("Product not found!");
            }
        }

        private void Input()
        {
            int operation = 0;
            bool flag = true;

            do
            {
                show();
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
