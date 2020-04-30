package util;
import java.sql.*;
public class JDBCUtils {
	private static String DriverClass="com.mysql.cj.jdbc.Driver";
	private static String Url="jdbc:mysql://localhost:3306/javatest?serverTimezone=UTC";
	private static final String User="root";
	private static final String Password="w911w110";
	private static Connection conn=null;
	
	private static void loadDriver() {
		try {
			Class.forName(DriverClass);
		}catch(ClassNotFoundException e) {}
	}
	public static Connection getConnection() throws Exception{
		loadDriver();
		conn = DriverManager.getConnection(Url,User,Password);
		return conn;
	}
	public static void release(ResultSet rs, Statement stmt, Connection conn) {
		try{
			rs.close();
			stmt.close();
			conn.close();
		}catch(SQLException e) {}
		
	}
	
}
