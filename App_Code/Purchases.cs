using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Purchases
/// </summary>
public class Purchases
{
    protected int ISBN;
    protected String NAME;
    protected double COST;
    protected String DESC;
    protected int QUAN;

	public Purchases()
	{
        ISBN = 1;
        NAME = "ThinkPython";
        COST = 12.34;
        DESC = "intermediate Python";
        QUAN = 4;
	}

    public Purchases(int isbn, String bname, double cost, String descr, int quan)
    {
        ISBN = isbn;
        NAME = bname;
        COST = cost;
        DESC = descr;
        QUAN = quan;
    }

    public void addPurchases()
    {
        SqlConnection conn = new SqlConnection(@"Data Source = DESKTOP-D1ADLHT\OWLERY; Initial Catalog = SoftArchives;Integrated Security=True");
        conn.Open();

        SqlCommand cmd = new SqlCommand();

        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "addPurchases";

        SqlParameter p1 = new SqlParameter();
        p1.ParameterName = "@id";
        p1.Value = ISBN;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter();
        p2.ParameterName = "@name";
        p2.Value = NAME;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter();
        p3.ParameterName = "@cost";
        p3.Value = COST;
        cmd.Parameters.Add(p3);

        SqlParameter p4 = new SqlParameter();
        p4.ParameterName = "@descr";
        p4.Value = DESC;
        cmd.Parameters.Add(p4);

        SqlParameter p5 = new SqlParameter();
        p5.ParameterName = "@amt";
        p5.Value = QUAN;
        cmd.Parameters.Add(p5);


        cmd.Connection = conn;
        cmd.ExecuteNonQuery(); 
    }
}