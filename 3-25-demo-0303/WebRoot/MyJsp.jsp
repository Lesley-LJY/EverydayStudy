<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
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
     <td>学号</td>
     <td>课程号</td>
     <td>成绩</td>
  
  </tr>
    
<%

String sDBDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
String sConnStr = "jdbc:sqlserver://localhost:1433;DatabaseName=Temp";

String userName = "sa";   

String userPwd = "622320";   

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


String sql = "select * from SC";
rs = stmt.executeQuery(sql);

while(rs.next())
	{
		String Sno = rs.getString("Sno");
		String Cno = rs.getString("Cno");
		String Grade = rs.getString("Grade");
	%>
	<tr>
     <td> <%=Sno %> </td>
     <td> <%=Cno %> </td>
     <td> <%=Grade %> </td>
  
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
