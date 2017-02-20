<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'databaseTest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  <table border="1">
  <tr>
     <td> 学号 </td>
     <td> 课程号 </td>    
     <td> 成绩 </td> 
  </tr>
    
<%

String sDBDriver = "com.mysql.jdbc.Driver";
String sConnStr = "jdbc:mysql://localhost/fazheng";

String userName = "root";   

String userPwd = "";   

Connection conn = null;
ResultSet rs = null;

try {
         Class.forName(sDBDriver);
     }catch(java.lang.ClassNotFoundException e) 
    {
       System.err.println("faq(): " + e.getMessage());
    }


conn = DriverManager.getConnection(sConnStr,userName,userPwd);
Statement stmt = conn.createStatement();


String sql = "select * from ibook";
rs = stmt.executeQuery(sql);

while(rs.next())
	{
		String sno = rs.getString("id");
		String sname = rs.getString("name");
		
		String sage = rs.getString("price");
		
	%>
	<tr>
     <td> <%=sno %> </td>
     <td> <%=sname %> </td>
    
     <td> <%=sage %> </td>
     
  
  </tr>
	
	<%	
		
    }
    
    rs.close();
stmt.close();
conn.close();

%>
</table>

  </body>
</html>
