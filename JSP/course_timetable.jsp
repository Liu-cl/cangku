<%@page import="domain.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="service.StudentService"
		import="util.JDBCUtils"
		import="domain.Student"
		import="java.sql.*"
%>
<!DOCTYPE html>
<html>
<head>
<title>课程表</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
	<style>
	tr{
		height:40px;
		border: 1px solid black;
		background-color: rgba(255,255,255,0.8);
	}
	td{
	height:40px;
		border: 1px solid black;
	}
	body {
    font-family: 'Open Sans', sans-serif;
    background: url(../image/1.jpg)no-repeat center 0px;
	-webkit-background-size:cover;
	-moz-background-size:cover; 
	background-size:cover;
    background-attachment: fixed;
} 
	</style>
</head>


<body>
	
	<jsp:useBean id="student" class="domain.Student" scope="application"></jsp:useBean>	
	<jsp:setProperty property="id" name="student" />
	
	
	
	<div class="agileits-main"> 
		<div class="agileinfo-row">
			<div class="w3top-nav">	
				<div class="w3top-nav-left">	
					<h1><a href="course_timetable.jsp">My Couse Table</a></h1>
				</div>	
				<div class="w3top-nav-right">	
					<ul>
						<li><a href="StudentFunction.jsp" class="active">主页</a></li>
						<li><a href="#">功能1</a></li>  
						<li><a href="#">功能2</a></li> 
						<li><a href="#">功能3</a></li>
					</ul> 
				</div>	
				<div class="clear"></div>
			</div>	
		</div>		
			
		<div style=" margin-left:5%;width:90%; margin-right: 5%; text-align: center; height:600px; position: relative; top:100px;">
	
			<table border="1" style="width:100%; " >
				<tr>
					<td>课程代码</td>
					<td>课程中文名称</td>
					<td>课程英文名称</td>
					<td>考核方式</td>
					<td>总学时</td>
					<td>讲授学时</td>
					<td>实验学时</td>
					<td>实习学时</td>
					<td>上机学时</td>
					<td>学分</td>
					<td>执行学期</td>
				</tr>
	
		<%
		
		StudentService st=new StudentService();
		student.setId((String)session.getAttribute("id"));
		Course tab[] = new Course[40];
		tab = st.courseTable(student);
	
	
		for(int i = 0; i < 9; i++)
		{
			out.println("<tr><td>"+tab[i].get_Course_Id()+"</td>");
			out.println("<td>"+tab[i].get_Course_Ch_Name()+"</td>");
			out.println("<td>"+tab[i].get_Course_En_Name()+"</td>");
			out.println("<td>"+tab[i].get_Course_Assessment()+"</td>");
			out.println("<td>"+tab[i].get_Course_Total_Time()+"</td>");
			out.println("<td>"+tab[i].get_Course_Teach_Time()+"</td>");
			out.println("<td>"+tab[i].get_Course_Exp_Time()+"</td>");
			out.println("<td>"+tab[i].get_Course_Prac_Time()+"</td>");
			out.println("<td>"+tab[i].get_Course_comp_time()+"</td>");
			out.println("<td>"+tab[i].get_Course_Credit()+"</td>");
			out.println("<td>"+tab[i].get_Course_Semester()+"</td></tr>");
		}
		%>		
	
			</table>
	
		</div>	
		
	</div>	
	
</body>
</html>