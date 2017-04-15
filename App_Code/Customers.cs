using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customers
/// </summary>
public class Customers
{
    private String fname;
    private String lname;
    private String password;
    private String email;
    private char gender;
    private int month;
    private int day;
    private int year;
  
	public Customers()
	{
        fname = "Mardon";
        lname = "Bailey";
        password = "password";
        email = "test@email.com";
        gender = 'M';
        month = 1;
        day = 2;
        year = 2003;
	}

    public Customers(String fn, String ln, String pass, String mail, char sex, int mn, int dy, int yr)
    {
        fname = fn;
        lname = ln;
        password = pass;
        email = mail;
        gender = sex;
        month = mn;
        day = dy;
        year = yr;
    }

    public String getFname()
    {
        return fname;
    }

    public void setFname(String fname)
    {
        this.fname = fname;
    }

    public String getLname()
    {
        return lname;
    }

    public void setLname(String lname)
    {
        this.lname = lname;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public char getGender()
    {
        return gender;
    }

    public void setGender(char gender)
    {
        this.gender = gender;
    }

    public int getMonth()
    {
        return month;
    }

    public void setMonth(int month)
    {
        this.month = month;
    }

    public int getDay()
    {
        return day;
    }

    public void setDay(int day)
    {
        this.day = day;
    }

    public int getYear()
    {
        return year;
    }

    public void setYear(int year)
    {
        this.year = year;
    }

    //Create table to enter records

    public void CreateRecord()
    {
        SqlConnection conn = new SqlConnection(@"Data Source = DESKTOP-D1ADLHT\OWLERY; Initial Catalog = SoftArchives;Integrated Security=True");
        conn.Open();
        
        SqlCommand cmd = new SqlCommand("Select Count(CustId) from Customer", conn);    

        int i = Convert.ToInt32(cmd.ExecuteScalar());
        i++;

        cmd.CommandType = System.Data.CommandType.StoredProcedure;
        cmd.CommandText = "Register";

        SqlParameter p1 = new SqlParameter();
        p1.ParameterName = "@id";
        p1.Value = i;
        cmd.Parameters.Add(p1);

        SqlParameter p2 = new SqlParameter();
        p2.ParameterName = "@fn";
        p2.Value = fname;
        cmd.Parameters.Add(p2);

        SqlParameter p3 = new SqlParameter();
        p3.ParameterName = "@ln";
        p3.Value = lname;
        cmd.Parameters.Add(p3);

        SqlParameter p4 = new SqlParameter();
        p4.ParameterName = "@pass";
        p4.Value = password;
        cmd.Parameters.Add(p4);

        SqlParameter p5 = new SqlParameter();
        p5.ParameterName = "@mail";
        p5.Value = email;
        cmd.Parameters.Add(p5);

        SqlParameter p6 = new SqlParameter();
        p6.ParameterName = "@sex";
        p6.Value = gender;
        cmd.Parameters.Add(p6);

        cmd.Connection = conn;
        cmd.ExecuteNonQuery();      
    }
}