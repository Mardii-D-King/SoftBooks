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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        double total,tot=0;

        for(int i=0; i <GridView1.Rows.Count; i++)
        {
            CheckBox ch=(CheckBox) GridView1.Rows[i].FindControl("CheckBox1");
            Label lb = (Label)GridView1.Rows[i].FindControl("Label1");
           Label lbs = (Label)GridView1.Rows[i].FindControl("Label2");

           
           double price = Convert.ToDouble(lbs.Text.ToString());

           total = +price;
           

           if (ch.Checked == true)
           {
               ListBox1.Items.Add(lb.Text.ToString());
               ListBox1.Items.Add(lbs.Text.ToString());

              

               
           }
           tot += total;
           Label4.Text = tot.ToString();
        }

        

    }
}