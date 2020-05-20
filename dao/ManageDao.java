package dao;
import domain.Manager;
import domain.Course;
import util.JDBCUtils;
import java.sql.*;
public class ManageDao {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet re = null;
	private String sql_insert="INSERT INTO 课程  VALUES(?,?,?,?,?,?,?,?,?,?,?)";/*插入预处理*/
	private String sql_deltete="DELETE FROM 课程 WHERE 课程代码=? OR 课程中文名称=? OR 课程英文名称=?";/*删除预处理*/
	public ManageDao(){
		try {
			conn=JDBCUtils.getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void Insert(Course course) throws SQLException{/*插入*/
			stmt=conn.prepareStatement(sql_insert);
			stmt.setString(1, course.get_Course_Id());
			stmt.setString(2, course.get_Course_Ch_Name());
			stmt.setString(3, course.get_Course_En_Name());
			stmt.setString(4, course.get_Course_Credit());
			stmt.setString(5, course.get_Course_Assessment());
			stmt.setString(8, course.get_Course_Total_Time());
			stmt.setString(6, course.get_Course_Teach_Time());
			stmt.setString(7, course.get_Course_Exp_Time());
			stmt.setString(9, course.get_Course_Prac_Time());
			stmt.setString(10, course.get_Course_comp_time());
			stmt.setString(11, course.get_Course_Semester());
			System.out.println("插入语句为"+stmt);
			stmt.executeUpdate();
	}
	public void Delete(Course course) throws SQLException {/*删除*/
			stmt=conn.prepareStatement(sql_deltete);
			stmt.setString(1, course.get_Course_Id());
			stmt.setString(2, course.get_Course_Ch_Name());
			stmt.setString(3, course.get_Course_En_Name());
			System.out.println("删除语句为"+stmt);
			stmt.executeUpdate();
	}
	public Manager login1(Manager man) {
		String managerId = man.getId();
		String managerPassword = man.getPassword();
		try {
			conn  = JDBCUtils.getConnection();
			String sql = "select * from factory.职工 where 职工号 = ? and  密码 = ?";
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, managerId);
			stmt.setString(2, managerPassword);
			re = stmt.executeQuery();
			if(!re.next()) {
				return null;
			}
			else {
				man.setname(re.getString("姓名"));
				//stu.setSex(re.getString("性别"));
				man.setAge(re.getInt("年龄"));
				man.setJob(re.getString("职称"));
			}
		}catch(Exception e) {e.printStackTrace();}
		
		return man;
	}
}
