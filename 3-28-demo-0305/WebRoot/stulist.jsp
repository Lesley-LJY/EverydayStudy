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
  
  
    
<%

String sDBDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
String sConnStr = "jdbc:sqlserver://localhost:1433;DatabaseName=DB_Course";

String userName = "sa";   

String userPwd = "m112233";   

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


String sql = "select * from student";
rs = stmt.executeQuery(sql);
ResultSetMetaData rmd = rs.getMetaData();
%>
<table border="1">
  <tr>
     <td> <%=rmd.getColumnName(1) %> </td>
     <td> <%=rmd.getColumnName(2) %> </td>
     <td> <%=rmd.getColumnName(3) %> </td>
     <td> <%=rmd.getColumnName(4) %> </td>
     <td> <%=rmd.getColumnName(5) %> </td>
  
  </tr>

<%

while(rs.next())
	{
		String sno = rs.getString("sno");
		String sname = rs.getString("sname");
		String ssex = rs.getString("ssex");
		String sage = rs.getString("sage");
		String sdept = rs.getString("sdept");
	%>
	<tr>
     <td> <%=sno %> </td>
     <td> <%=sname %> </td>
     <td> <%=ssex %> </td>
     <td> <%=sage %> </td>
     <td> <%=sdept %> </td>
  
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
