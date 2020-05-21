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
            width: auto;
            vertical-align: top;
        }
        .manageCourse button{
            width: 300px;
            height: 2em;
        }
        #insertForm ,#deleteForm{

            background-color: #e3e4e2;
            width: auto;
            margin-top: -15px;
        }
    </style>
</head>
<body>

<div class="manageCourse">
    <div class="insertCourse">
        <button class="formButton">插入课程</button>
        <form action="InsertCourseRegister.jsp" id="insertForm">
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
        <button class="formButton">删除课程</button>
        <form action="DeleteCourseRegister.jsp" id="deleteForm">
            <p>课程代码：&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="course_id"></p>
            <p>课程中文名：<input type="text" name="course_ch_name"></p>
            <p>课程英文名：<input type="text" name="course_en_name"></p>
            <p><input type="submit" value="删除课程"></p>
        </form>
    </div>
</div>
<script>
    var flag=0;
    var flag1=0;
    var flag2=0;
    var insertForm = document.getElementById("insertForm");
    var deleteForm = document.getElementById("deleteForm");
    var formButton=document.getElementsByClassName("formButton");
    insertForm.style.display="none";
    deleteForm.style.display="none";
    formButton[0].onclick=function(){
        if(flag1==1&&flag2==0)
        {
            insertForm.style.display="none";
            deleteForm.style.display="none";
            flag1=0;
            flag=0;
        }
        else
        if(flag1==0&&flag2==1)
        {
            insertForm.style.display="block";
            deleteForm.style.display="none";
            flag1=1;
            flag2=0;
            flag=1;
        }
        else
        if(flag1==0&&flag2==0)
        {
            insertForm.style.display="block";
            deleteForm.style.display="none";
            flag1=1;
            flag=1;
        }
    }
    formButton[1].onclick=function(){

        if(flag1==0&&flag2==1)
        {
            insertForm.style.display="none";
            deleteForm.style.display="none";
            flag2=0;
            flag=0;
        }
        else
        if(flag1==1&&flag2==0)
        {
            insertForm.style.display="none";
            deleteForm.style.display="block";
            flag1=0;
            flag2=1;
            flag=1;
        }
        else
        if(flag1==0&&flag2==0)
        {
            insertForm.style.display="none";
            deleteForm.style.display="block";
            flag2=1;
            flag=1;
        }
    }

</script>
</body>
</html>
