using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using jobData;
using System.Data;
namespace GovtJobEntity
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Connection conn = new Connection();
            DataTable tbl = new DataTable();

            String query = "select * from CategoryData ";
            tbl = conn.ExecData(query);
            String Data = "";
 

            if (tbl.Rows.Count > 0)
            {
                for (int x = 0; x < tbl.Rows.Count; x++) {
                    Data = Data + "<div class='col-md-4 form' style='color:white;'><h1 style='font-size:30px;'>" + tbl.Rows[x]["Category"] + "</h1>";
                    Data = Data + "<img src='images/job.jpg' height='300px' width='400px' class='img - thumbnail'>";
                    Data = Data + "<a href='ViewDetails.aspx?Category=" + tbl.Rows[x]["Category"] + "' class='hvr-bounce-to-bottom'>View More</a></div>";
                 }
                data.InnerHtml = Data;
            }
            else {
                    
            }

        }
    }
}