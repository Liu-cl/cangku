<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
alert("删除课程成功");
</script>
<%
request.getRequestDispatcher("DeleteCourse.jsp").include(request, response);
response.setHeader("refresh", "0.1;url=../ManageFunction.jsp"); 
%>
</body>
</html>
