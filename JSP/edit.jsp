<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>编辑功能</title>
    <style>
    </style>
</head>
<body>
<div>
    <div >  /*编辑功能主界面*/
    <form action="editregister.jsp" method="post">
    <p> 请输入要编辑的课程的中文名称：&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="course_ch_name"><p/>
    <p>总学时：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_total_time"></p>
    <p>教授学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_teach_time"></p>
    <p>实验学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_exp_time"></p>
    <p>实习学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_prac_time"></p>
    <p>上机学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_comp_time"></p>
    <p><input type="submit" value="修改"></p>
    </form>
    </div>
</div>
</body>
</html>
