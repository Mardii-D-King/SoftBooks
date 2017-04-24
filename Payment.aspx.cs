using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CashOut : System.Web.UI.Page
{

    public void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] != null)
            Label4.Text = Session["ID"].ToString();

        if (Session["Name"] != null)
            Label3.Text = Session["Name"].ToString();

    }
    protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {
       
    }
    protected void FormView2_PageIndexChanging(object sender, FormViewPageEventArgs e)
    {

    }
   
    protected void FormView1_PageIndexChanging1(object sender, FormViewPageEventArgs e)
    {

    }
    public void Add(object sender, EventArgs e)
    {
      //  int CardID = Convert.ToInt32(((Label)FormView1.FindControl("CardIdLabel")).Text);
        String Cardname = ((TextBox)FormView1.FindControl("CardNameTextBox")).Text;
        int Cardnum = Convert.ToInt32(((TextBox)FormView1.FindControl("CardNumTextBox")).Text);
        String owner = ((TextBox)FormView1.FindControl("OwnerTextBox")).Text;
        
       
     //   int  = Convert.ToInt16(((TextBox)FormView1.FindControl("Lable4")).Text); 


        SqlConnection conn = new SqlConnection(@"Data Source = DESKTOP-D1ADLHT\OWLERY; Initial Catalog = SoftArchives;Integrated Security=True");
        conn.Open();


        SqlCommand cmd = new SqlCommand("Select Count(CardId) from Card", conn);

        int i = Convert.ToInt32(cmd.ExecuteScalar());
        //int i = 1;
        i++;

        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "cardInfo";

        SqlParameter p1 = new SqlParameter();
        p1.ParameterName = "@cardID";
        p1.Value = i;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter();
        p2.ParameterName = "@card_name";
        p2.Value = Cardname;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter();
        p3.ParameterName = "@card_num";
        p3.Value = Cardnum;
        cmd.Parameters.Add(p3);

        Label5.Text = Cardnum.ToString();

        SqlParameter p4 = new SqlParameter();
        p4.ParameterName = "@owner";
        p4.Value = owner;
        cmd.Parameters.Add(p4);


         if (Session["ID"] != null)
            Label4.Text = Session["ID"].ToString();

        String custID = ((Label)FindControl("Label4")).Text;

        SqlParameter p5 = new SqlParameter();
        p5.ParameterName = "@custID";
        p5.Value = custID;
        cmd.Parameters.Add(p5);

        Label7.Text = custID.ToString();



        String type = "";

        bool isChecked = RadioButton2.Checked;

        if (isChecked)
            type = "Debit";

        SqlParameter p6 = new SqlParameter();
        p6.ParameterName = "@type";
        p6.Value = type;
        cmd.Parameters.Add(p6);

        Label6.Text = type.ToString();


        cmd.Connection = conn;
        cmd.ExecuteNonQuery();      
    }
    protected void FormView1_ModeChanging(object sender, FormViewModeEventArgs e)
    {
        if (e.NewMode.ToString() == "Add")
        {
            FormView1.ChangeMode(e.NewMode);
        }
    }
}