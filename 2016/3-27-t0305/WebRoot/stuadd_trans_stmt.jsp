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


<form action="stuadd_trans_stmt_do.jsp" name="form1" method="post" >
      <table>
          <tr>
             <td>学号</td>
             <td><input type="text" name="sno" id="sno" value="" size="10" >  </td>
       
          </tr>
          
          <tr>
             <td>姓名</td>
             <td> <input type="text" name="sname" id="sname" value="" size="10">  </td>
       
          </tr>
          
          
		   <tr>
             <td>性别</td>
             <td> 
                 <input type="radio" value="男" name="ssex" id="ssex1">男 <input type="radio" value="女" name="ssex" id="ssex2">女 
             </td>
           </tr>
           
           
           <tr>
             <td>&nbsp;</td>
             <td> 
                <hr>
             </td>
           </tr>
           
           
           <tr>
             <td>学号</td>
             <td><input type="text" name="sno2" id="sno2" value="" size="10" >  </td>
       
          </tr>
          
          <tr>
             <td>姓名</td>
             <td> <input type="text" name="sname2" id="sname2" value="" size="10">  </td>
       
          </tr>
          
          
		   <tr>
             <td>性别</td>
             <td> 
                 <input type="radio" value="男" name="ssex2" id="ssex21">男 <input type="radio" value="女" name="ssex2" id="ssex22">女 
             </td>
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
