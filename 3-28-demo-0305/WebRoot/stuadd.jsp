<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'stuadd.jsp' starting page</title>
    
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

	<form name="form1" id="form1" action="stuadd_do.jsp" method="post">
	
		<input type="text" name="sno" id="sno">	
		<input type="text" name="sname" id="sname">		
		<input type="radio" name="ssex" id="ssex1" value="男">男
		<input type="radio" name="ssex" id="ssex2" value="女">女
		<input type="submit" name="submit" value="确认">
		<input type="reset" name="reset" value="重置">
		
	</form>

  </body>
  
</html>




