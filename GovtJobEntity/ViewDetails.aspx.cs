using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using jobData;

namespace GovtJobEntity
{
    public partial class ViewDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Connection conn = new Connection();
            DataTable tbl = new DataTable();
            String query = "";
            int x = 0;
            if (Request.QueryString["Category"] != null)
            {

                 query = "select * from JobData where Category='" + Request.QueryString["Category"] + "' ";
                tbl = conn.ExecData(query);
                String Data = "";


                if (tbl.Rows.Count > 0)
                {
                    for (x = 0; x < tbl.Rows.Count; x++)
                    {
                        Data = Data + "<div class='col-md-4 form' style='color:white;font-size:40px;'><h1 style='font-size:30px;'>" + tbl.Rows[x]["Category"] + "</h1>";
                        Data = Data + "<img src='images/job.jpg' height='300px' width='400px' class='img - thumbnail'>";
                        Data = Data + "<h3>Department---" + tbl.Rows[x]["Department"] + "</h3><h3>Designation---" + tbl.Rows[x]["Designation"] + "</h3>";
                        Data = Data + "<h3>No of Posts---" + tbl.Rows[x]["Posts"] + "</h3><h3>LastDate---" + tbl.Rows[x]["Lastdate"] + "</h3>";
                        Data = Data + "<h3>Salary---$" + tbl.Rows[x]["Salary"] + "</h3></div>";

                    }
                    data.InnerHtml = Data;
                }
                else
                {
                    data.InnerHtml = "No Job is Available Now";
                }

            }
            else {
                query = "select * from JobData";
                tbl = conn.ExecData(query);
                String Data = "";


                if (tbl.Rows.Count > 0)
                {
                    for (x = 0; x < tbl.Rows.Count; x++)
                    {
                        Data = Data + "<div class='col-md-4 form' style='color:white;'><h1 style='font-size:30px;'>" + tbl.Rows[x]["Category"] + "</h1>";
                        Data = Data + "<img src='images/job.jpg' height='300px' width='400px' class='img - thumbnail'>";
                        Data = Data + "<h3>Department---" + tbl.Rows[x]["Department"] + "</h3><h3>Designation---" + tbl.Rows[x]["Designation"] + "</h3>";
                        Data = Data + "<h3>No of Posts---" + tbl.Rows[x]["Posts"] + "</h3><h3>LastDate---" + tbl.Rows[x]["Lastdate"] + "</h3>";
                        Data = Data + "<h3>Salary---$" + tbl.Rows[x]["Salary"] + "</h3></div>";

                    }
                    data.InnerHtml = Data;
                }
                else
                {
                    data.InnerHtml = "No Job is Available Now";
                }



            }
        }
    }
}