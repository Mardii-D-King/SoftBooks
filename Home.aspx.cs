using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["Name"]!=null)
        Label6.Text = Session["Name"].ToString();
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                int isbn;
                String name;
                double cost;
                String desc;
                int amt;

                CheckBox chk = (CheckBox)gvrow.FindControl("CheckBox1");
                if (chk != null & chk.Checked)
                {

                    isbn = Convert.ToInt16(((Label)gvrow.FindControl("Label1")).Text);
                    name = ((Label)gvrow.FindControl("Label2")).Text;
                    cost = Convert.ToDouble(((Label)gvrow.FindControl("Label3")).Text);
                    desc = ((Label)gvrow.FindControl("Label4")).Text;
                    amt = Convert.ToInt16(((TextBox)gvrow.FindControl("textbox6")).Text);

                    

                    Purchases obj = new Purchases(isbn, name, cost, desc, amt);
                    obj.addPurchases();
                }
                chk.Checked = false;
                TextBox amount = (TextBox)gvrow.FindControl("textbox6");
            amount.Text = String.Empty;
            }
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}