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
Course insertCourse=new Course();
insertCourse.set_Course_Id(request.getParameter("course_id"));
insertCourse.set_Course_Ch_Name(request.getParameter("course_ch_name"));
insertCourse.set_Course_En_Name(request.getParameter("course_en_name"));
insertCourse.set_Course_Credit(request.getParameter("course_credit"));
insertCourse.set_Course_Assessment(request.getParameter("course_assessment"));
insertCourse.set_Course_time(request.getParameter("course_total_time"), request.getParameter("course_teach_time"), request.getParameter("course_exp_time"), request.getParameter("course_prac_time"), request.getParameter("course_comp_time"));
insertCourse.set_Course_Semester(request.getParameter("course_semester"));
%>
<% 
if(mgService.InsertCourse(insertCourse)==true)
	System.out.print("插入成功");
else
	System.out.print("插入失败");
%>
	
</body>
</html>
