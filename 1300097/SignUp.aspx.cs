using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Customer obj = new Customer();

        Boolean exist = obj.EmailExistance(Convert.ToString(TextBox2.Text));

        if (exist.Equals(true))
        {
            Response.Write("<script language='javascript'>window.alert('Email Already Exist');</script>");

            TextBox1.Text = string.Empty;
            TextBox2.Text = string.Empty;
            TextBox3.Text = string.Empty;
        }
        else
        {
            obj.addCustomer(Convert.ToString(TextBox1.Text), 
                            Convert.ToString(TextBox2.Text),
                            Convert.ToString(TextBox4.Text));

            Response.Write("<script language='javascript'>window.alert('Registration Successful');</script>");
            Response.Redirect("Home.aspx");
        }
    }
}