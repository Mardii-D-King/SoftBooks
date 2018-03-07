using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CartMenu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int quan;
        int guestID;

        Cart obj = new Cart();
        Guest g_obj = new Guest();

        String user = Convert.ToString(Session["USER"]);
        int custID = Convert.ToInt16(Session["custId"]);

        if(custID > 0)
        {
            quan = obj.getCustQuantity(custID);
        }
        else
        {
            guestID = g_obj.returnLastGuest();
            quan = obj.getGuestQuantity(guestID);
        }
        //Find the last guest or customer and find their books
        //Calculate the quantity of each books
        //
    }
}