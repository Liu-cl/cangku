package service;
import domain.Student;
import dao.StudentDao;
import domain.Course;
public class StudentService {

    // 获取课程表
    public Course[] courseTable(Student stu) {
		StudentDao userDao = new StudentDao();
		return userDao.table(stu);
	}
    
    public Course[] selectCourse(String key) {
		StudentDao studentDao = new StudentDao();
		Course[] cur;
		cur = studentDao.selectCourse(key);
		return cur;
	}
	public Student login(Student stu) {
    	StudentDao studentDao = new StudentDao();
    	return studentDao.login(stu);
    }
}
