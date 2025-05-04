using System;
using System.Collections.Generic;

namespace project.orm.Models;

public partial class Sale
{
    public int SaleId { get; set; }

    public string ProductName { get; set; } = null!;

    public DateOnly SaleDate { get; set; }

    public decimal UnitPrice { get; set; }

    public int Quantity { get; set; }

    public int CustomerId { get; set; }

    public int StoreId { get; set; }

    public virtual Customer Customer { get; set; } = null!;

    public virtual Store Store { get; set; } = null!;
}
