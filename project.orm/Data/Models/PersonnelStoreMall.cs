using System;
using System.Collections.Generic;

namespace project.orm.Models;

public partial class PersonnelStoreMall
{
    public int PersonnelId { get; set; }

    public int? StoreId { get; set; }

    public int MallId { get; set; }

    public virtual Mall Mall { get; set; } = null!;

    public virtual Personnel Personnel { get; set; } = null!;

    public virtual Store? Store { get; set; }
}
