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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void user_Click(object sender, EventArgs e)
        {
            string name1 = username.Text;

            string password1 = password.Text;

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            SqlCommand cmd = new SqlCommand("select name,password from register where name='" + name1 + "' and password='" + password1 + "'", conn);
            string CurrentName;
            CurrentName = (string)cmd.ExecuteScalar();

            Labelc.Visible = true;
            if (CurrentName != null)
            {
                Labelc.Text = "Login successful";
                Session["main_name"] = name1;
                Response.Redirect("Mapui.aspx");
            }
            else
            {
                Labelc.Text = "Login Failed! Please check the login name/password !";
            }
            cmd.Dispose();
            conn.Close();
        }
    }
}