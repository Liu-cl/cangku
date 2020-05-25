<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="service.StudentService"
		import="util.JDBCUtils"
		import="domain.Student"
		import="java.sql.*"
%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>DAO模式测试</title>
<style>
	.00{
		display:none;
	}
</style>
</head>
<body>
<!----- 1.首先创建Person的对象  ------>
<jsp:useBean id="user" class="domain.Student"></jsp:useBean>

<!-----1.为user对象设置值 ------>
<jsp:setProperty property="*" name="user"/>
<%
	/*Connection con=JDBCUtils.getConnection();*/
	StudentService ps=new StudentService();
	Student existUser=ps.login(user);
	if(existUser!=null){
		session.setAttribute("id", user.getId());
		session.setAttribute("name",existUser.getName());
		out.println(existUser.getName()+"，欢迎<br>");
		out.println("3秒后转跳至功能页面");
		response.setHeader("refresh", "3;url=../Student/StudentFunction.jsp"); 
		/* request.getRequestDispatcher("StudentFunction.jsp").forward(request, response); */
%>
	<%-- <h3>登录用户信息</h3>
	ID:<%=existUser.getId() %><br>
	名字：<%=existUser.getName() %><br>
	密码：<%=existUser.getPassword() %><br>
	<form action="select.jsp" method="post">
		课程名称：<input type="text" name="name"><br/>
		<input type="submit" value="提交">&nbsp;&nbsp;
		<input type="reset" value="重置">
	</form> --%>
	
<%	
	} else{
	out.println("用户名或密码错误，请重新输入！");		
	response.setHeader("refresh", "5;url=login.jsp");	//重定向回登录页面	
%>
	<h3>如果系统没有自动跳转，请点击<a href="login.jsp">此链接</a>！</h3>
<%	
}
%>
</body>
</html>
