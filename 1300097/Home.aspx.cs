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
    private int sameGuest = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        //user = Session["User"].ToString();

       
    }

   
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label isbn_lbl = GridView1.SelectedRow.FindControl("isbn_lbl") as Label;
        show.Text = isbn_lbl.Text;

        int isbn = Convert.ToInt16(((Label)GridView1.SelectedRow.FindControl("isbn_lbl")).Text);

        Session["ISBN"]=isbn;

        Order(isbn);
    }

    protected void Order(int isbn)
    {
        Cart obj = new Cart();
        Guest g_obj = new Guest();

        String user = Convert.ToString(Session["USER"]);
        int custID = Convert.ToInt16(Session["CUSTid"]);

        //Determine if user is a guest or registered customer
        if (user == "")
        {
            sameGuest++;

            user = "Guest";

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);

            if (sameGuest == 1)
            {

                int guestID;

              guestID = g_obj.addGuest();

                Session["currGuest"] = guestID;
            }

            

            int guestNum = Convert.ToInt16(Session["currGuest"]);

            obj.guestOrder(guestNum, isbn);

            Label2.Text = Convert.ToString(guestNum);
            Label3.Text = Convert.ToString(isbn);
        }
        else
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);

            obj.custOrder(custID, isbn);
        }
    }
}