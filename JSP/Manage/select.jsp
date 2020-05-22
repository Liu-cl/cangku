<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*" import="util.JDBCUtils" import="service.StudentService"
    import="domain.Course"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="../../css/style.css" rel="stylesheet" type="text/css" media="all" />
	<style>
	 table{
		border-spacing: 0;
		border:none;
		background-color: rgba(255,255,255,0.4);
	} 
	table td{
		border: 1px solid #999;
	}
	tr{
		height:40px;
		background-color: rgba(255,255,255,0.4);
	}
	td{
		height:40px;
	}
	body {
	    font-family: 'Open Sans', sans-serif;
	     background: url("../../image/1.jpg");
		-webkit-background-size:cover;
		-moz-background-size:cover; 
		background-size:cover;
	    background-attachment: fixed;
	} 
	a{
		color:white;
	}
	ul li a:hover{
		text-decoration:underline;
	}
	.h2{
		top:-20px;
		position:absolute;
		left:600px;
	}
	h1{
		font-size:30px;
	}
	a{
		 text-decoration:none;
	}
	.list ul li{
		 list-style: none;
		 display:inline;
		 margin-left:15px;
	}
	.list{
		position:absolute;
		left:1300px;
	}
	.head{
		position:relative;
		margin-bottom:50px;
	}
	</style>
<title>查询结果</title>
</head>
<jsp:useBean id="user" class="domain.Course"/>


<body>

		<div class="head">	
			<div class="h2">	
				<h1><a href="#">Select Result</a></h1>
			</div>	
			<div class="list">	
				<ul>
					<li><a href="ManageFunction.jsp" class="active">主页</a></li>
					<li><a href="InsertCourse/InsertCourse.jsp">增加课程</a></li>  
					<li><a href="DeleteCourse/DeleteCourse.jsp">删除课程</a></li> 
					<li><a href="#">修改课程</a></li>
				</ul> 
			</div>	
			<div class="clear"></div>
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
			request.setCharacterEncoding("utf-8");
			Course cur[] = null;
			String key = request.getParameter("name");
			StudentService studentservice = new StudentService();
			cur = studentservice.selectCourse(key);
		
			for(int i = 0; cur[i] != null; i++)
			{
				out.println("<tr><td>"+cur[i].get_Course_Id()+"</td>");
				out.println("<td>"+cur[i].get_Course_Ch_Name()+"</td>");
				out.println("<td>"+cur[i].get_Course_En_Name()+"</td>");
				out.println("<td>"+cur[i].get_Course_Assessment()+"</td>");
				out.println("<td>"+cur[i].get_Course_Total_Time()+"</td>");
				out.println("<td>"+cur[i].get_Course_Teach_Time()+"</td>");
				out.println("<td>"+cur[i].get_Course_Exp_Time()+"</td>");
				out.println("<td>"+cur[i].get_Course_Prac_Time()+"</td>");
				out.println("<td>"+cur[i].get_Course_comp_time()+"</td>");
				out.println("<td>"+cur[i].get_Course_Credit()+"</td>");
				out.println("<td>"+cur[i].get_Course_Semester()+"</td></tr>");
			}
		%>		
	
			</table>
	
		</div>	
	<br><br>	
</body>
</html>
