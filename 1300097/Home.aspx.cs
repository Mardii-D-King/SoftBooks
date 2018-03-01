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

       
    }

   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       //// String l1 = GridView1.SelectedRow.FindControl("Lable2") as Label;
       // Label2.Text = isbn;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}