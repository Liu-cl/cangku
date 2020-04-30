package dao;
import domain.Manager;
import util.JDBCUtils;
import java.sql.*;
public class ManageDao {
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet re = null;
}
