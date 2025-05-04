using project.orm.Models;
using Projectorm.Business;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Projectorm.Presentation1
{
    public class PersonnelDisplay
    {
        int Operation = 6;
        public int getOperation()
        {
            return Operation;
        }

        private PersonnelBusiness personnelBusiness = new PersonnelBusiness();
        public PersonnelDisplay()
        {
            Input();
        }
        private void show()
        {
            Console.WriteLine(new string('-', 64));
            Console.WriteLine(new string(' ', 29) + "PERSONELLS" + new string(' ', 18));
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
            
            Console.WriteLine("PERSONELLS");
           
            var personnels = personnelBusiness.GetAll();
            foreach (var item in personnels)
            {
                Console.WriteLine("{0} {1} {2} {3} {4} {5} {6} {7}", item.PersonnelId, item.FirstName,
                    item.MiddleName, item.LastName, item.PhoneNumber, item.JobTitle, item.Salary,item.HireDate);
            }
        }
        private void Add()
        {
            Personnel personnel = new Personnel();
            Console.WriteLine("Enter ID: ");
            personnel.PersonnelId = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter first name: ");
            personnel.FirstName = Console.ReadLine();
            Console.WriteLine("Enter middle name: ");
            personnel.MiddleName = Console.ReadLine();
            Console.WriteLine("Enter last name: ");
            personnel.LastName = Console.ReadLine();
            Console.WriteLine("Enter phone number: ");
            personnel.PhoneNumber = int.Parse(Console.ReadLine());
            Console.WriteLine("Enter job title: ");
            personnel.JobTitle = Console.ReadLine();
            Console.WriteLine("Enter salary: ");
            personnel.Salary = decimal.Parse(Console.ReadLine());
            Console.WriteLine("Enter hire date: ");
            personnel.HireDate = DateOnly.Parse(Console.ReadLine());
            personnelBusiness.Add(personnel);
        }
        private void Delete()
        {
            Console.WriteLine("Enter ID to delete: ");
            int id = int.Parse(Console.ReadLine());
            personnelBusiness.Delete(id);
            Console.WriteLine("Done.");
        }

        private void Fetch()
        {
            Console.WriteLine("Enter ID to fetch: ");
            int id = int.Parse(Console.ReadLine());
            Personnel personnel = personnelBusiness.Get(id);
            if (personnel != null)
            {
                Console.WriteLine(new string('-', 40));
                Console.WriteLine("ID: " + personnel.PersonnelId);
                Console.WriteLine("First Name: " + personnel.FirstName);
                Console.WriteLine("Middle Name: " + personnel.MiddleName);
                Console.WriteLine("Last Name: " + personnel.LastName);
                Console.WriteLine("Phone Number: " + personnel.PhoneNumber);
                Console.WriteLine("Job Title: " + personnel.JobTitle);
                Console.WriteLine("Salary: " + personnel.Salary);
                Console.WriteLine("Hire Date: " + personnel.HireDate);
                Console.WriteLine(new string('-', 40));
            }
        }

        private void Update()
        {
            Console.WriteLine("Enter ID to update: ");
            int id = int.Parse(Console.ReadLine());
            Personnel personnel = personnelBusiness.Get(id);
            if (personnel != null)
            {
                Console.WriteLine("Enter first name: ");
                personnel.FirstName = Console.ReadLine();
                Console.WriteLine("Enter middle name: ");
                personnel.MiddleName = Console.ReadLine();
                Console.WriteLine("Enter last name: ");
                personnel.LastName = Console.ReadLine();
                Console.WriteLine("Enter phone number: ");
                personnel.PhoneNumber = int.Parse(Console.ReadLine());
                Console.WriteLine("Enter job title: ");
                personnel.JobTitle = Console.ReadLine();
                Console.WriteLine("Enter salary: ");
                personnel.Salary = decimal.Parse(Console.ReadLine());
                Console.WriteLine("Enter hire date: ");
                personnel.HireDate = DateOnly.Parse(Console.ReadLine());
                personnelBusiness.Update(personnel);
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

