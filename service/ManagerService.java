package service;
import domain.Course;
import java.sql.SQLException;
import dao.ManageDao;
public class ManagerService {
	private static ManageDao mgDao=new ManageDao();
	public boolean InsertCourse(Course newcourse) {
		try {
			mgDao.Insert(newcourse);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return false;
		}
		return true;
	}
	public boolean DeleteCourse(Course deletecourse) {
		try {
			mgDao.Delete(deletecourse);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return false;
		}
		return true;
	}
}

