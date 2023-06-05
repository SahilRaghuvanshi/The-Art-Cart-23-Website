package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UserDao{
	private static Connection createConnection() throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn;
		cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcdb", "root", "system");
		return cn;
	}
	public static int insert(User user) throws Exception
	{
		Connection con = UserDao.createConnection();
		PreparedStatement ps = con.prepareStatement("insert into users values (?,?,?,?);");
		ps.setString(1, user.emailid);
		ps.setString(2, user.password);
		ps.setString(3, user.name);
		ps.setString(4, user.mobile);
		int status = ps.executeUpdate();
		con.close();
		return status;
	}
}
