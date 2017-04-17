using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

public partial class SignIn : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlParameter param_email = new SqlParameter("@email",TextBox1.Text.Trim());
        SqlParameter param_pass = new SqlParameter("@pass", TextBox2.Text.Trim());

        SqlCommand cmd = new SqlCommand("Login",conn);
        cmd.Parameters.Add(param_email);
        cmd.Parameters.Add(param_pass);
        cmd.CommandType = CommandType.StoredProcedure;
        conn.Open();
        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            if (TextBox1.Text.Equals("admin@email.com"))
            {
                Response.Redirect("Admin.aspx");
            }

            else
            {
                //Pass ISBN to the Profile page by a session               

                Session["CustID"] = dr["CustId"].ToString();
                Session["Name"] = dr["Firstname"].ToString();

                Response.Write("<script language='javascript'>window.alert('Login Successfull');</script>");
                Response.Redirect("Home.aspx");
            }
        }

        else
        {
            Response.Write("<script language='javascript'>window.alert('Wrong Email or Password');</script>");
        }
        conn.Close();
    }
} //SELECT Firstname FROM Customer WHERE Email=@email;