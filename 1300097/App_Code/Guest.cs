using System;
using System.Collections.Generic;
using System.Configuration;
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

            SqlParameter guest = new SqlParameter("@return", System.Data.SqlDbType.Int);
           
            cmd.Connection = conn;
            cmd.ExecuteNonQuery();

            return Convert.ToInt32(guest);    
    }
}