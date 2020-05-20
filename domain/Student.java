package domain;



public class Student {
	private String id;//账号（学号）
	private String password;//密码
	private String name;//姓名
	private String sex;//性别
	private int age;//年龄
	private String major;//专业 
	
	public Student() {}
	
	//设置变量
	public void setId(String id) {
		this.id = id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	
	//获取变量
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getPassword() {
		return password;
	}
	public String getSex() {
		return sex;
	}
	public int getAge() {
		return age;
	}
	public String getMajor() {
		return major;
	}
	
	
}




