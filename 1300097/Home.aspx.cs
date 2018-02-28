using System;
using System.IO;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    private String user;

    protected void Page_Load(object sender, EventArgs e)
    {
        //user = Session["User"].ToString();

        LoadImages();
    }

    private void LoadImages()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        
            SqlCommand cmd = new SqlCommand("SELECT * FROM Book", conn);
            conn.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            GridView1.DataSource = rdr;
            GridView1.DataBind();
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        String user;
        Cart obj = new Cart();
        Guest g_obj = new Guest();

        user = Convert.ToString(Session["USER"]);

        if (user == "")
        {
            user = "Guest";
        }

        if(user == "Guest")
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);

             int guestID;

            guestID = g_obj.addGuest();

            obj.guestOrder(guestID,isbn);
        }

        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);

            obj.custOrder(user,isbn);
        }

        
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}