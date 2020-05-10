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
			stmt.setInt(4, course.get_Course_Credit());
			stmt.setString(5, course.get_Course_Assessment());
			stmt.setInt(8, course.get_Course_Total_Time());
			stmt.setInt(6, course.get_Course_Teach_Time());
			stmt.setInt(7, course.get_Course_Exp_Time());
			stmt.setInt(9, course.get_Course_Prac_Time());
			stmt.setInt(10, course.get_Course_Comp_time());
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
}
