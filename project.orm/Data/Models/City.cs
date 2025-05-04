using System;
using System.Collections.Generic;

namespace project.orm.Models;

public partial class City
{
    public int CityId { get; set; }

    public string CityName { get; set; } = null!;

    public virtual ICollection<Mall> Malls { get; set; } = new List<Mall>();
}



