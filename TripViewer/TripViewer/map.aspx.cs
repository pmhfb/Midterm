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
    public partial class map : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void register_Click(object sender, EventArgs e)
        {
            string name1 = name.Text;
            string desc1 = Description.Text;
            string mapurl1 = mapurl.Text;
            string price1 = price.Text;


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into registration (name, Description, mapurl, price) values('" + name1 + "','" + desc1 + "','" + mapurl1 + "','" + price1 + "')", conn);
            int result = cmd.ExecuteNonQuery();
            Labelc.Visible = true;
            if (result != 0)
            {

                Labelc.Text = "Map created";
                // Response.Redirect("login.aspx");
            }
            else
            {
                Labelc.Text = "Creation of Map Failed";
            }

            cmd.Dispose();
            conn.Close();

        }

        protected void Checkin_Click(object sender, EventArgs e)
        {

            string name1 = checkinname.Text;
            string title1 = title.Text;
            string checkdesc1 = checkdesc.Text;
            string image1 = image.Text;
            string lat1 = lat.Text;
            string longitude1 = longitude.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbString"].ConnectionString);
            //Open the connection
            con.Open();

            SqlCommand cmd = new SqlCommand("insert into Checkin (checkinname,title,checkdesc,image,lat,longitude) values('" + name1 + "','" + title1 + "','" + checkdesc1 + "','" + image1 + "','" + lat1 + "','" + longitude1 + "')", con);
            int result = cmd.ExecuteNonQuery();
            Label1.Visible = true;
            if (result != 0)
            {
                Label1.Text = "Checkin added";
                // Response.Redirect("login.aspx");
            }
            else
            {
                Label1.Text = "Adding the Checkin Failed";
            }
            cmd.Dispose();
            con.Close();

        }
        
        }
}