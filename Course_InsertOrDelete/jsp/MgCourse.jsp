<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        .manageCourse .insertCourse,.manageCourse .deleteCourse{
            display: inline-block;
            width: 600px;
            vertical-align: top;
        }
    </style>
</head>
<body>
<div class="manageCourse">
    <div class="insertCourse">
        <button>插入课程</button>
        <form action="InsertCourseRegister.jsp">
            <p>课程代码：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_id" required="required"></p>

            <p>课程中文名：<input type="text" name="course_ch_name"></p>
            <p>课程英文名：<input type="text" name="course_en_name"></p>
            <p>学分：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_credit"></p>
            <p>考核方式：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_assessment"></p>
            <p>总学时：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_total_time"></p>
            <p>教授学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_teach_time"></p>
            <p>实验学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_exp_time"></p>
            <p>实习学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_prac_time"></p>
            <p>上机学时：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_comp_time"></p>
            <p>执行学期：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_semester"></p>
            <p><input type="submit" value="插入课程"></p>
        </form>
    </div>
    <div class="deleteCourse">
        <button>删除课程</button>
        <form action="DeleteCourseRegister.jsp">
            <p>课程代码：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_id"></p>
            <p>课程中文名：<input type="text" name="course_ch_name"></p>
            <p>课程英文名：<input type="text" name="course_en_name"></p>
               <p><input type="submit" value="删除课程"></p>
        </form>
    </div>
</div>

</body>
</html>
