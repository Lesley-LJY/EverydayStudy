<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'stuadd_stmt.jsp' starting page</title>
    
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


<form action="stu_cstmt_do.jsp" name="form1" method="post" >
      <table>
          <tr>
             <td>学号</td>
             <td><input type="text" name="sno" id="sno" value="" size="10" >  </td>
       
          </tr>
         
           <tr>
             <td></td>
             <td> 
            <input type="submit" value="确定" name="submit" id="submit">
            <input type="reset" value="取消">
             
              </td>
       
          </tr>
      
      </table>
        
   
    </form>



  </body>
</html>
