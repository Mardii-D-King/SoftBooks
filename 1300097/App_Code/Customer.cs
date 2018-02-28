using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
    private String fullName;
    private String Email;
    private String Password;
    private Boolean exist = false;

    public Customer()
    {
        
    }

    public Boolean EmailExistance(String Email)
    {
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(cs))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandText = "Select * from Customer";
            cmd.Connection = conn;

            SqlDataReader rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                if (rd[3].ToString().Equals(Email))
                {
                    exist = true;
                    break;
                }
                else
                {
                    exist = false;
                    break;
                }
            }
            return exist;
        }
    }

    public void InsertOrder(String fullName, String Email, String Password)
    {
   
        string cs = ConfigurationManager.ConnectionStrings["dbcs"].ConnectionString;
        using (SqlConnection conn = new SqlConnection(cs))
        {

            conn.Open();
            SqlCommand cmd = new SqlCommand("registration", conn);

            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            SqlParameter p2 = new SqlParameter();
            p2.ParameterName = "@fullName";
            p2.Value = fullName;
            cmd.Parameters.Add(p2);

            SqlParameter p3 = new SqlParameter();
            p3.ParameterName = "@email";
            p3.Value = Email;
            cmd.Parameters.Add(p3);

            SqlParameter p4 = new SqlParameter();
            p4.ParameterName = "@passd";
            p4.Value = Password;
            cmd.Parameters.Add(p4);

            cmd.Connection = conn;
            cmd.ExecuteNonQuery();
        }
    }
}