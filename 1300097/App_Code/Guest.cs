using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Guest
/// </summary>
public class Guest
{
    public Guest()
    {
        
    }

    public int addGuest()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString);
      
        conn.Open();
        SqlCommand cmd = new SqlCommand("createGuest", conn);

        cmd.CommandType = System.Data.CommandType.StoredProcedure;

        int one=1;

        SqlParameter p2 = new SqlParameter();
        p2.ParameterName = "@One";
        p2.Value = one;
        cmd.Parameters.Add(p2);

        cmd.Parameters.Add("@guestid", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;
        cmd.ExecuteNonQuery();

        //Converted return Parameter to integer
        int guest = int.Parse(cmd.Parameters["@guestid"].Value.ToString());

        return guest;
    }

    public int returnLastGuest()
    {


        return 0;
    }

}