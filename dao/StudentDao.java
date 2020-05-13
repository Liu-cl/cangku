package dao;
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
                mycou[ct].set_Course_time(Integer.parseInt(re.getString("总学时")),Integer.parseInt(re.getString("讲授学时")) , Integer.parseInt(re.getString("实验学时")), Integer.parseInt(re.getString("实习学时")), Integer.parseInt(re.getString("上机学时")));
                mycou[ct].set_Course_Credit(Integer.parseInt(re.getString("学分")));
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
}
