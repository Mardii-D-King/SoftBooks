using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length > 7 && args.Value.Length < 15)
        {
            args.IsValid = true;
        }

        else
        {
            args.IsValid = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Customers obj = new Customers(Convert.ToString(TextBox1.Text), Convert.ToString(TextBox2.Text),
                                      Convert.ToString(TextBox5.Text), Convert.ToString(TextBox7.Text));

        Boolean exist = obj.EmailExistance();

        if (exist.Equals(true))
        {
            Response.Write("<script language='javascript'>window.alert('Email Already Exist');</script>");

            TextBox6.Text = string.Empty;
            TextBox7.Text = string.Empty;
        }
        else 
        {
            obj.CreateRecord();
            Response.Write("<script language='javascript'>window.alert('Registration Successful');</script>");
            Response.Redirect("SignIn.aspx");
        }
       
    }
}