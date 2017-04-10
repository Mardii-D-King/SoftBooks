using System;
using System.Collections.Generic;
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
    private string p1;
    private string p2;
    private string p3;
    private string p4;
    private string p5;
    private string p6;
    private char sex;
    private string p7;
    private string p8;
    private string p9;

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

    public Customers(string p1, string p2, string p3, string p4, string p5, string p6, char sex, string p7, string p8, string p9)
    {
        // TODO: Complete member initialization
        this.p1 = p1;
        this.p2 = p2;
        this.p3 = p3;
        this.p4 = p4;
        this.p5 = p5;
        this.p6 = p6;
        this.sex = sex;
        this.p7 = p7;
        this.p8 = p8;
        this.p9 = p9;
    }

    public void Customer(String fn, String ln, String pass, String mail, char sex, int mn, int dy, int yr)
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
}