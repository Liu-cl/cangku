<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
<link href="../css/login1.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="login_box">
      <div class="login">
     	  	<a id="dl" href="login.jsp">学生登录</a>
          <div class="login_name">
               <button>职工</button>
          </div>
          <form action="loginValidat1.jsp" method="post">
		ID：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="id"/><br>
		密码：&nbsp;<input type="password" name="password"/><br><br>
		<input type="submit" value="登录"/>&nbsp;&nbsp;&nbsp;&nbsp;
	</form>	
      </div>
</div>
</body>
</html>

