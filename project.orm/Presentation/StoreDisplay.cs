using project.orm.Business;
using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace project.orm.Presentation
{
    public class StoreDisplay
    {
        int Operation = 6;
        public int getOperation()
        {
            return Operation;
        }

        private StoreBusiness storeBusiness = new StoreBusiness();

        public StoreDisplay()
        {
            Input();
        }
        private void ListAll()
        {
            Console.WriteLine("STORES");
            var stores = storeBusiness.GetAll();
            foreach (var item in stores)
            {
                Console.WriteLine("{0} {1} {2} {3} {4}", item.StoreId, item.StoreName,item.Category,item.Floor,item.OpeningDate);
            }
        }

        private void Add()
        {
            Store store = new Store();
            Console.WriteLine("Enter ID: ");
            store.StoreId = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter name: ");
            store.StoreName = Console.ReadLine();
            Console.WriteLine("Enter category: ");
            store.Category = Console.ReadLine();
            Console.WriteLine("Enter floor: ");
            store.Floor = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter opening date: ");
            store.OpeningDate = DateOnly.Parse(Console.ReadLine());
            storeBusiness.Add(store);
        }

        private void Update()
        {
            Console.WriteLine("Enter ID to update: ");
            int id = int.Parse(Console.ReadLine());
            Store store = storeBusiness.Get(id);
            if (store != null)
            {
                Console.WriteLine("Enter name: ");
                store.StoreName = Console.ReadLine();
                storeBusiness.Update(store);
            }
            else
            {
                Console.WriteLine("Store not found!");
            }
        }

        private void Fetch()
        {
            Console.WriteLine("Enter ID to fetch: ");
            int id = int.Parse(Console.ReadLine());
            Store store = storeBusiness.Get(id);
            if (store != null)
            {
                Console.WriteLine(new string('-', 40));
                Console.WriteLine("ID: " + store.StoreId);
                Console.WriteLine("Name: " + store.StoreName);
                Console.WriteLine("Category: " + store.Category);
                Console.WriteLine("Floor: " + store.Floor);
                Console.WriteLine("Opening date: " + store.OpeningDate);
                Console.WriteLine(new string('-', 40));
            }
        }
        private void Delete()
        {
            Console.WriteLine("Enter ID to delete: ");
            int id = int.Parse(Console.ReadLine());
            storeBusiness.Delete(id);
            Console.WriteLine("Done.");
        }
        private void ShowMenu()
        {
            Console.WriteLine(new string('-', 64));
            Console.WriteLine(new string(' ', 29)
            + "STORES" + new string(' ', 18));
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
