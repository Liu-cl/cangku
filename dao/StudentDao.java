package dao;

import domain.Course;

import domain.Student;
import java.sql.*;
import util.JDBCUtils;
public class StudentDao {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet re = null;
	
	// 获取课程表部分
	public Course[] table(Student stu) {
		Course mycou[] = new Course[40];
		int i = 0;
		int ct = 0;
		for( i = 0; i < 40; i++) {
            mycou[i] = new Course();
        }
        try {
            conn = JDBCUtils.getConnection();  
            String sql = "select * from 选课表 left join 课程 on 选课表.课程代码 = 课程.课程代码 where 学号=?;"; 
            stmt = conn.prepareStatement(sql);
                      
            stmt.setString(1, stu.getId());	
            re = stmt.executeQuery();			
                     
            while (re.next()){
            	mycou[ct].set_Course_Id(re.getString("课程代码"));
                mycou[ct].set_Course_Ch_Name(re.getString("课程中文名称"));
                mycou[ct].set_Course_En_Name(re.getString("课程英文名称"));
                mycou[ct].set_Course_Assessment(re.getString("考核方式"));
                mycou[ct].set_Course_time(re.getString("总学时"),re.getString("讲授学时") , re.getString("实验学时"), re.getString("实习学时"), re.getString("上机学时"));
                mycou[ct].set_Course_Credit(re.getString("学分"));
                mycou[ct++].set_Course_Semester(re.getString("执行学期"));
            }
            for( i = 0; i < ct; i++) {
                System.out.print(mycou[i].get_Course_Ch_Name()+"  ");
                System.out.println(mycou[i].get_Course_Credit());
            }           
        } catch (Exception e) {
            e.printStackTrace();
        }
        return mycou;
    }

	
	public Course[] selectCourse(String key) {
		Course[] cur = new Course[50];
		int i = 0;
		String keyword = "%"+key+"%";	
		try {
			conn = JDBCUtils.getConnection();
			String sql = "select * from javatest.课程 where  课程英文名称 like ? or 课程代码 like ? or 课程中文名称 like ?;";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, keyword);
			stmt.setString(2, keyword);
			stmt.setString(3, keyword);
			re = stmt.executeQuery();
			while(re.next()) {
				cur[i] = new Course();
				cur[i].set_Course_Id(re.getString(1));
				cur[i].set_Course_Ch_Name(re.getString(2));
				cur[i].set_Course_En_Name(re.getString(3));
				cur[i].set_Course_Credit(re.getString(4));
				cur[i].set_Course_Assessment(re.getString(5));
				cur[i].set_Course_time(re.getString("总学时"),re.getString("讲授学时") , 
						re.getString("实验学时"), re.getString("实习学时"), 
						re.getString("上机学时"));
				re.getString("执行学期");
				i++;
			}
			cur[i] = null;
		}catch(Exception e) {e.printStackTrace();}
		return cur;
	}
	public Student login(Student stu) {
		String studentId = stu.getId();
		String studentPassword = stu.getPassword();
		try {
			conn  = JDBCUtils.getConnection();
			String sql = "select * from factory.学生 where 学号 = ? and  密码 = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, studentId);
			stmt.setString(2, studentPassword);
			re = stmt.executeQuery();
			if(!re.next()) {
				return null;
			}
			else {
				stu.setName(re.getString("姓名"));
				stu.setSex(re.getString("性别"));
				stu.setAge(re.getInt("年龄"));
				stu.setMajor(re.getString("专业"));
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return stu;
	}

}
