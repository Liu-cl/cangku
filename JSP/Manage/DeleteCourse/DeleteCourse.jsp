<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
    	body{
    	font-family: 'Open Sans', sans-serif;
	    background: url(/课程管理系统/image/1.jpg)no-repeat center 0px;
		-webkit-background-size:cover;
		-moz-background-size:cover; 
		background-size:cover;
	    background-attachment: fixed;
	    }
    	.manageCourse{
    		margin-top: 100px;
    		position:absolute;
    		left:40%;
    	}
        .manageCourse .insertCourse,.manageCourse .deleteCourse{
            display: inline-block;
            width: auto;
            vertical-align: top;
        }
        .manageCourse button{
            border:none;
            font-size:20px;
            font-weight: 500;
        }
        .manageCourse .formButton{
            width: 300px;
            height: 2em;
        }
        #insertForm ,#deleteForm{

            background-color: #e3e4e2;
            width: auto;
            margin-top: -15px;
            padding-top: 5px;
        }
        	.list ul li a:hover{
		text-decoration:underline;
	}
	.list a{
		color:white;
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
        	<li><a href="../ManageFunction.jsp" class="active">主页</a></li>
       		<li><a href="../InsertCourse/InsertCourse.jsp">增加课程</a></li>
        	<li><a href="../DeleteCourse/DeleteCourse.jsp">删除课程</a></li>
       		 <li><a href="#">修改课程</a></li>
    	</ul>
	</div>
<div class="manageCourse">
    <div class="deleteCourse">
        <button class="formButton">删除课程</button>
        <form action="DeleteCourseRegister.jsp" id="deleteForm">
            <p>课程代码：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_id"></p>
            <p>课程中文名：<input type="text" name="course_ch_name"></p>
            <p>课程英文名：<input type="text" name="course_en_name"></p>
            <p><input type="submit" value="删除课程" class="formButton"></p>
        </form>
    </div>
</div>
</body>
</html>
