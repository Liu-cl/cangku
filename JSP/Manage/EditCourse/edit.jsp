<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>编辑功能</title>
    <style>
    	body{
    	font-family: 'Open Sans', sans-serif;
	    background: url(../../../image/1.jpg)no-repeat center 0px;
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
<div class="manageCourse">
    <div class="insertCourse">
    <button class="formButton">编辑课程</button>
    <form action="editregister.jsp" method = "post" id="insertForm">
    <p>课程中文名：&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="course_ch_name"><p/>
    <p>总学时：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_total_time"></p>
    <p>教授学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_teach_time"></p>
    <p>实验学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_exp_time"></p>
    <p>实习学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_prac_time"></p>
    <p>上机学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_comp_time"></p>
    <p><input type="submit" value="修改" class="formButton"></p>
    </div>
    </form>
</div>
</body>
</html>
