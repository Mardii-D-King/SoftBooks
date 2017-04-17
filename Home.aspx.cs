using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      //  Label6.Text = Session["Name"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        double total = 0;
       
        
        for(int i=0; i <GridView1.Rows.Count; i++)
        {
            CheckBox ch=(CheckBox) GridView1.Rows[i].FindControl("CheckBox1");

            Label isbn = (Label)GridView1.Rows[i].FindControl("Label1");
            Label name = (Label)GridView1.Rows[i].FindControl("Label2");
           Label cost = (Label)GridView1.Rows[i].FindControl("Label3");
           Label descr = (Label)GridView1.Rows[i].FindControl("Label4");
           Label stock = (Label)GridView1.Rows[i].FindControl("Label5");
           TextBox amount = (TextBox)GridView1.Rows[i].FindControl("TextBox5");
          

           if (ch.Checked == true)
           {
             //  ListBox1.Items.Add(isbn.Text.ToString() + "\t" + name.Text.ToString() + '$' + cost.Text.ToString() + descr.Text.ToString() + stock.Text.ToString() + amount.Text.ToString());

               double price = Convert.ToDouble(cost.Text.ToString());

               total += price;

               Session["Price"] = Convert.ToString(total);

              // total = Session["Price"];

             //  Label4.Text = Session["Price"].ToString();
           };
            ch.Checked = false;
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
        Response.Redirect("CheckOut.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}