package bean;

import java.sql.*;
import java.util.*;
import java.io.Serializable;
import java.io.*;

public class RegisterBean  implements Serializable
{
	private String uname;
	private String pass;
	private String repass;
	private String fname;
	private String lname;
	private String address;
	private String email;
	private String phone;
	private String role;

	Connection con = null;

	public void setUname(String uname)
	{
		this.uname = uname;
	}

	public String getUname()
	{
		return uname;
	}

	public void setPass(String pass)
	{
		this.pass = pass;
	}



	public String getPass()
	{
		return pass;
	}


	public void setFname(String fname)
	{
		this.fname = fname;
	}

	public String getFname()
	{
		return fname;
	}

	public void setLname(String lname)
	{
		this.lname = lname;
	}

	public String getLname()
	{
		return lname;
	}

	public void setAddress(String address)
	{
		this.address = address;
	}

        public String getAddress()
	{
		return address;
	} 

	public void setrole(String role)
	{
		this.role = role;
	}

	public String getrole()
	{
		return role;
	}

	public void setEmail(String email)
	{
		this.email = email;
	}

	public String getEmail()
	{
		return email;
	}

	public void setPhone(String phone)
	{
		this.phone = phone;
	}

	public String getPhone()
	{
		return phone;
	}

	public boolean registerUser() throws SQLException
	{
		try
		{
			/*  Loading the driver */
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			/* Creating a connection */
			con = DriverManager.getConnection("jdbc:odbc:supermart","sa","sa");
			/* Creating a PreparedStatement */
			PreparedStatement stat1 = con.prepareStatement("SELECT * FROM USER_PROFILE WHERE username=?");
			stat1.setString(1, uname);
			ResultSet rs = stat1.executeQuery();
			if(rs.next())
			{
				rs.close();
				stat1.close();
				con.close();
                                System.out.println("inside if\t" + uname);
				return false;
			}
			else
			{
                            System.out.println("inside else\t" + uname);
				PreparedStatement stat2 = con.prepareStatement("INSERT INTO USER_PROFILE VALUES (?,?,?,?,?,?,?,?)");
				/* Creating a PreparedStatement */
							
                                stat2.setString(1, role);
				stat2.setString(2, uname);
				stat2.setString(3, pass);
				stat2.setString(4, fname);
				stat2.setString(5, lname);
				stat2.setString(6, address);
				stat2.setString(7, phone);
				stat2.setString(8, email);
	
				stat2.executeUpdate();
				stat2.close();
                                                                  
				con.close();
				return true;
			}
		}
		/* Handling Exception */
		catch(Exception e)
		{
			System.out.println("Error"+e);
			return false;
		}
	}
}        