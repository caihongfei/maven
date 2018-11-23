<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add.jsp' starting page</title>
    
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
    <h1 align="center">添加</h1>
		<hr />
	   
		<form action="${pageContext.request.contextPath}/add.do" method="post">
			<table align="center" border="0" cellspacing="10" >
				<tr><td>账号</td><td><input type="text" name="username"/></td></tr>
				<tr><td>密码</td><td><input type="text" name="password"/></td></tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="添加"/>
					</td>
				</tr>
			</table>
		</form>	
  </body>
</html>
