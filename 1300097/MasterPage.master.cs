using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        pageBody.Attributes.Add("class", "test");

        String user = Convert.ToString(Session["USER"]);

        if(user == "")
        {
            Label1.Text = "Guest";
        }
    }
}
