/* Import the packages */
package bean;
import java.io.Serializable;
import java.util.*;
import java.sql.*;
import java.io.*;
/* Creating an class LoginBean and implement the Serializable interface */
public class LoginBean implements Serializable {
    private String uname, pass;
    private String role;
    public void setUname(String uname) {
        this.uname= uname;
    }
    public void setPass(String pass) {
        this.pass= pass;
    }
    public String getUname() {
        return uname;
    }
    public String getPass() {
        return pass;
    }
    
    public boolean getResult() {
        boolean loginResult=false;
        try {
            
            /* Loading the driver */
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            /* Creating a connection */
            Connection con = DriverManager.getConnection("jdbc:odbc:supermart","sa","sa");
            /* Creating a prepared statment */
            PreparedStatement stat = con.prepareStatement( "SELECT * FROM User_Profile WHERE username = ? and password = ? ");
            /* Set the user name in the query */
            stat.setString(1,uname);
            stat.setString(2,pass);
            /* Get the result set from the author table */
            ResultSet rs = stat.executeQuery();
            if(rs.next()) {
                con.close();
                getResult1();
                return true;
            } else {
                con.close();
                return false;
            }
            
        }
        /* Handling the exception */
        catch(Exception ex) {
            //ex.printStackTrace();
            System.out.println("Error" + ex);
            return false;
        }
        /* Returning the vector */
        
    }// End getResult()
    
    
    public void setRole(String role) {
        this.role = role;
    }
    public String getRole() {
        return role;
    }
    public boolean getResult1() {
        
        boolean loginResult=false;
        
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            /* Creating a connection */
            Connection con1 = DriverManager.getConnection("jdbc:odbc:supermart","sa","sa");
            PreparedStatement stat1;
            stat1 = con1.prepareStatement("SELECT Wrole FROM User_Profile WHERE username =? and Wrole=?");
            stat1.setString(1,uname);
            stat1.setString(2,"Admin");
//            System.out.println("username for reteiever is \t" + uname);
            ResultSet rs1=stat1.executeQuery();
            while(rs1.next())
			{
                                role=rs1.getString(1);
				rs1.close();
				stat1.close();
				con1.close();
				return false;
			}
                        
            con1.close();
            return true;
        } catch(Exception ee) {
            System.out.println("Error retrieving account" + ee);
            return false;
        }
        
    }
}/* End user a */