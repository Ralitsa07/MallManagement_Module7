using Projectorm.Presentation1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace project.orm.Presentation
{
    public class Display
    {
        public Display()
        {
            
            ShowDisplay();
        }
        private void ShowHead()
        {
            string s = "\n  _____         _____    _____                    _ _          " +
                     "\n |  __ \\  ___  |  __ \\  |  __ \\                  | (_)         " +
                     "\n | |  | |( _ ) | |__) | | |__) |_ _ _ __ __ _  __| |_ ___  ___ " +
                     "\n | |  | |/ _ \\/\\  _  /  |  ___/ _` | '__/ _` |/ _` | / __|/ _ \\" +
                     "\n | |__| | (_>  < | \\ \\  | |  | (_| | | | (_| | (_| | \\__ \\  __/" +
                     "\n |_____/ \\___/\\/_|  \\_\\ |_|   \\__,_|_|  \\__,_|\\__,_|_|___/\\___|" +
                     "\n                                                               ";
            Console.WriteLine(s);
            Console.WriteLine(new string('-', 64));
            Console.WriteLine(new string(' ', 29)
            + "WELCOME" + new string(' ', 18));
            Console.WriteLine(new string('-', 64));
            Console.WriteLine("1.Hi! :)");
            Console.WriteLine("2.Bye! :(");
        }
        private void ShowMenu()
        {
           
            Console.WriteLine(new string('-', 64));
            Console.WriteLine(new string(' ', 29)
            + "MALL MENU" + new string(' ', 18));
            Console.WriteLine(new string('-', 64));
            Console.WriteLine("Cities");
            Console.WriteLine("Customers");
            Console.WriteLine("Malls");
            Console.WriteLine("Personells");
            Console.WriteLine("Personells Store Mall");
            Console.WriteLine("Sales");
            Console.WriteLine("Stores");
            Console.WriteLine("Exit");
        }

        public void ShowDisplay()
        {

            string operation = " ";
            bool flag = true;
            ShowHead();
            int word = int.Parse(Console.ReadLine());
            if (word == 1)
            {
                do
                {
                    ShowMenu();
                    operation = Console.ReadLine();

                    switch (operation)
                    {
                        case "Cities":
                            {
                                new CityDisplay();
                                break;
                            }
                        case "Customers":
                            {
                                new CustomerDisplay();
                                break;
                            }
                        case "Malls":
                            {
                                new MallDisplay();
                                break;
                            }
                        case "Personells":
                            {
                                new PersonnelDisplay();
                                break;
                            }
                        case "Personells Store Mall":
                            {
                                new PersonnelStoreMallDisplay();
                                break;
                            }
                        case "Sales":
                            {
                                new SaleDisplay();
                                break;
                            }
                        case "Stores":
                            {
                                new StoreDisplay();
                                break;
                            }
                        case "Exit":
                            {
                                flag = false;
                                break;
                            }

                    }
                    if (flag == false) break;

                } while (true);
            }
            else if (word == 2)
            {
                Console.WriteLine("Bye bye!");
            }
        }
    }
}

