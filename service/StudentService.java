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
}
