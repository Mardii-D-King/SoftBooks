using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customers
/// </summary>
public class Customers
{
    protected String fname;
    protected String lname;
    protected String password;
    protected String email;
    protected char gender;
    protected int month;
    protected int day;
    protected int year;
  
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
        SqlConnection conn = new SqlConnection("Server=.\\SQLEXPRESS;Database = SoftArchives");
        conn.Open();

        
    }
}