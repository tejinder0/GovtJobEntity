using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using jobData;
namespace GovtJobEntity
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnMessage_Click(object sender, EventArgs e)
        {
            String query = "insert into contact(Sname,Scontact,Semail,Smsg) values('" + Name.Text + "','" + ContactNo.Text + "','" + EmailID.Text + "','" + Msg.Text + "')";
            Connection conn = new Connection();
            conn.ExecIDU(query);
            Name.Text = "";
            ContactNo.Text = "";
            EmailID.Text = "";
            Msg.Text = "";
            rslt.InnerHtml = "We Will give answer your query soon ";

        }
    }
}