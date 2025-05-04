using System;
using System.Collections.Generic;

namespace project.orm.Models;

public partial class Customer
{
    public int CustomerId { get; set; }

    public string Name { get; set; } = null!;

    public string? Email { get; set; }

    public int? TelephoneNumber { get; set; }

    public virtual ICollection<Sale> Sales { get; set; } = new List<Sale>();
}
