﻿using System;
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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Order(1, true);
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        Label isbn_lbl = GridView1.SelectedRow.FindControl("isbn_lbl") as Label;
        show.Text = isbn_lbl.Text;

        int isbn = Convert.ToInt16(((Label)GridView1.SelectedRow.FindControl("isbn_lbl")).Text);

        Order(isbn, false);
    }

    protected void Order(int isbn, bool once)
    {
        int guestID;

        Cart obj = new Cart();
        Guest g_obj = new Guest();

        String user = Convert.ToString(Session["USER"]);
        int custID = Convert.ToInt16(Session["CUSTid"]);

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);

        if (once.Equals(true))
        {
            guestID = g_obj.addGuest();
        }

        else
        {
            if (user == "")
            {
                // Create a new sp tha finds what is the latest guest_id and return it

                guestID = g_obj.returnLastGuest();

                obj.guestOrder(guestID, isbn);
            }

            else
            {
                obj.guestOrder(custID, isbn);
            }
        }
    }
}