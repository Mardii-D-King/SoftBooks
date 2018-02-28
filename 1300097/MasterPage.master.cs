using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    private String user = "Guest";
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["User"] = user;

        Label1.Text = user;
    }

    
}
