using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using TygaSoft.Model;

namespace TygaSoft.IDAL
{
    public partial interface IRoleMenu
    {
        #region IRoleMenu Member

        int DeleteByMenuId(Guid menuId);

        #endregion
    }
}
