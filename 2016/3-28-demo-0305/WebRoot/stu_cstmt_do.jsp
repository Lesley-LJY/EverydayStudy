<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%

	request.setCharacterEncoding("UTF-8");
	String sno = request.getParameter("sno");
    
    
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
String sql = "{call GetStuNameByID (?, ?)}";
CallableStatement cstmt = conn.prepareCall(sql);
cstmt.setString(1, sno);
cstmt.registerOutParameter(2, java.sql.Types.VARCHAR);
cstmt.executeUpdate();
String sname = cstmt.getString(2);
cstmt.close();
conn.close();
out.print(sname);

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
