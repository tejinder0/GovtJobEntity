using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using jobData;

namespace GovtJobEntity
{
    public partial class AddCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCategory_Click(object sender, EventArgs e)
        {
            String query = "insert into CategoryData(Category)values('" +category.Text+"')";
            jobData.Connection conn = new jobData.Connection();
            conn.ExecIDU(query);
            rslt.InnerHtml = "Category Saved";
            category.Text = "";
        }
    }
}