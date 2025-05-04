using System;
using System.Collections.Generic;

namespace project.orm.Models;

public partial class Mall
{
    public int MallId { get; set; }

    public string MallName { get; set; } = null!;

    public string Address { get; set; } = null!;

    public int Area { get; set; }

    public int Floors { get; set; }

    public int CityId { get; set; }

    public virtual City City { get; set; } = null!;

    public virtual ICollection<PersonnelStoreMall> PersonnelStoreMalls { get; set; } = new List<PersonnelStoreMall>();
}
