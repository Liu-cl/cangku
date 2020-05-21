package service;
import domain.Course;
import java.sql.SQLException;
import dao.ManageDao;
import domain.Manager;
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
	public Manager login1(Manager man) {
	    	ManageDao managerDao = new ManageDao();
	    	return managerDao.login1(man);
	    }
	public boolean EditCourse(Course editcourse) {
		try {
			mgDao.Edit(editcourse);
		} catch (SQLException e) {
			return false;
		}
		return true;
	}
}

