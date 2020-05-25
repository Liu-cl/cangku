<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>功能页面</title>
<style>
	body{
		/* background: url(../../image/1.jpg)no-repeat center 0px;
		height:100%;
		width:100%;
		background-size:100%；
		z-index:100; */
		font-family: 'Open Sans', sans-serif;
	    background: url(../../image/1.jpg)no-repeat center 0px;
		-webkit-background-size:cover;
		-moz-background-size:cover; 
		background-size:cover;
	    background-attachment: fixed;
	}
	
	#select form{
		padding-left:5px;
	}
	#image{
		border-radius:3px;
		position:absolute;
		display:block;
		border:0px solid grey;
		width:400px;
		height:200px;
		top:20%;
		left:40%;
		background-color:rgba(255,250,240,0.7);
	}
	p{
		margin-left:150px;
		font-size:20px;	
	}
	h3{
		margin-left:2px;
	}
	#diva{
		display:inline-block;
		border:1px solid grey;
		width:120px;
		height:23px;
		margin-top:10px;
		margin-left:5px;
		background-color:white
	}
	a{
		text-align:center;
		text-decoration:none;
		font-weight:40;
	}
	a:hover{
		text-decoration:underline;
	}
	.list a{
		color:white;
	}
	.list ul li a:hover{
		text-decoration:underline;
	}

	.list a{
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
</style>
</head>
<body>
	<div class="list">
    	<ul>
        	<li><a href="ManageFunction.jsp" class="active">主页</a></li>
       		<li><a href="InsertCourse/InsertCourse.jsp">增加课程</a></li>
        	<li><a href="DeleteCourse/DeleteCourse.jsp">删除课程</a></li>
       		 <li><a href="EditCourse/edit.jsp">修改课程</a></li>
    	</ul>
	</div>
	<div id="back">
		<div id="image">
			<p><%out.print(session.getAttribute("name")+",欢迎。"); %></p>
			<div id="select">
				<h3>课程查询</h3>
				<form  action="select.jsp" method="post">
					课程名称：<input type="text" name="name">&nbsp;&nbsp;
					<input type="submit" value="查询">
				</form>
			</div>
			<div id="diva">
				<a href="InsertCourse/InsertCourse.jsp">增加课程 ></a>
			</div>
			<div id="diva">
				<a href="DeleteCourse/DeleteCourse.jsp">删除课程 ></a>
			</div>
			<div id="diva">
				<a href="EditCourse/edit.jsp">修改课程 ></a>
			</div>
			
					
				
		</div>
	</div>
</body>
</html>
