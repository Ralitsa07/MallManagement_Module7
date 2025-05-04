using project.orm.Business;
using project.orm.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace project.orm.Presentation
{
    public class SaleDisplay
    {
        int Operation = 6;
        public int getOperation()
        {
            return Operation;
        }

        private SaleBusiness saleBusiness = new SaleBusiness();

        public SaleDisplay()
        {
            Input();
        }
        private void ListAll()
        {
            Console.WriteLine("SALES");
            var sales = saleBusiness.GetAll();
            foreach (var item in sales)
            {
                Console.WriteLine("{0} {1} {2} {3} {4} {5} {6}", item.SaleId, item.ProductName,item.SaleDate,item.UnitPrice,item.Quantity,item.CustomerId,item.StoreId);
            }
        }

        private void Add()
        {
            Sale sale = new Sale();
            Console.WriteLine("Enter ID: ");
            sale.SaleId = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter name: ");
            sale.ProductName = Console.ReadLine();
            Console.WriteLine("Enter date: ");
            sale.SaleDate = DateOnly.Parse(Console.ReadLine());
            Console.WriteLine("Enter unit price: ");
            sale.UnitPrice = decimal.Parse(Console.ReadLine());
            Console.WriteLine("Enter quantity: ");
            sale.Quantity = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter customerID: ");
            sale.CustomerId = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter storeID: ");
            sale.StoreId = int.Parse(Console.ReadLine());
            saleBusiness.Add(sale);
        }

        private void Update()
        {
            Console.WriteLine("Enter ID to update: ");
            int id = int.Parse(Console.ReadLine());
            Sale sale = saleBusiness.Get(id);
            if (sale != null)
            {
                Console.WriteLine("Enter name: ");
                sale.ProductName = Console.ReadLine();
                saleBusiness.Update(sale);
            }
            else
            {
                Console.WriteLine("Product not found!");
            }
        }

        private void Fetch()
        {
            Console.WriteLine("Enter ID to fetch: ");
            int id = int.Parse(Console.ReadLine());
            Sale sale = saleBusiness.Get(id);
            if (sale != null)
            {
                Console.WriteLine(new string('-', 40));
                Console.WriteLine("ID: " + sale.SaleId);
                Console.WriteLine("Product Name: " + sale.ProductName);
                Console.WriteLine("Sale Date: " + sale.SaleDate);
                Console.WriteLine("Unit Price: " + sale.UnitPrice);
                Console.WriteLine("Quantity: " + sale.Quantity);
                Console.WriteLine("Customer ID: " + sale.CustomerId);
                Console.WriteLine("Store ID: " + sale.StoreId);
                Console.WriteLine(new string('-', 40));
            }
        }
        private void Delete()
        {
            Console.WriteLine("Enter ID to delete: ");
            int id = int.Parse(Console.ReadLine());
            saleBusiness.Delete(id);
            Console.WriteLine("Done.");
        }
        private void ShowMenu()
        {
            Console.WriteLine(new string('-', 64));
            Console.WriteLine(new string(' ', 29)
            + "SALES" + new string(' ', 18));
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
