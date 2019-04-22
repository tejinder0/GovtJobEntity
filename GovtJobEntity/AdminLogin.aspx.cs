using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using jobData;
namespace GovtJobEntity
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            String query = "select * from LoginData where Sname='" + UserName.Text + "' and Spassword='" + Password.Text + "'";
            jobData.Login obj = new jobData.Login();

            int y = obj.chkUserName(query);
            if (y == 1)
            {
                // go to adminzone
                Response.Redirect("Dashboard.aspx");
                rslt.InnerHtml = "User Name or Password is valid ";
            }
            else {
                // generate an error message 
                rslt.InnerHtml = "Check User Name or Password";
            }

        }
    }
}