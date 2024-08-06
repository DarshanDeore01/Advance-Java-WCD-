package util;
import java.sql.*;
public class DBConnection 
{
 static Connection con=null;
  public static Connection getConnection()
  {
   try  
   {  
    Class.forName("oracle.jdbc.driver.OracleDriver");  
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","darshan","darshan123");
   }
   catch (Exception e) 
   {
	e.printStackTrace();
   }
   return con;	
  }//end method
}//end class