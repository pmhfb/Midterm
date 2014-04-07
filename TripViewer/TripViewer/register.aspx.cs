using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace TripViewer
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void register_Click(object sender, EventArgs e)
        {
            string name1 = name.Text;
            string password1 = password.Text;
            

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into register (name,password) values('" + name1 + "','" + password1 + "')", conn);
            int result = cmd.ExecuteNonQuery();
            Label1.Visible = true;
            if (result != 0)
            {
                Label1.Text = "Registration successful";
                // Response.Redirect("login.aspx");
            }
            else
            {
                Label1.Text = "Registration Failed";
            }
            cmd.Dispose();
            conn.Close();

        }
        protected void cpassword_TextChanged(object sender, EventArgs e)
        {

        }

    }
}