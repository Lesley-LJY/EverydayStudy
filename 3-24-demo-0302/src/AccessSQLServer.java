//STEP 1. Import required packages
import java.sql.*;
public class AccessSQLServer {
	
	// JDBC驱动程序名和数据库连接字符串
	   static final String JDBC_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";  
	   static final String DB_CONNSTR = "jdbc:sqlserver://localhost:1433;DatabaseName=Temp";
	   
	//  用户名和密码
	   static final String USER = "sa";
	   static final String PASS = "622320";
	   
	   public static void main(String[] args) {
		   Connection conn = null;
		   Statement stmt = null;
		   try{
		      //STEP 2: Register JDBC driver
		      Class.forName(JDBC_DRIVER);

		      //STEP 3: Open a connection
		      System.out.println("Connecting to database...");
		      conn = DriverManager.getConnection(DB_CONNSTR,USER,PASS);

		      //STEP 4: Execute a query
		      System.out.println("Creating statement...");
		      stmt = conn.createStatement();
		      String sql;
		      sql = "SELECT * FROM SC";
		      ResultSet rs = stmt.executeQuery(sql);

		      //STEP 5: Extract data from result set
		      while(rs.next()){
		         //Retrieve by column name
		         String Sno  = rs.getString("Sno");
		         String Cno = rs.getString("Cno");
		         String Grade = rs.getString("Grade");

		         //Display values
		         System.out.print("\nSno: " + Sno);
		         System.out.print(", Cno: " + Cno);
		         System.out.println(", Grade: " + Grade);
		      }
		      //STEP 6: Clean-up environment
		      rs.close();
		      stmt.close();
		      conn.close();
		   }catch(SQLException se){
		      //Handle errors for JDBC
		      se.printStackTrace();
		   }catch(Exception e){
		      //Handle errors for Class.forName
		      e.printStackTrace();
		   }finally{
		      //finally block used to close resources
		      try{
		         if(stmt!=null)
		            stmt.close();
		      }catch(SQLException se2){
		      }// nothing we can do
		      try{
		         if(conn!=null)
		            conn.close();
		      }catch(SQLException se){
		         se.printStackTrace();
		      }//end finally try
		   }//end try
		   System.out.println("Goodbye!");
		}//end main

}

