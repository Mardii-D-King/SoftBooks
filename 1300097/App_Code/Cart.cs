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
    

    public Cart(int custId, int isbn, int order_Num)
    {
        CustID = custId;
        ISBN = isbn;
        orderNum = order_Num;
    }

    public void InsertOrder()
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        
            SqlCommand cmd = new SqlCommand("SELECT * FROM Book", conn);
            conn.Open();          
        

        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "createOrder";

        SqlParameter p1 = new SqlParameter();
        p1.ParameterName = "@cust_id";
        p1.Value = CustID;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter();
        p2.ParameterName = "@isbn";
        p2.Value = ISBN;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter();
        p3.ParameterName = "@ordernum";
        p3.Value = orderNum;
        cmd.Parameters.Add(p3);

        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
    }
}