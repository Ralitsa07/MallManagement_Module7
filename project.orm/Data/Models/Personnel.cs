using System;
using System.Collections.Generic;

namespace project.orm.Models;

public partial class Personnel
{
    public int PersonnelId { get; set; }

    public string FirstName { get; set; } = null!;

    public string MiddleName { get; set; } = null!;

    public string LastName { get; set; } = null!;

    public int PhoneNumber { get; set; }

    public string JobTitle { get; set; } = null!;

    public decimal Salary { get; set; }

    public DateOnly HireDate { get; set; }

    public virtual PersonnelStoreMall? PersonnelStoreMall { get; set; }
}
