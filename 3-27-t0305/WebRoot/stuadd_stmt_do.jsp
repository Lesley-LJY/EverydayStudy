<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%

	request.setCharacterEncoding("UTF-8");
	String sno = request.getParameter("sno");
    String sname = request.getParameter("sname");
    String ssex = request.getParameter("ssex");
    
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

String sql = "insert into student (sno,sname,ssex) values('"+sno+"','"+sname+"','"+ssex+"')";


stmt.executeUpdate(sql);
stmt.close();
conn.close();
out.print("成功！");

 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'stuadd_stmt_do.jsp' starting page</title>
    
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
    
    
    
  </body>
</html>
