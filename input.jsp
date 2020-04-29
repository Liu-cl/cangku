<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
</head>
<body>
	<h2>账号注册</h2>
	<form action="register.jsp" method="post">
		账号：<input type="text" name="name"><br/>
		密码：<input type="password" name="password"><br/>
		<input type="submit" value="提交">&nbsp;&nbsp;
		<input type="reset" value="重置">
	</form>
</body>
</html>