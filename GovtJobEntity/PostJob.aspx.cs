using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using jobData;
namespace GovtJobEntity
{
    public partial class PostJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnJob_Click(object sender, EventArgs e)
        {
            String query = "insert into JobData(Category,Department,Designation,Posts,Lastdate,Salary)values('"+category.Text+"','"+Department.Text+"','"+Designtion.Text+"',"+Convert.ToInt32(Post.Text)+",'"+lastDate.Text+"',"+Convert.ToInt32(salary.Text)+")";
            Connection obj = new Connection();
            obj.ExecIDU(query);
            category.Text = "";
            Department.Text = "";
            Post.Text = "";
            Designtion.Text = "";
            lastDate.Text = "";
            salary.Text = "";
        }
    }
}