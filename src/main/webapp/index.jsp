<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>$Title$</title>
</head>


<body>
<form action="${pageContext.request.contextPath}/delete2.do">
	<table align="center" border="1">
		<tr>
			<td><input type="submit" value="删除勾选" /></td>
			<td>id</td>
			<td>用户名</td>
			<td>密码</td>
			<td><a href="${pageContext.request.contextPath}/add.jsp">添加</a></td>
			<td>修改</td>
			<td>删除</td>
		</tr>
		<c:forEach items="${requestScope.user}" var="user">
			<tr>
			<tr>
				<td><input type="checkbox" name="id" value="${user.id}" /></td>
				<td>${user.id}</td>
				<td>${user.username}</td>
				<td>${user.password}</td>
				<td><a href="${pageContext.request.contextPath}/add.jsp">添加</a></td>
				<td><a href="${pageContext.request.contextPath}/selectOne.do?id=${user.id}">修改</a></td>
				<td><a href="${pageContext.request.contextPath}/delete.do?id=${user.id}">删除</a></td>
			<tr>
			</tr>
		</c:forEach>
	</table>
	</form>
 </body>
 </html>
