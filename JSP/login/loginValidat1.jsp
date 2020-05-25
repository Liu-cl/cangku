<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="service.ManagerService"
		import="util.JDBCUtils"
		import="domain.Manager"
		import="java.sql.*"
%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>DAO模式测试</title></head>
<body>
<!----- 1.首先创建Person的对象  ------>
<jsp:useBean id="user" class="domain.Manager"></jsp:useBean>

<!-----1.为user对象设置值 ------>
<jsp:setProperty property="*" name="user"/>
<%
	Connection con=JDBCUtils.getConnection();
	ManagerService ms=new ManagerService();
	Manager existUser=ms.login1(user);
	if(existUser!=null){
		session.setAttribute("id", user.getId());
		session.setAttribute("name",existUser.getName());
		out.println(existUser.getName()+"，欢迎<br>");
		out.println("3秒后转跳至功能页面");
		response.setHeader("refresh", "3;url=../Manage/ManageFunction.jsp"); 
%>
	<%-- <h3>登录用户信息</h3>
	  ID:<%=existUser.getId() %><br>
	名字：<%=existUser.getName() %><br>
	密码：<%=existUser.getPassword() %><br> --%>
<%	
	} else{
	out.println("用户名或密码错误，请重新输入！");		
	response.setHeader("refresh", "5;url=login1.jsp");	//重定向回登录页面	
%>
	<h3>如果系统没有自动跳转，请点击<a href="login1.jsp">此链接</a>！</h3>
<%	
}
%>
</body>
</html>
