using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
namespace jobData
{
   public class Login
    {
        public String Name { get; set; }
        public String Password { get; set; }


        DataTable tbl = new DataTable();
        Connection objConn = new Connection();

        public int chkUserName(String query) {
            tbl = objConn.ExecData(query);
            if (tbl.Rows.Count > 0)
            {
                return 1;
            }
            else {
                return 0;
            }
                
        }

    }
}
