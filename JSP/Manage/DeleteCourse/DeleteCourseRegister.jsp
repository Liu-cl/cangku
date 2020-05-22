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
Course deleteCourse=new Course();
deleteCourse.set_Course_Id(request.getParameter("course_id"));
deleteCourse.set_Course_Ch_Name(request.getParameter("course_ch_name"));
deleteCourse.set_Course_En_Name(request.getParameter("course_en_name"));
%>
<% 
if(mgService.DeleteCourse(deleteCourse)==true)
	{
		System.out.print("删除成功");
		request.getRequestDispatcher("DeleteSuccess.jsp").forward(request, response);
	}
else
	
	{
		System.out.print("删除失败");
		request.getRequestDispatcher("DeleteFail.jsp").forward(request, response);
	}
%>

</body>
</html>
