using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;


public class Cart
{
    private int CustID;
    private int ISBN;
    private int orderNum;
    

    public Cart()
    {
    }

    public void guestOrder(int guestId, int isbn)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
        conn.Open();

        SqlCommand cmd = new SqlCommand("guestOrder", conn);
                  
        cmd.CommandType = System.Data.CommandType.StoredProcedure;

        SqlParameter p2 = new SqlParameter();
        p2.ParameterName = "@guest_id";
        p2.Value = guestId;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter();
        p3.ParameterName = "@isbn";
        p3.Value = isbn;
        cmd.Parameters.Add(p3);

        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
    }

    public void custOrder(int CustId, int isbn)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);

        SqlCommand cmd = new SqlCommand("custOrder", conn);
        conn.Open();

        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "createOrder";

        SqlParameter p3 = new SqlParameter();
        p3.ParameterName = "@custid";
        p3.Value = CustId;
        cmd.Parameters.Add(p3);

        SqlParameter p2 = new SqlParameter();
        p2.ParameterName = "@isbn";
        p2.Value = ISBN;
        cmd.Parameters.Add(p2);

       

        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
    }
}