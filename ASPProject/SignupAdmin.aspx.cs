using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ASPProject
{
    public partial class SignupAdmin : System.Web.UI.Page
    {
        SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Admin\source\repos\ASPProject\ASPProject\App_Data\Enrollment.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            sqlConnection.Open();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
        }
    }
}