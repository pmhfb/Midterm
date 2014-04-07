using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections;
namespace TripViewer
{
    public partial class viewmaps : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string getWhileLoopData()
        {
            string htmlStr = "";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();
            SqlCommand cmd = new SqlCommand("select name,Description,mapurl,price from registration", conn);
            int result = cmd.ExecuteNonQuery();
            
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                string name = reader.GetString(0);
                string Description = reader.GetString(1);
                string mapurl = reader.GetString(2);
                string price = reader.GetString(3);
                htmlStr += "<tr><td>" + name + "</td><td>" + Description + "</td><td>" + mapurl + "</td><td>" + price + "</td></tr>";
            }
            cmd.Dispose();
            conn.Close();
            return htmlStr;
        }
    }
}