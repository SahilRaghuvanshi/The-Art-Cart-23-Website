package com;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class BuyerDao{
	private static Connection createConnection() throws Exception
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection cn;
		cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcdb", "root", "system");
		return cn;
	}
	public static int insert(Buyer buyer) throws Exception
	{
		Connection con = BuyerDao.createConnection();
		PreparedStatement ps = con.prepareStatement("insert into buyers values (?,?,?,?,?,?);");
		ps.setString(1, buyer.fname);
		ps.setString(2, buyer.lname);
		ps.setString(3, buyer.street);
		ps.setString(4, buyer.state);
		ps.setString(5, buyer.city);
		ps.setString(6, buyer.pincode);
		int status = ps.executeUpdate();
		con.close();
		return status;
	}
}
