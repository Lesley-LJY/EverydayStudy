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
    
    String sno2 = request.getParameter("sno2");
    String sname2 = request.getParameter("sname2");
    String ssex2 = request.getParameter("ssex2");
    
    String sDBDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	String sConnStr = "jdbc:sqlserver://localhost:1433;DatabaseName=Temp";

String userName = "sa";   

String userPwd = "622320";   

Connection conn = null;
ResultSet rs = null;



try {
         
		Class.forName(sDBDriver);

		conn = DriverManager.getConnection(sConnStr, userName, userPwd);
		conn.setAutoCommit(false);
		Statement stmt = conn.createStatement();
		String sql = "insert into student (sno,sname,ssex) values('" + sno + "','" + sname + "','" + ssex + "')";
		stmt.addBatch(sql);
		String sql2 = "insert into student (sno,sname,ssex) values('" + sno2 + "','" + sname2 + "','" + ssex2 + "')";
		stmt.addBatch(sql2);
		int[] count = stmt.executeBatch();
		conn.commit();
		stmt.close();
		conn.close();
		out.print("成功！");
	} catch (Exception e) {
		conn.rollback();
		System.err.println("faq(): " + e.getMessage());
		out.print(e.getMessage());
	}
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
