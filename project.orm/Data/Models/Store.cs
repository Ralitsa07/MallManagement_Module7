using System;
using System.Collections.Generic;

namespace project.orm.Models;

public partial class Store
{
    public int StoreId { get; set; }

    public string StoreName { get; set; } = null!;

    public string Category { get; set; } = null!;

    public int Floor { get; set; }

    public DateOnly OpeningDate { get; set; }

    public virtual ICollection<PersonnelStoreMall> PersonnelStoreMalls { get; set; } = new List<PersonnelStoreMall>();

    public virtual ICollection<Sale> Sales { get; set; } = new List<Sale>();
}
