using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASPProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            using (SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString)) 
            {
                sqlConnection.Open();
                SqlCommand sqlCommand = new SqlCommand("select * from Student where Email='" + TextBox1.Text + "' and Password='" + Password1.Text + "'", sqlConnection);
                SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
                if (sqlDataReader.HasRows == true)
                {
                    sqlDataReader.Read();
                    Response.Redirect("StudentHome.aspx");

                }
                else
                {
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), "popup", "alert('Something went wrong...\\nInvalid login')", true);
                }
            }
        }

    }
}