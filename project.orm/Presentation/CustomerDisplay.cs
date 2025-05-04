using project.orm.Models;
using Projectorm.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projectorm.Presentation1
{
    public class CustomerDisplay
    {
        int Operation = 6;
        public int getOperation()
        {
            return Operation;
        }

        private CustomerBusiness customerBusiness = new CustomerBusiness();
        public CustomerDisplay()
        {
            Input();
        }
        private void show()
        {
            Console.WriteLine(new string('-', 64));
            Console.WriteLine(new string(' ', 29) + "CUSTOMERS" + new string(' ', 18));
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
            
            Console.WriteLine("CUSTOMERS");
            
            var customers = customerBusiness.GetAll();
            foreach (var item in customers)
            {
                Console.WriteLine("{0} {1} {2} {3}", item.CustomerId, item.Name,
                    item.Email, item.TelephoneNumber);
            }
        }
        private void Add()
        {
            Customer customer = new Customer();
            Console.WriteLine("Enter ID: ");
            customer.CustomerId = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter customer's name: ");
            customer.Name = Console.ReadLine();
            Console.WriteLine("Enter email: ");
            customer.Email = Console.ReadLine();
            Console.WriteLine("Enter telephone number: ");
            customer.TelephoneNumber = int.Parse(Console.ReadLine());
            customerBusiness.Add(customer);
        }
        private void Delete()
        {
            Console.WriteLine("Enter ID to delete: ");
            int id = int.Parse(Console.ReadLine());
            customerBusiness.Delete(id);
            Console.WriteLine("Done.");
        }

        private void Fetch()
        {
            Console.WriteLine("Enter ID to fetch: ");
            int id = int.Parse(Console.ReadLine());
            Customer customer = customerBusiness.Get(id);
            if (customer != null)
            {
                Console.WriteLine(new string('-', 40));
                Console.WriteLine("ID: " + customer.CustomerId);
                Console.WriteLine("Name: " + customer.Name);
                Console.WriteLine("Email: " + customer.Email);
                Console.WriteLine("Telephone number: " + customer.TelephoneNumber);
                Console.WriteLine(new string('-', 40));
            }
        }

        private void Update()
        {
            Console.WriteLine("Enter ID to update: ");
            int id = int.Parse(Console.ReadLine());
            Customer customer = customerBusiness.Get(id);
            if (customer != null)
            {
                Console.WriteLine("Enter customer's name: ");
                customer.Name = Console.ReadLine();
                Console.WriteLine("Enter email: ");
                customer.Email = Console.ReadLine();
                Console.WriteLine("Enter telephone number: ");
                customer.TelephoneNumber = int.Parse(Console.ReadLine());
                customerBusiness.Update(customer);
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

