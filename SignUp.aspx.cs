using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUp : System.Web.UI.Page
{
    protected char sex;

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
                                      Convert.ToString(TextBox5.Text), Convert.ToString(TextBox7.Text),
                                      sex, Convert.ToInt16(DropDownList1.SelectedValue),
                                      Convert.ToInt16(DropDownList2.SelectedValue), 
                                      Convert.ToInt16(TextBox8.Text));

        
    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {
        sex = 'M';
    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
        sex = 'F';
    }
}