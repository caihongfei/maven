<%@ page pageEncoding="UTF-8" contentType="text/html;charset=utf-8" %>
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

  </head>
  
  <body>
    <h1 align="center">修改</h1>
		<hr />
	   
		<form action="${pageContext.request.contextPath}/update.do" method="post">
			<table align="center" border="0" cellspacing="10" >
			    <input type="hidden" name="id" value="${requestScope.user.id}"/>
				<tr><td>账号</td><td><input type="text" name="username" value="${requestScope.user.username}"/></td></tr>
				<tr><td>密码</td><td><input type="text" name="password" value="${requestScope.user.password}"/></td></tr>
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="修改"/>
					</td>
				</tr>
			</table>
		</form>	
  </body>
</html>
