using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LogIn : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        login_pageBody.Attributes.Add("class", ".loginStyles");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlParameter Email_param = new SqlParameter("@email",TextBox1.Text.Trim());
        SqlParameter Passwd_param = new SqlParameter("@passwd", TextBox2.Text.Trim());
        SqlCommand cmd = new SqlCommand("sp_login", conn);

        conn.Open();

        cmd.Parameters.Add(Email_param);
        cmd.Parameters.Add(Passwd_param);
        cmd.CommandType = CommandType.StoredProcedure;

        SqlDataReader dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            Response.Write("<script language='javascript'>window.alert('Login Successfull');</script>");
            Session["USER"] = dr["Name"].ToString();
            Session["custId"] = "";
            Session["custId"] = dr["custId"];
            Label1.Text= "  Welcome" + Session["custId"].ToString();
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Write("<script language='javascript'>window.alert('Wrong Email or Password');</script>");
        }
    }
}