<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="service.ManagerService" %>
<%@ page import= "domain.Course" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8");
response.setCharacterEncoding("utf-8"); %>
<%
ManagerService mgService=new ManagerService();
Course editCourse=new Course();
editCourse.set_Course_Ch_Name(request.getParameter("course_ch_name"));
editCourse.set_Course_time(request.getParameter("course_total_time"), request.getParameter("course_teach_time"), request.getParameter("course_exp_time"), request.getParameter("course_prac_time"), request.getParameter("course_comp_time"));
%>
<% 
if(mgService.EditCourse(editCourse)==true)
	{
		System.out.print("修改成功");
		request.getRequestDispatcher("InsertSuccess.jsp").forward(request, response);
	}

else
	{
		System.out.print("修改失败");
		request.getRequestDispatcher("InsertFail.jsp").forward(request, response);
	}
%>
	
</body>
</html>