package domain;

public class Course {
	private String course_id;//课程代码
	
	private String course_ch_name;//课程中文名
	
	private String course_en_name;//课程英文名
	
	private int course_credit;//学分
	
	private String course_assessment;//考核方式
	
	private int course_total_time;//总学时
	
	private int course_teach_time;//教授学时
	
	private int course_exp_time;//实验学时
	
	private int course_prac_time;//实习学时
	
	private int course_comp_time;//上机学时
	
	private String course_semester;//执行学期
	
	public Course() {}
	
	//设置变量
	public void set_Course_Id(String course_id) {
		this.course_id = course_id;
	}
	
	public void set_Course_Ch_Name(String course_ch_name) {
		this.course_ch_name = course_ch_name;
	}
	
	public void set_Course_En_Name(String course_en_name) {
		this.course_en_name = course_en_name;
	}
	
	public void set_Course_Credit(int course_credit) {
		this.course_credit = course_credit;
	}
	
	//这个设置变量 包括了 总学时、教授学时、实验学时、实习学时和上级学时
	public void set_Course_time(int course_total_time, int course_teach_time, int course_exp_time,
			int course_prac_time, int course_comp_time) {
		this.course_total_time = course_total_time;
		this.course_teach_time = course_teach_time;
		this.course_exp_time = course_exp_time;
		this.course_prac_time = course_prac_time;
		this.course_comp_time = course_comp_time;
	}
	
	public void set_Course_Semester(String course_semester) {
		this.course_semester = course_semester;
	}
	
	//获取变量
	public String get_Course_Id () {
		return course_id;
	}
	
	public String get_Course_Ch_Name () {
		return course_ch_name;
	}
	
	public String get_Course_En_Name () {
		return course_en_name;
	}
	
	public int get_Course_Credit () {
		return course_credit;
	}
	
	public String get_Course_Assessment () {
		return course_assessment;
	}
	
	public int get_Course_Total_Time () {
		return course_total_time;
	}
	
	public int get_Course_Teach_Time () {
		return course_teach_time;
	}
	
	public int get_Course_Exp_Time () {
		return course_exp_time;
	}
	
	public int get_Course_Prac_Time () {
		return course_prac_time;
	}
	
	public int get_Course_Comp_time() {
		return course_comp_time;
	}
	
	public String get_Course_Semester() {
		return course_semester;
	}
}
