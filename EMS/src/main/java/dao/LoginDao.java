package dao;
import bean.*;
import util.*;
import java.sql.*;
public class LoginDao
{
 public String AuthenticateUser(LoginBean lbobj) throws SQLException
 {
   Connection con=DBConnection.getConnection();	 
   String uname=lbobj.getUname();
   String upwd=lbobj.getUpwd();
   PreparedStatement ps=con.prepareStatement("select uname,upwd from logintb where uname=? and upwd=?");
   ps.setString(1,uname);
   ps.setString(2,upwd);
   ResultSet rs=ps.executeQuery();
   if(rs.next())
   {
	   return "success";
   }
   return "Invalid username or password";
 }//end method
}//end class
