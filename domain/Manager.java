package domain;

public class Manager {
	private String id;//账号
	private String password;//密码
	private String name;//名字
	private int age;//年龄
	private String job;//职称
	
	public Manager() {}
	
	//设置变量
	public void setId(String id) {
		this.id = id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setname(String name) {
		this.name = name;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public void setJob(String job) {
		this.job = job;
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
	public int getAge() {
		return age;
	}
	public String getJob() {
		return job;
	}
}
